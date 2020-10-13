<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>
<%@ page import="java.util.List, com.fs.model.vo.FAQ,java.util.ArrayList"%>
<%@ page import="com.fs.model.vo.Inquiry" %>

<%
   List<FAQ> list = (List)request.getAttribute("FAQ");
	List<Inquiry> list2 = (List)request.getAttribute("Inquiry");
%>
<style>
   /* 1:1문의 스타일 */
   #wrap-out{
      padding-bottom:50px;
   }
	div#wrap-inquiry{
		margin: 0 auto;
    	padding: 15px 0 30px;
    	border: solid 1px #d8d8d8;
    	background-color: #fff;
    	width: 930px;
	}
   div#wrap-hap{
      width: 830px;
      margin: auto;
      padding: 0px 0px 10px 0px;
   }
   .btn_txt{
      /* display:inline-block; */
      text-align:right;
   }
	div#inquiry-container{
		width:830px;
		height:auto;
		text-align:center;
		border-radius:3px;
		background-color: #f8f8f8;
		margin:auto;
	}
   table#tbl-inquiry{
      width:100%;
      height: 200px;
   }
	table#tbl-inquiry tr td{
		text-align:center;
	}
   table#tbl-inquiry2{
      width:100%;
      height:200px;
   }
	.nodata{
		font-family:"Noto Sans KR";
		font-size:15px;
		/* padding:70px 0 20px 0; */
	}
   .tabs {
        display: flex;
        flex-wrap: wrap;
        padding: 50px;
	   text-align: center;
	   margin: auto;
   } 
      
   .tabs label {
       width: 200px;
      padding: 12px;
      list-style-type: none;
      display: inline-block;
      font-size: 20px;
      border: 1px lightgray solid;
      text-align: center;
      cursor: pointer;     
      font-family: Noto Sans KR;   
   }
      
      
   .tab label:hover{
      clor:pink;
      opacity:1;
      transform:scale(1);
   }
      
   /*박스배경*/
   .tabs .tab {
      order: 99;
      flex-grow: 1;
      display: none;
      padding: 1rem;
      background: white;
   }
   .tabs input[type="radio"] {
      display: none;
   }
   .tabs input[type="radio"]:checked + label + .tab {
      display: block;
   }
   .tabs {
      display: flex;
      flex-wrap: wrap; 
   }
    
   /*박스배경*/
   .tabs .tab {
      order: 99;
      flex-grow: 1;
      width: 100%;
      display: none;
      padding: 1rem;
      background: white;
      text-align: center;
   }
   .tabs input[type="checkbox"] {
      display: none;
   }
      
   .tabs input[type="checkbox"]: label {
      background: pink;
      text-align: center;
   }
   .tabs input[type="checkbox"]:checked + label + .tab {
      display: block;
   }
    
  section#FAQ-container {   
  width: 600px;   margin: 0 auto;   
  text-align: center; height:575px; min-height: 100%; 
  position: relative; padding-bottom: 200px;}
   section#FAQ-container h2 {   margin: 10px 0;}
   div#faq-container{ width:100%;height:400px;}
   div#tbl-FAQ {width:60%; margin: 0 auto;   border: 1px solid ivory; border-collapse: collapse;}
   div#tbl-FAQ div, div#tbl-notice p {   border: 1px solid ivory;   padding: 5px 0;   text-align: center;}
   div#tbl-notice p{font-size: 50px;} 
   div#tbl-FAQ div, div#title{width:100%; height:30px; background-color: pink; cursor:pointer;}
   div#tbl-FAQ div+p{display:none; width:100%; height:auto; }
</style>

<section style="text-align:center; id="FAQ-container">
   <h2>자주하는 질문</h2>            
   <div class="tabs">
   
      <input type="checkbox" name="tab" id="tab1" value="회원" checked />
      <label for="tab1"> 회원 </label>
      <div class="tab">
   
   
   <div id="faq-container">
      <div id="tbl-FAQ">
         <%if (list != null) {
            for (FAQ f : list) {%>
            <div id=title><%=f.getFaqTitle()%></div>
         <p class="content"><%=f.getFaqContent()%></p>
         
            <%}
         }%>
      </div>
   </div>
   
   </div>
   
   <input type="checkbox" name="tab" id="tab2" value="티켓수령" />
      <label for="tab2"> 티켓수령 </label>
      <div class="tab">
   
   <div id="faq-container">
      <div id="tbl-FAQ">
         <%if (list != null) {
            for (FAQ f : list) {%>
            <div><%=f.getFaqTitle()%></div>
         <p id=content><%=f.getFaqContent()%></p>
         
            <%}
         }%>
      </div>
   </div>
   
   </div>
   
    <input type="checkbox" name="tab" id="tab3" value="예매/결제" />
      <label for="tab3"> 예매/결제  </label>
      <div class="tab">
   
   <div id="faq-container">
      <div id="tbl-FAQ">
         <%if (list != null) {
            for (FAQ f : list) {%>
            <div><%=f.getFaqTitle()%></div>
         <p><%=f.getFaqContent()%></p>
         
            <%}
         }%>
      </div>
   </div>
   </div>
   
    <input type="checkbox" name="tab" id="tab4" value="취소/환불"  />
      <label for="tab4"> 취소/환불 </label>
      <div class="tab">
   
   <div id="faq-container">
      <div id="tbl-FAQ">
         <%if (list != null) {
            for (FAQ f : list) {%>
            <div><%=f.getFaqTitle()%></div>
         <p><%=f.getFaqContent()%></p>
         
            <%}
         }%>
      </div>
   </div>
   </div>
   
    <input type="checkbox" name="tab" id="tab5" value="기타" />
      <label for="tab5"> 기타 </label>
      <div class="tab">
   
   <div id="faq-container">
      <div id="tbl-FAQ">
         <%if (list != null) {
            for (FAQ f : list) {%>
            <div><%=f.getFaqTitle()%></div>
         <p><%=f.getFaqContent()%></p>
         
            <%}
         }%>
      </div>
   </div>
   
   </div> 
   </div>

   <div id="wrap-out">
      <div id="wrap-inquiry">
         <div id="wrap-hap">
            <h2 style="display:inline-block;">1:1 문의내역</h2>
            <div class="btn_txt">
               <input type="button" onclick="fn_inquiry();" class="btn" value="문의하기">
            </div>
         </div>
         <div id="inquiry-container">
            <table id="tbl-inquiry">
               <%if(list2.isEmpty()) {%>
                  <tr>
                     <td>
                        <p class="nodata">문의하신 내역이 없습니다.<br>
                           오성티켓에 대한 모든 궁금증은 1:1 문의하기로 부담없이 확인하세요.
                        </p>
                     </td>
                  </tr>          
               <%}else{
                  for (Inquiry iq : list2) {%>
                  <tr>  
                     <td><a href="<%=request.getContextPath()%>/admin/inquiryAnswer?inqNo=<%=iq.getInqNo()%>" onclick="open(this.href,'','top=100px, left=300px, width=600px, height=400px, scrollbars=no');return false;"><%=iq.getInqTitle() %></a></td>
                     <td><% if(iq.getInqYn().equals("N")){%>
                           처리중			
                        <%}else {%>
                           답변완료
                        <%} %>
                     </td>
                     <td><%=iq.getInqDate() %></td>   
                  </tr>
                  <%}
               }%>   
            </table>  
         </div>
      </div>
   </div>  
   
</section>

<script>
//1:1 문의하기로 이동
function fn_inquiry() {
  const url = "<%=request.getContextPath()%>/admin/inquiry?memberNo=<%=loginMember.getMemberNo()%>";
  const status = "top=100px, left=300px, width=600px, height=400px";
  open(url, "", status);
}
 
$(function(){
	$("#faq-container div, div#title").click(function(){
		$("#faq-container p").slideUp("slow");
		if(!$(this).next().is(":visible"))
		{
			$(this).next().slideDown();
		}
	})

   $("input[name=tab]").click(e=>{
  	 let key=$(e.target).val();
  	 console.log(key);
		 location.href="<%=request.getContextPath()%>/admin/helpCenter?memberNo=<%=loginMember.getMemberNo()%>&keyword="+key;

   });

   //1:1문의하기
   $("#tbl-inquiry tr ")

 });
 
</script>

   <%@ include file="/views/common/footer.jsp" %>
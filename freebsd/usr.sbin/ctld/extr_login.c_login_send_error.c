
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdu {scalar_t__ pdu_bhs; } ;
struct iscsi_bhs_login_response {char bhslr_status_class; char bhslr_status_detail; } ;


 int log_debugx (char*,char,char) ;
 struct pdu* login_new_response (struct pdu*) ;
 int pdu_delete (struct pdu*) ;
 int pdu_send (struct pdu*) ;

__attribute__((used)) static void
login_send_error(struct pdu *request, char class, char detail)
{
 struct pdu *response;
 struct iscsi_bhs_login_response *bhslr2;

 log_debugx("sending Login Response PDU with failure class 0x%x/0x%x; "
     "see next line for reason", class, detail);
 response = login_new_response(request);
 bhslr2 = (struct iscsi_bhs_login_response *)response->pdu_bhs;
 bhslr2->bhslr_status_class = class;
 bhslr2->bhslr_status_detail = detail;

 pdu_send(response);
 pdu_delete(response);
}

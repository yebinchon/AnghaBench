
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdu {scalar_t__ pdu_bhs; } ;
struct iscsi_bhs_login_request {int bhslr_flags; } ;
struct connection {int dummy; } ;


 int BHSLR_FLAGS_TRANSIT ;
 int BHSLR_STAGE_OPERATIONAL_NEGOTIATION ;
 int log_debugx (char*) ;
 int log_errx (int,char*) ;
 int login_negotiate (struct connection*,int *) ;
 struct pdu* login_new_response (struct pdu*) ;
 struct pdu* login_receive (struct connection*,int) ;
 int login_send_error (struct pdu*,int,int) ;
 int login_set_nsg (struct pdu*,int ) ;
 int pdu_delete (struct pdu*) ;
 int pdu_send (struct pdu*) ;

__attribute__((used)) static void
login_wait_transition(struct connection *conn)
{
 struct pdu *request, *response;
 struct iscsi_bhs_login_request *bhslr;

 log_debugx("waiting for state transition request");
 request = login_receive(conn, 0);
 bhslr = (struct iscsi_bhs_login_request *)request->pdu_bhs;
 if ((bhslr->bhslr_flags & BHSLR_FLAGS_TRANSIT) == 0) {
  login_send_error(request, 0x02, 0x00);
  log_errx(1, "got no \"T\" flag after answering AuthMethod");
 }

 log_debugx("got state transition request");
 response = login_new_response(request);
 pdu_delete(request);
 login_set_nsg(response, BHSLR_STAGE_OPERATIONAL_NEGOTIATION);
 pdu_send(response);
 pdu_delete(response);

 login_negotiate(conn, ((void*)0));
}

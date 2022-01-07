
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pdu {TYPE_1__* pdu_bhs; } ;
struct iscsi_bhs_logout_response {int bhslr_statsn; int bhslr_response; } ;
struct connection {scalar_t__ conn_statsn; } ;
struct TYPE_2__ {scalar_t__ bhs_opcode; } ;


 scalar_t__ BHSLR_RESPONSE_CLOSED_SUCCESSFULLY ;
 scalar_t__ ISCSI_BHS_OPCODE_LOGOUT_RESPONSE ;
 int log_errx (int,char*,scalar_t__,...) ;
 int log_warnx (char*,scalar_t__) ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ ntohs (int ) ;
 struct pdu* pdu_new (struct connection*) ;
 int pdu_receive (struct pdu*) ;

__attribute__((used)) static struct pdu *
logout_receive(struct connection *conn)
{
 struct pdu *response;
 struct iscsi_bhs_logout_response *bhslr;

 response = pdu_new(conn);
 pdu_receive(response);
 if (response->pdu_bhs->bhs_opcode != ISCSI_BHS_OPCODE_LOGOUT_RESPONSE)
  log_errx(1, "protocol error: received invalid opcode 0x%x",
      response->pdu_bhs->bhs_opcode);
 bhslr = (struct iscsi_bhs_logout_response *)response->pdu_bhs;
 if (ntohs(bhslr->bhslr_response) != BHSLR_RESPONSE_CLOSED_SUCCESSFULLY)
  log_warnx("received Logout Response with reason %d",
      ntohs(bhslr->bhslr_response));
 if (ntohl(bhslr->bhslr_statsn) != conn->conn_statsn + 1) {
  log_errx(1, "received Logout PDU with wrong StatSN: "
      "is %u, should be %u", ntohl(bhslr->bhslr_statsn),
      conn->conn_statsn + 1);
 }
 conn->conn_statsn = ntohl(bhslr->bhslr_statsn);

 return (response);
}

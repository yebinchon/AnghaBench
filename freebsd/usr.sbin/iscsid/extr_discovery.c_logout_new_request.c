
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdu {scalar_t__ pdu_bhs; } ;
struct iscsi_bhs_logout_request {int bhslr_opcode; int bhslr_reason; int bhslr_expstatsn; scalar_t__ bhslr_cmdsn; scalar_t__ bhslr_initiator_task_tag; } ;
struct connection {scalar_t__ conn_statsn; } ;


 int BHSLR_REASON_CLOSE_SESSION ;
 int ISCSI_BHS_OPCODE_IMMEDIATE ;
 int ISCSI_BHS_OPCODE_LOGOUT_REQUEST ;
 int htonl (scalar_t__) ;
 struct pdu* pdu_new (struct connection*) ;

__attribute__((used)) static struct pdu *
logout_new_request(struct connection *conn)
{
 struct pdu *request;
 struct iscsi_bhs_logout_request *bhslr;

 request = pdu_new(conn);
 bhslr = (struct iscsi_bhs_logout_request *)request->pdu_bhs;
 bhslr->bhslr_opcode = ISCSI_BHS_OPCODE_LOGOUT_REQUEST |
     ISCSI_BHS_OPCODE_IMMEDIATE;
 bhslr->bhslr_reason = BHSLR_REASON_CLOSE_SESSION;
 bhslr->bhslr_reason |= 0x80;
 bhslr->bhslr_initiator_task_tag = 0;
 bhslr->bhslr_cmdsn = 0;
 bhslr->bhslr_expstatsn = htonl(conn->conn_statsn + 1);

 return (request);
}

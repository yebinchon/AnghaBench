
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdu {scalar_t__ pdu_bhs; struct connection* pdu_connection; } ;
struct iscsi_bhs_login_response {void* bhslr_maxcmdsn; void* bhslr_expcmdsn; void* bhslr_statsn; int bhslr_initiator_task_tag; int bhslr_isid; int bhslr_opcode; } ;
struct iscsi_bhs_login_request {int bhslr_initiator_task_tag; int bhslr_isid; } ;
struct connection {int conn_cmdsn; int conn_statsn; } ;


 int BHSLR_STAGE_SECURITY_NEGOTIATION ;
 int ISCSI_BHS_OPCODE_LOGIN_RESPONSE ;
 void* htonl (int ) ;
 int login_set_csg (struct pdu*,int ) ;
 int memcpy (int ,int ,int) ;
 struct pdu* pdu_new_response (struct pdu*) ;

__attribute__((used)) static struct pdu *
login_new_response(struct pdu *request)
{
 struct pdu *response;
 struct connection *conn;
 struct iscsi_bhs_login_request *bhslr;
 struct iscsi_bhs_login_response *bhslr2;

 bhslr = (struct iscsi_bhs_login_request *)request->pdu_bhs;
 conn = request->pdu_connection;

 response = pdu_new_response(request);
 bhslr2 = (struct iscsi_bhs_login_response *)response->pdu_bhs;
 bhslr2->bhslr_opcode = ISCSI_BHS_OPCODE_LOGIN_RESPONSE;
 login_set_csg(response, BHSLR_STAGE_SECURITY_NEGOTIATION);
 memcpy(bhslr2->bhslr_isid,
     bhslr->bhslr_isid, sizeof(bhslr2->bhslr_isid));
 bhslr2->bhslr_initiator_task_tag = bhslr->bhslr_initiator_task_tag;
 bhslr2->bhslr_statsn = htonl(conn->conn_statsn++);
 bhslr2->bhslr_expcmdsn = htonl(conn->conn_cmdsn);
 bhslr2->bhslr_maxcmdsn = htonl(conn->conn_cmdsn);

 return (response);
}

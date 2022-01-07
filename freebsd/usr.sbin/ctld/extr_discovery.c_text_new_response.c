
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdu {scalar_t__ pdu_bhs; struct connection* pdu_connection; } ;
struct iscsi_bhs_text_response {void* bhstr_maxcmdsn; void* bhstr_expcmdsn; void* bhstr_statsn; int bhstr_target_transfer_tag; int bhstr_initiator_task_tag; int bhstr_lun; int bhstr_flags; int bhstr_opcode; } ;
struct iscsi_bhs_text_request {int bhstr_target_transfer_tag; int bhstr_initiator_task_tag; int bhstr_lun; } ;
struct connection {int conn_cmdsn; int conn_statsn; } ;


 int BHSTR_FLAGS_FINAL ;
 int ISCSI_BHS_OPCODE_TEXT_RESPONSE ;
 void* htonl (int ) ;
 struct pdu* pdu_new_response (struct pdu*) ;

__attribute__((used)) static struct pdu *
text_new_response(struct pdu *request)
{
 struct pdu *response;
 struct connection *conn;
 struct iscsi_bhs_text_request *bhstr;
 struct iscsi_bhs_text_response *bhstr2;

 bhstr = (struct iscsi_bhs_text_request *)request->pdu_bhs;
 conn = request->pdu_connection;

 response = pdu_new_response(request);
 bhstr2 = (struct iscsi_bhs_text_response *)response->pdu_bhs;
 bhstr2->bhstr_opcode = ISCSI_BHS_OPCODE_TEXT_RESPONSE;
 bhstr2->bhstr_flags = BHSTR_FLAGS_FINAL;
 bhstr2->bhstr_lun = bhstr->bhstr_lun;
 bhstr2->bhstr_initiator_task_tag = bhstr->bhstr_initiator_task_tag;
 bhstr2->bhstr_target_transfer_tag = bhstr->bhstr_target_transfer_tag;
 bhstr2->bhstr_statsn = htonl(conn->conn_statsn++);
 bhstr2->bhstr_expcmdsn = htonl(conn->conn_cmdsn);
 bhstr2->bhstr_maxcmdsn = htonl(conn->conn_cmdsn);

 return (response);
}

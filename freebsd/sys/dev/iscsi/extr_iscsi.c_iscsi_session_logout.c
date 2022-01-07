
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int is_conn; } ;
struct iscsi_bhs_logout_request {int bhslr_reason; int bhslr_opcode; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;


 int BHSLR_REASON_CLOSE_SESSION ;
 int ISCSI_BHS_OPCODE_LOGOUT_REQUEST ;
 int M_NOWAIT ;
 struct icl_pdu* icl_pdu_new (int ,int ) ;
 int iscsi_pdu_queue_locked (struct icl_pdu*) ;

__attribute__((used)) static void
iscsi_session_logout(struct iscsi_session *is)
{
 struct icl_pdu *request;
 struct iscsi_bhs_logout_request *bhslr;

 request = icl_pdu_new(is->is_conn, M_NOWAIT);
 if (request == ((void*)0))
  return;

 bhslr = (struct iscsi_bhs_logout_request *)request->ip_bhs;
 bhslr->bhslr_opcode = ISCSI_BHS_OPCODE_LOGOUT_REQUEST;
 bhslr->bhslr_reason = BHSLR_REASON_CLOSE_SESSION;
 iscsi_pdu_queue_locked(request);
}

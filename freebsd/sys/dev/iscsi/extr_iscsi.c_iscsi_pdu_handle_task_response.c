
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int dummy; } ;
struct iscsi_outstanding {scalar_t__ io_datasn; int * io_ccb; } ;
struct iscsi_bhs_task_management_response {scalar_t__ bhstmr_initiator_task_tag; scalar_t__ bhstmr_response; } ;
struct icl_pdu {scalar_t__ ip_bhs; } ;


 scalar_t__ BHSTMR_RESPONSE_FUNCTION_COMPLETE ;
 int CAM_REQ_ABORTED ;
 int ISCSI_SESSION_WARN (struct iscsi_session*,char*,scalar_t__) ;
 struct iscsi_session* PDU_SESSION (struct icl_pdu*) ;
 int icl_pdu_free (struct icl_pdu*) ;
 struct iscsi_outstanding* iscsi_outstanding_find (struct iscsi_session*,scalar_t__) ;
 int iscsi_outstanding_remove (struct iscsi_session*,struct iscsi_outstanding*) ;
 int iscsi_session_reconnect (struct iscsi_session*) ;
 int iscsi_session_terminate_task (struct iscsi_session*,struct iscsi_outstanding*,int ) ;

__attribute__((used)) static void
iscsi_pdu_handle_task_response(struct icl_pdu *response)
{
 struct iscsi_bhs_task_management_response *bhstmr;
 struct iscsi_outstanding *io, *aio;
 struct iscsi_session *is;

 is = PDU_SESSION(response);

 bhstmr = (struct iscsi_bhs_task_management_response *)response->ip_bhs;
 io = iscsi_outstanding_find(is, bhstmr->bhstmr_initiator_task_tag);
 if (io == ((void*)0) || io->io_ccb != ((void*)0)) {
  ISCSI_SESSION_WARN(is, "bad itt 0x%x",
      bhstmr->bhstmr_initiator_task_tag);
  icl_pdu_free(response);
  iscsi_session_reconnect(is);
  return;
 }

 if (bhstmr->bhstmr_response != BHSTMR_RESPONSE_FUNCTION_COMPLETE) {
  ISCSI_SESSION_WARN(is, "task response 0x%x",
      bhstmr->bhstmr_response);
 } else {
  aio = iscsi_outstanding_find(is, io->io_datasn);
  if (aio != ((void*)0) && aio->io_ccb != ((void*)0))
   iscsi_session_terminate_task(is, aio, CAM_REQ_ABORTED);
 }

 iscsi_outstanding_remove(is, io);
 icl_pdu_free(response);
}

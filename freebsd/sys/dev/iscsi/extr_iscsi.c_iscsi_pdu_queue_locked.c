
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int is_postponed; int is_sim; } ;
struct icl_pdu {int dummy; } ;


 int ISCSI_SESSION_LOCK_ASSERT (struct iscsi_session*) ;
 struct iscsi_session* PDU_SESSION (struct icl_pdu*) ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct icl_pdu*,int ) ;
 int icl_pdu_queue (struct icl_pdu*) ;
 int ip_next ;
 int iscsi_pdu_prepare (struct icl_pdu*) ;
 int iscsi_session_send_postponed (struct iscsi_session*) ;
 int xpt_freeze_simq (int ,int) ;

__attribute__((used)) static void
iscsi_pdu_queue_locked(struct icl_pdu *request)
{
 struct iscsi_session *is;
 bool postpone;

 is = PDU_SESSION(request);
 ISCSI_SESSION_LOCK_ASSERT(is);
 iscsi_session_send_postponed(is);
 postpone = iscsi_pdu_prepare(request);
 if (postpone) {
  if (STAILQ_EMPTY(&is->is_postponed))
   xpt_freeze_simq(is->is_sim, 1);
  STAILQ_INSERT_TAIL(&is->is_postponed, request, ip_next);
  return;
 }
 icl_pdu_queue(request);
}

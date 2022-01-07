
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int is_sim; int is_postponed; } ;
struct icl_pdu {int dummy; } ;


 int ISCSI_SESSION_LOCK_ASSERT (struct iscsi_session*) ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 struct icl_pdu* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int icl_pdu_queue (struct icl_pdu*) ;
 int ip_next ;
 int iscsi_pdu_prepare (struct icl_pdu*) ;
 int xpt_release_simq (int ,int) ;

__attribute__((used)) static void
iscsi_session_send_postponed(struct iscsi_session *is)
{
 struct icl_pdu *request;
 bool postpone;

 ISCSI_SESSION_LOCK_ASSERT(is);

 if (STAILQ_EMPTY(&is->is_postponed))
  return;
 while ((request = STAILQ_FIRST(&is->is_postponed)) != ((void*)0)) {
  postpone = iscsi_pdu_prepare(request);
  if (postpone)
   return;
  STAILQ_REMOVE_HEAD(&is->is_postponed, ip_next);
  icl_pdu_queue(request);
 }
 xpt_release_simq(is->is_sim, 1);
}

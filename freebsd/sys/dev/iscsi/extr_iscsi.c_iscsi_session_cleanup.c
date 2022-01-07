
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int is_simq_frozen; int * is_devq; int * is_sim; int * is_path; int is_postponed; } ;
struct icl_pdu {int dummy; } ;


 int AC_LOST_DEVICE ;
 int CAM_DEV_NOT_THERE ;
 int CAM_REQUEUE_REQ ;
 int ISCSI_SESSION_DEBUG (struct iscsi_session*,char*) ;
 int ISCSI_SESSION_LOCK_ASSERT (struct iscsi_session*) ;
 int STAILQ_EMPTY (int *) ;
 struct icl_pdu* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int TRUE ;
 int cam_sim_free (int *,int ) ;
 int cam_sim_path (int *) ;
 int icl_pdu_free (struct icl_pdu*) ;
 int ip_next ;
 int iscsi_session_terminate_tasks (struct iscsi_session*,int ) ;
 int xpt_async (int ,int *,int *) ;
 int xpt_bus_deregister (int ) ;
 int xpt_free_path (int *) ;
 int xpt_freeze_simq (int *,int) ;
 int xpt_release_simq (int *,int) ;

__attribute__((used)) static void
iscsi_session_cleanup(struct iscsi_session *is, bool destroy_sim)
{
 struct icl_pdu *pdu;

 ISCSI_SESSION_LOCK_ASSERT(is);




 if (is->is_sim != ((void*)0) && is->is_simq_frozen == 0) {
  ISCSI_SESSION_DEBUG(is, "freezing");
  xpt_freeze_simq(is->is_sim, 1);
  is->is_simq_frozen = 1;
 }




 if (!STAILQ_EMPTY(&is->is_postponed))
  xpt_release_simq(is->is_sim, 1);
 while ((pdu = STAILQ_FIRST(&is->is_postponed)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&is->is_postponed, ip_next);
  icl_pdu_free(pdu);
 }

 if (destroy_sim == 0) {



  iscsi_session_terminate_tasks(is, CAM_REQUEUE_REQ);
  return;
 }

 iscsi_session_terminate_tasks(is, CAM_DEV_NOT_THERE);

 if (is->is_sim == ((void*)0))
  return;

 ISCSI_SESSION_DEBUG(is, "deregistering SIM");
 xpt_async(AC_LOST_DEVICE, is->is_path, ((void*)0));

 if (is->is_simq_frozen) {
  xpt_release_simq(is->is_sim, 1);
  is->is_simq_frozen = 0;
 }

 xpt_free_path(is->is_path);
 is->is_path = ((void*)0);
 xpt_bus_deregister(cam_sim_path(is->is_sim));
 cam_sim_free(is->is_sim, TRUE );
 is->is_sim = ((void*)0);
 is->is_devq = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int is_reconnecting; int is_terminating; int is_lock; int is_maintenance_cv; int is_maxcmdsn; int is_cmdsn; int is_postponed; } ;


 int ISCSI_SESSION_LOCK (struct iscsi_session*) ;
 int ISCSI_SESSION_UNLOCK (struct iscsi_session*) ;
 scalar_t__ ISCSI_SNGT (int ,int ) ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 int cv_wait (int *,int *) ;
 int iscsi_maintenance_thread_reconnect (struct iscsi_session*) ;
 int iscsi_maintenance_thread_terminate (struct iscsi_session*) ;
 int iscsi_session_send_postponed (struct iscsi_session*) ;
 int kthread_exit () ;

__attribute__((used)) static void
iscsi_maintenance_thread(void *arg)
{
 struct iscsi_session *is = arg;

 ISCSI_SESSION_LOCK(is);
 for (;;) {
  if (is->is_reconnecting == 0 &&
      is->is_terminating == 0 &&
      (STAILQ_EMPTY(&is->is_postponed) ||
       ISCSI_SNGT(is->is_cmdsn, is->is_maxcmdsn)))
   cv_wait(&is->is_maintenance_cv, &is->is_lock);


  if (is->is_terminating) {
   ISCSI_SESSION_UNLOCK(is);
   iscsi_maintenance_thread_terminate(is);
   kthread_exit();
   return;
  }

  if (is->is_reconnecting) {
   ISCSI_SESSION_UNLOCK(is);
   iscsi_maintenance_thread_reconnect(is);
   ISCSI_SESSION_LOCK(is);
   continue;
  }

  iscsi_session_send_postponed(is);
 }
 ISCSI_SESSION_UNLOCK(is);
}

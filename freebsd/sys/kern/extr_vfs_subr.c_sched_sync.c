
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_proc; int td_pflags; } ;
struct synclist {int dummy; } ;
struct bufobj {int dummy; } ;


 int EVENTHANDLER_REGISTER (int ,int ,int ,int ) ;
 scalar_t__ LIST_EMPTY (struct synclist*) ;
 int LIST_INSERT_HEAD (struct synclist*,struct bufobj*,int ) ;
 int LIST_REMOVE (struct bufobj*,int ) ;
 int PPAUSE ;
 int SHUTDOWN_PRI_LAST ;
 scalar_t__ SYNCER_FINAL_DELAY ;
 scalar_t__ SYNCER_RUNNING ;
 int SYNCER_SHUTDOWN_SPEEDUP ;
 scalar_t__ SYNCER_SHUTTING_DOWN ;
 int TDP_NORUNNINGBUF ;
 int WD_LASTVAL ;
 int bo_synclist ;
 struct thread* curthread ;
 int cv_timedwait (int *,int *,int) ;
 scalar_t__ first_printf ;
 int hz ;
 int kproc_suspend_check (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,...) ;
 scalar_t__ rushjob ;
 int sched_prio (struct thread*,int ) ;
 int shutdown_pre_sync ;
 int sync_mtx ;
 int sync_vnode (struct synclist*,struct bufobj**,struct thread*) ;
 scalar_t__ sync_vnode_count ;
 int sync_wakeup ;
 size_t syncer_delayno ;
 size_t syncer_maxdelay ;
 int syncer_shutdown ;
 scalar_t__ syncer_state ;
 struct synclist* syncer_workitem_pending ;
 scalar_t__ syncer_worklist_len ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;
 long time_uptime ;
 int wdog_kern_pat (int ) ;

__attribute__((used)) static void
sched_sync(void)
{
 struct synclist *next, *slp;
 struct bufobj *bo;
 long starttime;
 struct thread *td = curthread;
 int last_work_seen;
 int net_worklist_len;
 int syncer_final_iter;
 int error;

 last_work_seen = 0;
 syncer_final_iter = 0;
 syncer_state = SYNCER_RUNNING;
 starttime = time_uptime;
 td->td_pflags |= TDP_NORUNNINGBUF;

 EVENTHANDLER_REGISTER(shutdown_pre_sync, syncer_shutdown, td->td_proc,
     SHUTDOWN_PRI_LAST);

 mtx_lock(&sync_mtx);
 for (;;) {
  if (syncer_state == SYNCER_FINAL_DELAY &&
      syncer_final_iter == 0) {
   mtx_unlock(&sync_mtx);
   kproc_suspend_check(td->td_proc);
   mtx_lock(&sync_mtx);
  }
  net_worklist_len = syncer_worklist_len - sync_vnode_count;
  if (syncer_state != SYNCER_RUNNING &&
      starttime != time_uptime) {
   if (first_printf) {
    printf("\nSyncing disks, vnodes remaining... ");
    first_printf = 0;
   }
   printf("%d ", net_worklist_len);
  }
  starttime = time_uptime;







  do {
   slp = &syncer_workitem_pending[syncer_delayno];
   syncer_delayno += 1;
   if (syncer_delayno == syncer_maxdelay)
    syncer_delayno = 0;
   next = &syncer_workitem_pending[syncer_delayno];






   if (syncer_state == SYNCER_SHUTTING_DOWN &&
       net_worklist_len == 0 &&
       last_work_seen == syncer_delayno) {
    syncer_state = SYNCER_FINAL_DELAY;
    syncer_final_iter = SYNCER_SHUTDOWN_SPEEDUP;
   }
  } while (syncer_state != SYNCER_RUNNING && LIST_EMPTY(slp) &&
      syncer_worklist_len > 0);







  if (net_worklist_len > 0 || syncer_state == SYNCER_RUNNING)
   last_work_seen = syncer_delayno;
  if (net_worklist_len > 0 && syncer_state == SYNCER_FINAL_DELAY)
   syncer_state = SYNCER_SHUTTING_DOWN;
  while (!LIST_EMPTY(slp)) {
   error = sync_vnode(slp, &bo, td);
   if (error == 1) {
    LIST_REMOVE(bo, bo_synclist);
    LIST_INSERT_HEAD(next, bo, bo_synclist);
    continue;
   }

   if (first_printf == 0) {




    mtx_unlock(&sync_mtx);
    wdog_kern_pat(WD_LASTVAL);
    mtx_lock(&sync_mtx);
   }

  }
  if (syncer_state == SYNCER_FINAL_DELAY && syncer_final_iter > 0)
   syncer_final_iter--;
  if (rushjob > 0) {
   rushjob -= 1;
   continue;
  }
  if (syncer_state != SYNCER_RUNNING ||
      time_uptime == starttime) {
   thread_lock(td);
   sched_prio(td, PPAUSE);
   thread_unlock(td);
  }
  if (syncer_state != SYNCER_RUNNING)
   cv_timedwait(&sync_wakeup, &sync_mtx,
       hz / SYNCER_SHUTDOWN_SPEEDUP);
  else if (time_uptime == starttime)
   cv_timedwait(&sync_wakeup, &sync_mtx, hz);
 }
}

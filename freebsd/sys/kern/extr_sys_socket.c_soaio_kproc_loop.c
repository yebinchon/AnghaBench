
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmspace {int dummy; } ;
struct task {int ta_pending; int ta_context; int (* ta_func ) (int ,int) ;} ;
struct proc {struct vmspace* p_vmspace; } ;


 int EWOULDBLOCK ;
 int MPASS (int) ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 struct task* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 struct proc* curproc ;
 int free_unr (int ,int) ;
 int kproc_exit (int ) ;
 int mtx_lock (int *) ;
 int mtx_sleep (int *,int *,int ,char*,int ) ;
 int mtx_unlock (int *) ;
 int soaio_idle ;
 int soaio_jobs ;
 int soaio_jobs_lock ;
 int soaio_kproc_unr ;
 int soaio_lifetime ;
 scalar_t__ soaio_num_procs ;
 scalar_t__ soaio_queued ;
 scalar_t__ soaio_starting ;
 scalar_t__ soaio_target_procs ;
 int stub1 (int ,int) ;
 int ta_link ;
 struct vmspace* vmspace_acquire_ref (struct proc*) ;
 int vmspace_switch_aio (struct vmspace*) ;

__attribute__((used)) static void
soaio_kproc_loop(void *arg)
{
 struct proc *p;
 struct vmspace *myvm;
 struct task *task;
 int error, id, pending;

 id = (intptr_t)arg;






 p = curproc;
 myvm = vmspace_acquire_ref(p);

 mtx_lock(&soaio_jobs_lock);
 MPASS(soaio_starting > 0);
 soaio_starting--;
 for (;;) {
  while (!STAILQ_EMPTY(&soaio_jobs)) {
   task = STAILQ_FIRST(&soaio_jobs);
   STAILQ_REMOVE_HEAD(&soaio_jobs, ta_link);
   soaio_queued--;
   pending = task->ta_pending;
   task->ta_pending = 0;
   mtx_unlock(&soaio_jobs_lock);

   task->ta_func(task->ta_context, pending);

   mtx_lock(&soaio_jobs_lock);
  }
  MPASS(soaio_queued == 0);

  if (p->p_vmspace != myvm) {
   mtx_unlock(&soaio_jobs_lock);
   vmspace_switch_aio(myvm);
   mtx_lock(&soaio_jobs_lock);
   continue;
  }

  soaio_idle++;
  error = mtx_sleep(&soaio_idle, &soaio_jobs_lock, 0, "-",
      soaio_lifetime);
  soaio_idle--;
  if (error == EWOULDBLOCK && STAILQ_EMPTY(&soaio_jobs) &&
      soaio_num_procs > soaio_target_procs)
   break;
 }
 soaio_num_procs--;
 mtx_unlock(&soaio_jobs_lock);
 free_unr(soaio_kproc_unr, id);
 kproc_exit(0);
}

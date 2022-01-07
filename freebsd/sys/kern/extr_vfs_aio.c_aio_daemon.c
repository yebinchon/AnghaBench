
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmspace {int vm_refcnt; } ;
struct thread {struct proc* td_proc; } ;
struct proc {struct vmspace* p_vmspace; int * p_textvp; } ;
struct kaioinfo {int kaio_active_count; } ;
struct kaiocb {int (* handle_fn ) (struct kaiocb*) ;TYPE_1__* userproc; } ;
struct aioproc {int aioprocflags; struct proc* aioproc; } ;
struct TYPE_2__ {struct kaioinfo* p_aioinfo; } ;


 int AIOP_FREE ;
 scalar_t__ EWOULDBLOCK ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int M_WAITOK ;
 int PRIBIO ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct aioproc*,int ) ;
 int TAILQ_REMOVE (int *,struct aioproc*,int ) ;
 int aio_freeproc ;
 int aio_job_mtx ;
 int aio_jobs ;
 int aio_newproc_sem ;
 struct kaiocb* aio_selectjob (struct aioproc*) ;
 int aiod_lifetime ;
 int aiod_unr ;
 int aiop_zone ;
 struct thread* curthread ;
 int free_unr (int ,int) ;
 int kproc_exit (int ) ;
 int list ;
 scalar_t__ msleep (struct proc*,int *,int ,char*,int ) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ num_aio_procs ;
 int sema_post (int *) ;
 int stub1 (struct kaiocb*) ;
 scalar_t__ target_aio_procs ;
 struct aioproc* uma_zalloc (int ,int ) ;
 int uma_zfree (int ,struct aioproc*) ;
 struct vmspace* vmspace_acquire_ref (struct proc*) ;
 int vmspace_free (struct vmspace*) ;
 int vmspace_switch_aio (struct vmspace*) ;

__attribute__((used)) static void
aio_daemon(void *_id)
{
 struct kaiocb *job;
 struct aioproc *aiop;
 struct kaioinfo *ki;
 struct proc *p;
 struct vmspace *myvm;
 struct thread *td = curthread;
 int id = (intptr_t)_id;






 p = td->td_proc;
 myvm = vmspace_acquire_ref(p);

 KASSERT(p->p_textvp == ((void*)0), ("kthread has a textvp"));





 aiop = uma_zalloc(aiop_zone, M_WAITOK);
 aiop->aioproc = p;
 aiop->aioprocflags = 0;





 sema_post(&aio_newproc_sem);

 mtx_lock(&aio_job_mtx);
 for (;;) {



  if (aiop->aioprocflags & AIOP_FREE) {
   TAILQ_REMOVE(&aio_freeproc, aiop, list);
   aiop->aioprocflags &= ~AIOP_FREE;
  }




  while ((job = aio_selectjob(aiop)) != ((void*)0)) {
   mtx_unlock(&aio_job_mtx);

   ki = job->userproc->p_aioinfo;
   job->handle_fn(job);

   mtx_lock(&aio_job_mtx);

   ki->kaio_active_count--;
  }




  if (p->p_vmspace != myvm) {
   mtx_unlock(&aio_job_mtx);
   vmspace_switch_aio(myvm);
   mtx_lock(&aio_job_mtx);




   continue;
  }

  mtx_assert(&aio_job_mtx, MA_OWNED);

  TAILQ_INSERT_HEAD(&aio_freeproc, aiop, list);
  aiop->aioprocflags |= AIOP_FREE;





  if (msleep(p, &aio_job_mtx, PRIBIO, "aiordy",
      aiod_lifetime) == EWOULDBLOCK && TAILQ_EMPTY(&aio_jobs) &&
      (aiop->aioprocflags & AIOP_FREE) &&
      num_aio_procs > target_aio_procs)
   break;
 }
 TAILQ_REMOVE(&aio_freeproc, aiop, list);
 num_aio_procs--;
 mtx_unlock(&aio_job_mtx);
 uma_zfree(aiop_zone, aiop);
 free_unr(aiod_unr, id);
 vmspace_free(myvm);

 KASSERT(p->p_vmspace == myvm,
     ("AIOD: bad vmspace for exiting daemon"));
 KASSERT(myvm->vm_refcnt > 1,
     ("AIOD: bad vm refcnt for exiting daemon: %d", myvm->vm_refcnt));
 kproc_exit(0);
}

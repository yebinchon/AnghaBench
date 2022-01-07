
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {struct kaioinfo* p_aioinfo; } ;
struct kaioinfo {scalar_t__ kaio_count; int kaio_liojoblist; int kaio_all; int kaio_done; } ;
struct kaiocb {int jobflags; scalar_t__ lioj_count; int cred; scalar_t__ fd_file; int ksi; int klist; int lioj_ksi; int lioj_finished_count; struct kaiocb* lio; struct proc* userproc; } ;
struct aioliojob {int jobflags; scalar_t__ lioj_count; int cred; scalar_t__ fd_file; int ksi; int klist; int lioj_ksi; int lioj_finished_count; struct aioliojob* lio; struct proc* userproc; } ;


 int AIO_LOCK (struct kaioinfo*) ;
 int AIO_LOCK_ASSERT (struct kaioinfo*,int ) ;
 int AIO_UNLOCK (struct kaioinfo*) ;
 int KAIOCB_FINISHED ;
 int MA_OWNED ;
 int MPASS (int) ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int TAILQ_REMOVE (int *,struct kaiocb*,int ) ;
 int aiocb_zone ;
 int aiolio_zone ;
 int allist ;
 int atomic_subtract_int (int *,int) ;
 int crfree (int ) ;
 struct proc* curproc ;
 int curthread ;
 int fdrop (scalar_t__,int ) ;
 int knlist_delete (int *,int ,int) ;
 int lioj_list ;
 int num_queue_count ;
 int plist ;
 int sigqueue_take (int *) ;
 int uma_zfree (int ,struct kaiocb*) ;

__attribute__((used)) static int
aio_free_entry(struct kaiocb *job)
{
 struct kaioinfo *ki;
 struct aioliojob *lj;
 struct proc *p;

 p = job->userproc;
 MPASS(curproc == p);
 ki = p->p_aioinfo;
 MPASS(ki != ((void*)0));

 AIO_LOCK_ASSERT(ki, MA_OWNED);
 MPASS(job->jobflags & KAIOCB_FINISHED);

 atomic_subtract_int(&num_queue_count, 1);

 ki->kaio_count--;
 MPASS(ki->kaio_count >= 0);

 TAILQ_REMOVE(&ki->kaio_done, job, plist);
 TAILQ_REMOVE(&ki->kaio_all, job, allist);

 lj = job->lio;
 if (lj) {
  lj->lioj_count--;
  lj->lioj_finished_count--;

  if (lj->lioj_count == 0) {
   TAILQ_REMOVE(&ki->kaio_liojoblist, lj, lioj_list);

   knlist_delete(&lj->klist, curthread, 1);
   PROC_LOCK(p);
   sigqueue_take(&lj->lioj_ksi);
   PROC_UNLOCK(p);
   uma_zfree(aiolio_zone, lj);
  }
 }


 knlist_delete(&job->klist, curthread, 1);
 PROC_LOCK(p);
 sigqueue_take(&job->ksi);
 PROC_UNLOCK(p);

 AIO_UNLOCK(ki);
 if (job->fd_file)
  fdrop(job->fd_file, curthread);
 crfree(job->cred);
 uma_zfree(aiocb_zone, job);
 AIO_LOCK(ki);

 return (0);
}

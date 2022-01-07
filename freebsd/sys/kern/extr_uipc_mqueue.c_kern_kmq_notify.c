
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {struct proc* td_proc; } ;
struct sigevent {scalar_t__ sigev_notify; int sigev_signo; } ;
struct proc {struct filedesc* p_fd; } ;
struct TYPE_3__ {int ksi_flags; int ksi_mqd; int ksi_code; } ;
struct mqueue_notifier {struct sigevent nt_sigev; TYPE_1__ nt_ksi; struct proc* nt_proc; } ;
struct mqueue {scalar_t__ mq_receivers; int mq_mutex; int mq_msgq; struct mqueue_notifier* mq_notifier; } ;
struct filedesc {int dummy; } ;
struct file {int dummy; } ;


 int AUDIT_ARG_FD (int) ;
 int EBADF ;
 int EBUSY ;
 int EINVAL ;
 int FILEDESC_SLOCK (struct filedesc*) ;
 int FILEDESC_SUNLOCK (struct filedesc*) ;
 int KSI_EXT ;
 int KSI_INS ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 scalar_t__ SIGEV_NONE ;
 scalar_t__ SIGEV_SIGNAL ;
 scalar_t__ SIGEV_THREAD_ID ;
 int SI_MESGQ ;
 int TAILQ_EMPTY (int *) ;
 int _SIG_VALID (int ) ;
 int cap_check (int ,int *) ;
 int cap_event_rights ;
 int cap_rights (struct filedesc*,int) ;
 int fdrop (struct file*,struct thread*) ;
 struct file* fget_locked (struct filedesc*,int) ;
 int getmq (struct thread*,int,struct file**,int *,struct mqueue**) ;
 int ksiginfo_init (TYPE_1__*) ;
 int mqueue_send_notification (struct mqueue*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct mqueue_notifier* notifier_alloc () ;
 int notifier_free (struct mqueue_notifier*) ;
 int notifier_insert (struct proc*,struct mqueue_notifier*) ;
 int notifier_remove (struct proc*,struct mqueue*,int) ;
 struct mqueue_notifier* notifier_search (struct proc*,int) ;
 int sigqueue_take (TYPE_1__*) ;

__attribute__((used)) static int
kern_kmq_notify(struct thread *td, int mqd, struct sigevent *sigev)
{
 struct filedesc *fdp;
 struct proc *p;
 struct mqueue *mq;
 struct file *fp, *fp2;
 struct mqueue_notifier *nt, *newnt = ((void*)0);
 int error;

 AUDIT_ARG_FD(mqd);
 if (sigev != ((void*)0)) {
  if (sigev->sigev_notify != SIGEV_SIGNAL &&
      sigev->sigev_notify != SIGEV_THREAD_ID &&
      sigev->sigev_notify != SIGEV_NONE)
   return (EINVAL);
  if ((sigev->sigev_notify == SIGEV_SIGNAL ||
      sigev->sigev_notify == SIGEV_THREAD_ID) &&
      !_SIG_VALID(sigev->sigev_signo))
   return (EINVAL);
 }
 p = td->td_proc;
 fdp = td->td_proc->p_fd;
 error = getmq(td, mqd, &fp, ((void*)0), &mq);
 if (error)
  return (error);
again:
 FILEDESC_SLOCK(fdp);
 fp2 = fget_locked(fdp, mqd);
 if (fp2 == ((void*)0)) {
  FILEDESC_SUNLOCK(fdp);
  error = EBADF;
  goto out;
 }







 if (fp2 != fp) {
  FILEDESC_SUNLOCK(fdp);
  error = EBADF;
  goto out;
 }
 mtx_lock(&mq->mq_mutex);
 FILEDESC_SUNLOCK(fdp);
 if (sigev != ((void*)0)) {
  if (mq->mq_notifier != ((void*)0)) {
   error = EBUSY;
  } else {
   PROC_LOCK(p);
   nt = notifier_search(p, mqd);
   if (nt == ((void*)0)) {
    if (newnt == ((void*)0)) {
     PROC_UNLOCK(p);
     mtx_unlock(&mq->mq_mutex);
     newnt = notifier_alloc();
     goto again;
    }
   }

   if (nt != ((void*)0)) {
    sigqueue_take(&nt->nt_ksi);
    if (newnt != ((void*)0)) {
     notifier_free(newnt);
     newnt = ((void*)0);
    }
   } else {
    nt = newnt;
    newnt = ((void*)0);
    ksiginfo_init(&nt->nt_ksi);
    nt->nt_ksi.ksi_flags |= KSI_INS | KSI_EXT;
    nt->nt_ksi.ksi_code = SI_MESGQ;
    nt->nt_proc = p;
    nt->nt_ksi.ksi_mqd = mqd;
    notifier_insert(p, nt);
   }
   nt->nt_sigev = *sigev;
   mq->mq_notifier = nt;
   PROC_UNLOCK(p);





   if (mq->mq_receivers == 0 &&
       !TAILQ_EMPTY(&mq->mq_msgq))
    mqueue_send_notification(mq);
  }
 } else {
  notifier_remove(p, mq, mqd);
 }
 mtx_unlock(&mq->mq_mutex);

out:
 fdrop(fp, td);
 if (newnt != ((void*)0))
  notifier_free(newnt);
 return (error);
}

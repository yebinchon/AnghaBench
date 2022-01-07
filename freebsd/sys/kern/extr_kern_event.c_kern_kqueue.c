
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {int cr_ruidinfo; } ;
struct thread {int* td_retval; struct ucred* td_ucred; TYPE_1__* td_proc; } ;
struct kqueue {int kq_cred; struct filedesc* kq_fdp; } ;
struct filedesc {int fd_kqlist; } ;
struct filecaps {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct filedesc* p_fd; } ;


 int DTYPE_KQUEUE ;
 int ENOMEM ;
 int FILEDESC_XLOCK (struct filedesc*) ;
 int FILEDESC_XUNLOCK (struct filedesc*) ;
 int FREAD ;
 int FWRITE ;
 int M_KQUEUE ;
 int M_WAITOK ;
 int M_ZERO ;
 int RLIMIT_KQUEUES ;
 int TAILQ_INSERT_HEAD (int *,struct kqueue*,int ) ;
 int chgkqcnt (int ,int,int ) ;
 int crhold (struct ucred*) ;
 int falloc_caps (struct thread*,struct file**,int*,int,struct filecaps*) ;
 int fdrop (struct file*,struct thread*) ;
 int finit (struct file*,int,int ,struct kqueue*,int *) ;
 int kq_list ;
 int kqueue_init (struct kqueue*) ;
 int kqueueops ;
 int lim_cur (struct thread*,int ) ;
 struct kqueue* malloc (int,int ,int) ;

int
kern_kqueue(struct thread *td, int flags, struct filecaps *fcaps)
{
 struct filedesc *fdp;
 struct kqueue *kq;
 struct file *fp;
 struct ucred *cred;
 int fd, error;

 fdp = td->td_proc->p_fd;
 cred = td->td_ucred;
 if (!chgkqcnt(cred->cr_ruidinfo, 1, lim_cur(td, RLIMIT_KQUEUES)))
  return (ENOMEM);

 error = falloc_caps(td, &fp, &fd, flags, fcaps);
 if (error != 0) {
  chgkqcnt(cred->cr_ruidinfo, -1, 0);
  return (error);
 }


 kq = malloc(sizeof *kq, M_KQUEUE, M_WAITOK | M_ZERO);
 kqueue_init(kq);
 kq->kq_fdp = fdp;
 kq->kq_cred = crhold(cred);

 FILEDESC_XLOCK(fdp);
 TAILQ_INSERT_HEAD(&fdp->fd_kqlist, kq, kq_list);
 FILEDESC_XUNLOCK(fdp);

 finit(fp, FREAD | FWRITE, DTYPE_KQUEUE, kq, &kqueueops);
 fdrop(fp, td);

 td->td_retval[0] = fd;
 return (0);
}

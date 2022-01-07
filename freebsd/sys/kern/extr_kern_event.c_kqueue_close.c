
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct kqueue {TYPE_1__* kq_cred; struct filedesc* kq_fdp; } ;
struct filedesc {int fd_kqlist; } ;
struct file {struct kqueue* f_data; } ;
struct TYPE_2__ {int cr_ruidinfo; } ;


 int FILEDESC_LOCK (struct filedesc*) ;
 int FILEDESC_XLOCK (struct filedesc*) ;
 int FILEDESC_XUNLOCK (struct filedesc*) ;
 int M_KQUEUE ;
 int TAILQ_REMOVE (int *,struct kqueue*,int ) ;
 int chgkqcnt (int ,int,int ) ;
 int crfree (TYPE_1__*) ;
 int free (struct kqueue*,int ) ;
 int kq_list ;
 int kqueue_acquire (struct file*,struct kqueue**) ;
 int kqueue_destroy (struct kqueue*) ;
 int kqueue_drain (struct kqueue*,struct thread*) ;
 int sx_xlocked (int ) ;

__attribute__((used)) static int
kqueue_close(struct file *fp, struct thread *td)
{
 struct kqueue *kq = fp->f_data;
 struct filedesc *fdp;
 int error;
 int filedesc_unlock;

 if ((error = kqueue_acquire(fp, &kq)))
  return error;
 kqueue_drain(kq, td);







 fdp = kq->kq_fdp;
 kq->kq_fdp = ((void*)0);
 if (!sx_xlocked(FILEDESC_LOCK(fdp))) {
  FILEDESC_XLOCK(fdp);
  filedesc_unlock = 1;
 } else
  filedesc_unlock = 0;
 TAILQ_REMOVE(&fdp->fd_kqlist, kq, kq_list);
 if (filedesc_unlock)
  FILEDESC_XUNLOCK(fdp);

 kqueue_destroy(kq);
 chgkqcnt(kq->kq_cred->cr_ruidinfo, -1, 0);
 crfree(kq->kq_cred);
 free(kq, M_KQUEUE);
 fp->f_data = ((void*)0);

 return (0);
}

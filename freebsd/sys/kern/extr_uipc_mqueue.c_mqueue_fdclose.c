
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct mqueue {int mq_flags; int mq_mutex; int mq_wsel; int mq_rsel; } ;
struct filedesc {int dummy; } ;
struct file {int * f_ops; } ;
struct TYPE_2__ {struct filedesc* p_fd; } ;


 int FILEDESC_LOCK_ASSERT (struct filedesc*) ;
 struct mqueue* FPTOMQ (struct file*) ;
 int MQ_RSEL ;
 int MQ_WSEL ;
 int mqueueops ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int notifier_remove (TYPE_1__*,struct mqueue*,int) ;
 int selwakeup (int *) ;

__attribute__((used)) static void
mqueue_fdclose(struct thread *td, int fd, struct file *fp)
{
 struct mqueue *mq;







 if (fp->f_ops == &mqueueops) {
  mq = FPTOMQ(fp);
  mtx_lock(&mq->mq_mutex);
  notifier_remove(td->td_proc, mq, fd);


  if (mq->mq_flags & MQ_RSEL) {
   mq->mq_flags &= ~MQ_RSEL;
   selwakeup(&mq->mq_rsel);
  }
  if (mq->mq_flags & MQ_WSEL) {
   mq->mq_flags &= ~MQ_WSEL;
   selwakeup(&mq->mq_wsel);
  }
  mtx_unlock(&mq->mq_mutex);
 }
}

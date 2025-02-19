
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct mqueue {scalar_t__ mq_curmsgs; scalar_t__ mq_maxmsg; int mq_mutex; int mq_wsel; int mq_flags; int mq_rsel; } ;
struct file {int dummy; } ;


 struct mqueue* FPTOMQ (struct file*) ;
 int MQ_RSEL ;
 int MQ_WSEL ;
 int POLLIN ;
 int POLLOUT ;
 int POLLRDNORM ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
mqf_poll(struct file *fp, int events, struct ucred *active_cred,
 struct thread *td)
{
 struct mqueue *mq = FPTOMQ(fp);
 int revents = 0;

 mtx_lock(&mq->mq_mutex);
 if (events & (POLLIN | POLLRDNORM)) {
  if (mq->mq_curmsgs) {
   revents |= events & (POLLIN | POLLRDNORM);
  } else {
   mq->mq_flags |= MQ_RSEL;
   selrecord(td, &mq->mq_rsel);
   }
 }
 if (events & POLLOUT) {
  if (mq->mq_curmsgs < mq->mq_maxmsg)
   revents |= POLLOUT;
  else {
   mq->mq_flags |= MQ_WSEL;
   selrecord(td, &mq->mq_wsel);
  }
 }
 mtx_unlock(&mq->mq_mutex);
 return (revents);
}

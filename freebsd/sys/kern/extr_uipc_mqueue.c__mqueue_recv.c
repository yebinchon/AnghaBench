
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mqueue_msg {scalar_t__ msg_size; } ;
struct TYPE_2__ {int si_note; } ;
struct mqueue {scalar_t__ mq_receivers; int mq_flags; int mq_mutex; int mq_msgq; int * mq_notifier; TYPE_1__ mq_wsel; scalar_t__ mq_senders; int mq_totalbytes; int mq_curmsgs; } ;


 int EAGAIN ;
 int ETIMEDOUT ;
 int KNOTE_LOCKED (int *,int ) ;
 int MQ_WSEL ;
 int PCATCH ;
 int TAILQ_EMPTY (int *) ;
 struct mqueue_msg* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct mqueue_msg*,int ) ;
 int mqueue_send_notification (struct mqueue*) ;
 int msg_link ;
 int msleep (scalar_t__*,int *,int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int selwakeup (TYPE_1__*) ;
 int wakeup_one (scalar_t__*) ;

__attribute__((used)) static int
_mqueue_recv(struct mqueue *mq, struct mqueue_msg **msg, int timo)
{
 int error = 0;

 mtx_lock(&mq->mq_mutex);
 while ((*msg = TAILQ_FIRST(&mq->mq_msgq)) == ((void*)0) && error == 0) {
  if (timo < 0) {
   mtx_unlock(&mq->mq_mutex);
   return (EAGAIN);
  }
  mq->mq_receivers++;
  error = msleep(&mq->mq_receivers, &mq->mq_mutex,
       PCATCH, "mqrecv", timo);
  mq->mq_receivers--;
  if (error == EAGAIN)
   error = ETIMEDOUT;
 }
 if (*msg != ((void*)0)) {
  error = 0;
  TAILQ_REMOVE(&mq->mq_msgq, *msg, msg_link);
  mq->mq_curmsgs--;
  mq->mq_totalbytes -= (*msg)->msg_size;
  if (mq->mq_senders)
   wakeup_one(&mq->mq_senders);
  if (mq->mq_flags & MQ_WSEL) {
   mq->mq_flags &= ~MQ_WSEL;
   selwakeup(&mq->mq_wsel);
  }
  KNOTE_LOCKED(&mq->mq_wsel.si_note, 0);
 }
 if (mq->mq_notifier != ((void*)0) && mq->mq_receivers == 0 &&
     !TAILQ_EMPTY(&mq->mq_msgq)) {
  mqueue_send_notification(mq);
 }
 mtx_unlock(&mq->mq_mutex);
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mqueue_msg {int dummy; } ;
struct TYPE_2__ {int si_note; } ;
struct mqueue {TYPE_1__ mq_wsel; TYPE_1__ mq_rsel; int mq_mutex; int mq_msgq; } ;


 int M_MQUEUEDATA ;
 struct mqueue_msg* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct mqueue_msg*,int ) ;
 int atomic_add_int (int *,int) ;
 int curmq ;
 int free (struct mqueue_msg*,int ) ;
 int knlist_destroy (int *) ;
 int mqueue_zone ;
 int msg_link ;
 int mtx_destroy (int *) ;
 int seldrain (TYPE_1__*) ;
 int uma_zfree (int ,struct mqueue*) ;

__attribute__((used)) static void
mqueue_free(struct mqueue *mq)
{
 struct mqueue_msg *msg;

 while ((msg = TAILQ_FIRST(&mq->mq_msgq)) != ((void*)0)) {
  TAILQ_REMOVE(&mq->mq_msgq, msg, msg_link);
  free(msg, M_MQUEUEDATA);
 }

 mtx_destroy(&mq->mq_mutex);
 seldrain(&mq->mq_rsel);
 seldrain(&mq->mq_wsel);
 knlist_destroy(&mq->mq_rsel.si_note);
 knlist_destroy(&mq->mq_wsel.si_note);
 uma_zfree(mqueue_zone, mq);
 atomic_add_int(&curmq, -1);
}

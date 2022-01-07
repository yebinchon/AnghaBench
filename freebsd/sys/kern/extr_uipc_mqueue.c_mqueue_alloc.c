
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int si_note; } ;
struct TYPE_3__ {int si_note; } ;
struct mqueue {int mq_mutex; TYPE_2__ mq_wsel; TYPE_1__ mq_rsel; int mq_msgsize; int mq_maxmsg; int mq_msgq; } ;
struct mq_attr {int mq_msgsize; int mq_maxmsg; } ;


 int MTX_DEF ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int atomic_add_int (scalar_t__*,int) ;
 scalar_t__ curmq ;
 int default_maxmsg ;
 int default_msgsize ;
 int knlist_init_mtx (int *,int *) ;
 scalar_t__ maxmq ;
 int mqueue_zone ;
 int mtx_init (int *,char*,int *,int ) ;
 struct mqueue* uma_zalloc (int ,int) ;

__attribute__((used)) static struct mqueue *
mqueue_alloc(const struct mq_attr *attr)
{
 struct mqueue *mq;

 if (curmq >= maxmq)
  return (((void*)0));
 mq = uma_zalloc(mqueue_zone, M_WAITOK | M_ZERO);
 TAILQ_INIT(&mq->mq_msgq);
 if (attr != ((void*)0)) {
  mq->mq_maxmsg = attr->mq_maxmsg;
  mq->mq_msgsize = attr->mq_msgsize;
 } else {
  mq->mq_maxmsg = default_maxmsg;
  mq->mq_msgsize = default_msgsize;
 }
 mtx_init(&mq->mq_mutex, "mqueue lock", ((void*)0), MTX_DEF);
 knlist_init_mtx(&mq->mq_rsel.si_note, &mq->mq_mutex);
 knlist_init_mtx(&mq->mq_wsel.si_note, &mq->mq_mutex);
 atomic_add_int(&curmq, 1);
 return (mq);
}

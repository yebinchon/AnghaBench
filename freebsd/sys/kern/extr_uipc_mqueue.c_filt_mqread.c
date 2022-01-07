
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqueue {scalar_t__ mq_curmsgs; int mq_mutex; } ;
struct knote {int kn_fp; } ;


 struct mqueue* FPTOMQ (int ) ;
 int MA_OWNED ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
filt_mqread(struct knote *kn, long hint)
{
 struct mqueue *mq = FPTOMQ(kn->kn_fp);

 mtx_assert(&mq->mq_mutex, MA_OWNED);
 return (mq->mq_curmsgs != 0);
}

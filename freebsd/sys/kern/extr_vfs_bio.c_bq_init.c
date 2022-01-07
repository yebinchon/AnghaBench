
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufqueue {int bq_index; int bq_subqueue; scalar_t__ bq_len; int bq_queue; int bq_lock; } ;


 int MTX_DEF ;
 int TAILQ_INIT (int *) ;
 int mtx_init (int *,char const*,int *,int ) ;

__attribute__((used)) static void
bq_init(struct bufqueue *bq, int qindex, int subqueue, const char *lockname)
{

 mtx_init(&bq->bq_lock, lockname, ((void*)0), MTX_DEF);
 TAILQ_INIT(&bq->bq_queue);
 bq->bq_len = 0;
 bq->bq_index = qindex;
 bq->bq_subqueue = subqueue;
}

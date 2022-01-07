
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_txq {scalar_t__ axq_aggr_depth; scalar_t__ axq_depth; int * axq_link; int axq_q; } ;


 int ATH_TXQ_LOCK_ASSERT (struct ath_txq*) ;
 int TAILQ_CONCAT (int *,int *,int ) ;
 int bf_list ;

void
ath_txqmove(struct ath_txq *dst, struct ath_txq *src)
{

 ATH_TXQ_LOCK_ASSERT(src);
 ATH_TXQ_LOCK_ASSERT(dst);

 TAILQ_CONCAT(&dst->axq_q, &src->axq_q, bf_list);
 dst->axq_link = src->axq_link;
 src->axq_link = ((void*)0);
 dst->axq_depth += src->axq_depth;
 dst->axq_aggr_depth += src->axq_aggr_depth;
 src->axq_depth = 0;
 src->axq_aggr_depth = 0;
}

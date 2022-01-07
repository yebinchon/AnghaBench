
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_wc {scalar_t__ status; } ;
struct mlx5_ib_wc {int list; struct ib_wc wc; } ;
struct mlx5_ib_cq {scalar_t__ notify_flags; int lock; int notify_work; int wc_list; } ;
struct ib_cq {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ IB_CQ_NEXT_COMP ;
 scalar_t__ IB_WC_SUCCESS ;
 struct mlx5_ib_wc* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mlx5_ib_cq* to_mcq (struct ib_cq*) ;

int mlx5_ib_generate_wc(struct ib_cq *ibcq, struct ib_wc *wc)
{
 struct mlx5_ib_wc *soft_wc;
 struct mlx5_ib_cq *cq = to_mcq(ibcq);
 unsigned long flags;

 soft_wc = kmalloc(sizeof(*soft_wc), GFP_ATOMIC);
 if (!soft_wc)
  return -ENOMEM;

 soft_wc->wc = *wc;
 spin_lock_irqsave(&cq->lock, flags);
 list_add_tail(&soft_wc->list, &cq->wc_list);
 if (cq->notify_flags == IB_CQ_NEXT_COMP ||
     wc->status != IB_WC_SUCCESS) {
  cq->notify_flags = 0;
  schedule_work(&cq->notify_work);
 }
 spin_unlock_irqrestore(&cq->lock, flags);

 return 0;
}

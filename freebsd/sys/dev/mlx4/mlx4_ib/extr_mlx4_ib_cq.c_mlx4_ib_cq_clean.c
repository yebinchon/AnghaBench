
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_ib_srq {int dummy; } ;
struct mlx4_ib_cq {int lock; } ;


 int __mlx4_ib_cq_clean (struct mlx4_ib_cq*,int ,struct mlx4_ib_srq*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void mlx4_ib_cq_clean(struct mlx4_ib_cq *cq, u32 qpn, struct mlx4_ib_srq *srq)
{
 spin_lock_irq(&cq->lock);
 __mlx4_ib_cq_clean(cq, qpn, srq);
 spin_unlock_irq(&cq->lock);
}

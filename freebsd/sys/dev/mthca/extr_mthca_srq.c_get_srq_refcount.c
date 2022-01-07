
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_srq {int refcount; } ;
struct TYPE_2__ {int lock; } ;
struct mthca_dev {TYPE_1__ srq_table; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static inline int get_srq_refcount(struct mthca_dev *dev, struct mthca_srq *srq)
{
 int c;

 spin_lock_irq(&dev->srq_table.lock);
 c = srq->refcount;
 spin_unlock_irq(&dev->srq_table.lock);

 return c;
}

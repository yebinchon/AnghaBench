
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alloc; int cq; int lock; } ;
struct TYPE_4__ {int num_cqs; int reserved_cqs; } ;
struct mthca_dev {TYPE_1__ cq_table; TYPE_2__ limits; } ;


 int mthca_alloc_cleanup (int *) ;
 int mthca_alloc_init (int *,int ,int,int ) ;
 int mthca_array_init (int *,int ) ;
 int spin_lock_init (int *) ;

int mthca_init_cq_table(struct mthca_dev *dev)
{
 int err;

 spin_lock_init(&dev->cq_table.lock);

 err = mthca_alloc_init(&dev->cq_table.alloc,
          dev->limits.num_cqs,
          (1 << 24) - 1,
          dev->limits.reserved_cqs);
 if (err)
  return err;

 err = mthca_array_init(&dev->cq_table.cq,
          dev->limits.num_cqs);
 if (err)
  mthca_alloc_cleanup(&dev->cq_table.alloc);

 return err;
}

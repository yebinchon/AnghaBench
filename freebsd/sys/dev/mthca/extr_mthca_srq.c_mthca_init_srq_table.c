
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int alloc; int srq; int lock; } ;
struct TYPE_3__ {scalar_t__ num_srqs; int reserved_srqs; } ;
struct mthca_dev {int mthca_flags; TYPE_2__ srq_table; TYPE_1__ limits; } ;


 int MTHCA_FLAG_SRQ ;
 int mthca_alloc_cleanup (int *) ;
 int mthca_alloc_init (int *,scalar_t__,scalar_t__,int ) ;
 int mthca_array_init (int *,scalar_t__) ;
 int spin_lock_init (int *) ;

int mthca_init_srq_table(struct mthca_dev *dev)
{
 int err;

 if (!(dev->mthca_flags & MTHCA_FLAG_SRQ))
  return 0;

 spin_lock_init(&dev->srq_table.lock);

 err = mthca_alloc_init(&dev->srq_table.alloc,
          dev->limits.num_srqs,
          dev->limits.num_srqs - 1,
          dev->limits.reserved_srqs);
 if (err)
  return err;

 err = mthca_array_init(&dev->srq_table.srq,
          dev->limits.num_srqs);
 if (err)
  mthca_alloc_cleanup(&dev->srq_table.alloc);

 return err;
}

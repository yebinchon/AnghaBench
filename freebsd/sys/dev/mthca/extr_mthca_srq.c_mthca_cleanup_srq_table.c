
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int alloc; int srq; } ;
struct TYPE_3__ {int num_srqs; } ;
struct mthca_dev {int mthca_flags; TYPE_2__ srq_table; TYPE_1__ limits; } ;


 int MTHCA_FLAG_SRQ ;
 int mthca_alloc_cleanup (int *) ;
 int mthca_array_cleanup (int *,int ) ;

void mthca_cleanup_srq_table(struct mthca_dev *dev)
{
 if (!(dev->mthca_flags & MTHCA_FLAG_SRQ))
  return;

 mthca_array_cleanup(&dev->srq_table.srq, dev->limits.num_srqs);
 mthca_alloc_cleanup(&dev->srq_table.alloc);
}

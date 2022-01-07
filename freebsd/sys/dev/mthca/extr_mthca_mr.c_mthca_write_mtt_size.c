
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int mtt_buddy; int * fmr_mtt_buddy; } ;
struct mthca_dev {int mthca_flags; TYPE_1__ mr_table; } ;


 int MTHCA_FLAG_FMR ;
 int PAGE_SIZE ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;

int mthca_write_mtt_size(struct mthca_dev *dev)
{
 if (dev->mr_table.fmr_mtt_buddy != &dev->mr_table.mtt_buddy ||
     !(dev->mthca_flags & MTHCA_FLAG_FMR))






  return PAGE_SIZE / sizeof (u64) - 2;


 return mthca_is_memfree(dev) ? (PAGE_SIZE / sizeof (u64)) : 0x7ffffff;
}

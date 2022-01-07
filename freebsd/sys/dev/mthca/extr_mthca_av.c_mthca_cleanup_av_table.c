
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int alloc; int pool; scalar_t__ av_map; } ;
struct mthca_dev {TYPE_1__ av_table; } ;


 int iounmap (scalar_t__) ;
 int mthca_alloc_cleanup (int *) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;
 int pci_pool_destroy (int ) ;

void mthca_cleanup_av_table(struct mthca_dev *dev)
{
 if (mthca_is_memfree(dev))
  return;

 if (dev->av_table.av_map)
  iounmap(dev->av_table.av_map);
 pci_pool_destroy(dev->av_table.pool);
 mthca_alloc_cleanup(&dev->av_table.alloc);
}

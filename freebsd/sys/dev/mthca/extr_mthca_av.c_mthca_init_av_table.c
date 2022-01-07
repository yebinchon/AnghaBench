
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_ddr_avs; int alloc; int pool; int * av_map; scalar_t__ ddr_av_base; } ;
struct mthca_dev {int mthca_flags; TYPE_1__ av_table; scalar_t__ ddr_start; int pdev; } ;


 int ENOMEM ;
 int MTHCA_AV_SIZE ;
 int MTHCA_FLAG_DDR_HIDDEN ;
 int * ioremap (scalar_t__,int) ;
 int mthca_alloc_cleanup (int *) ;
 int mthca_alloc_init (int *,int,int,int ) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;
 int pci_pool_create (char*,int ,int,int,int ) ;
 int pci_pool_destroy (int ) ;
 scalar_t__ pci_resource_start (int ,int) ;

int mthca_init_av_table(struct mthca_dev *dev)
{
 int err;

 if (mthca_is_memfree(dev))
  return 0;

 err = mthca_alloc_init(&dev->av_table.alloc,
          dev->av_table.num_ddr_avs,
          dev->av_table.num_ddr_avs - 1,
          0);
 if (err)
  return err;

 dev->av_table.pool = pci_pool_create("mthca_av", dev->pdev,
          MTHCA_AV_SIZE,
          MTHCA_AV_SIZE, 0);
 if (!dev->av_table.pool)
  goto out_free_alloc;

 if (!(dev->mthca_flags & MTHCA_FLAG_DDR_HIDDEN)) {
  dev->av_table.av_map = ioremap(pci_resource_start(dev->pdev, 4) +
            dev->av_table.ddr_av_base -
            dev->ddr_start,
            dev->av_table.num_ddr_avs *
            MTHCA_AV_SIZE);
  if (!dev->av_table.av_map)
   goto out_free_pool;
 } else
  dev->av_table.av_map = ((void*)0);

 return 0;

 out_free_pool:
 pci_pool_destroy(dev->av_table.pool);

 out_free_alloc:
 mthca_alloc_cleanup(&dev->av_table.alloc);
 return -ENOMEM;
}

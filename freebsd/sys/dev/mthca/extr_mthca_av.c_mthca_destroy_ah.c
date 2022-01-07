
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ddr_av_base; int pool; int alloc; } ;
struct mthca_dev {TYPE_1__ av_table; } ;
struct mthca_ah {int type; int avdma; int av; } ;





 int MTHCA_AV_SIZE ;
 int kfree (int ) ;
 int mthca_free (int *,int) ;
 int pci_pool_free (int ,int ,int) ;

int mthca_destroy_ah(struct mthca_dev *dev, struct mthca_ah *ah)
{
 switch (ah->type) {
 case 129:
  mthca_free(&dev->av_table.alloc,
      (ah->avdma - dev->av_table.ddr_av_base) /
      MTHCA_AV_SIZE);
  break;

 case 128:
  pci_pool_free(dev->av_table.pool, ah->av, ah->avdma);
  break;

 case 130:
  kfree(ah->av);
  break;
 }

 return 0;
}

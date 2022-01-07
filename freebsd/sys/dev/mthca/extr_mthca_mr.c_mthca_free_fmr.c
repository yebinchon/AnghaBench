
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lkey; } ;
struct mthca_fmr {int mtt; TYPE_1__ ibmr; scalar_t__ maps; } ;
struct mthca_dev {int dummy; } ;


 int EBUSY ;
 int mthca_free_mtt (struct mthca_dev*,int ) ;
 int mthca_free_region (struct mthca_dev*,int ) ;

int mthca_free_fmr(struct mthca_dev *dev, struct mthca_fmr *fmr)
{
 if (fmr->maps)
  return -EBUSY;

 mthca_free_region(dev, fmr->ibmr.lkey);
 mthca_free_mtt(dev, fmr->mtt);

 return 0;
}

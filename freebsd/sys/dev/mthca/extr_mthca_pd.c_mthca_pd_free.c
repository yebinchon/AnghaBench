
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_pd {int pd_num; int ntmr; scalar_t__ privileged; } ;
struct TYPE_2__ {int alloc; } ;
struct mthca_dev {TYPE_1__ pd_table; } ;


 int mthca_free (int *,int ) ;
 int mthca_free_mr (struct mthca_dev*,int *) ;

void mthca_pd_free(struct mthca_dev *dev, struct mthca_pd *pd)
{
 if (pd->privileged)
  mthca_free_mr(dev, &pd->ntmr);
 mthca_free(&dev->pd_table.alloc, pd->pd_num);
}

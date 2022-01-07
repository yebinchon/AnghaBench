
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_uar {int index; } ;
struct TYPE_2__ {int alloc; } ;
struct mthca_dev {TYPE_1__ uar_table; } ;


 int mthca_free (int *,int ) ;

void mthca_uar_free(struct mthca_dev *dev, struct mthca_uar *uar)
{
 mthca_free(&dev->uar_table.alloc, uar->index);
}

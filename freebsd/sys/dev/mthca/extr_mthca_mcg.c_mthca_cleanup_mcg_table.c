
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int alloc; } ;
struct mthca_dev {TYPE_1__ mcg_table; } ;


 int mthca_alloc_cleanup (int *) ;

void mthca_cleanup_mcg_table(struct mthca_dev *dev)
{
 mthca_alloc_cleanup(&dev->mcg_table.alloc);
}

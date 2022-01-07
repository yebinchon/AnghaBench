
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_mtt {int order; scalar_t__ first_seg; int buddy; } ;
struct TYPE_2__ {int mtt_table; } ;
struct mthca_dev {TYPE_1__ mr_table; } ;


 int kfree (struct mthca_mtt*) ;
 int mthca_buddy_free (int ,scalar_t__,int) ;
 int mthca_table_put_range (struct mthca_dev*,int ,scalar_t__,scalar_t__) ;

void mthca_free_mtt(struct mthca_dev *dev, struct mthca_mtt *mtt)
{
 if (!mtt)
  return;

 mthca_buddy_free(mtt->buddy, mtt->first_seg, mtt->order);

 mthca_table_put_range(dev, dev->mr_table.mtt_table,
         mtt->first_seg,
         mtt->first_seg + (1 << mtt->order) - 1);

 kfree(mtt);
}

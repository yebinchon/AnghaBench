
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_mailbox {int dma; } ;
struct mthca_dev {int dummy; } ;


 int CMD_HW2SW_MPT ;
 int CMD_TIME_CLASS_B ;
 int mthca_cmd_box (struct mthca_dev*,int ,int ,int,int,int ,int ) ;

int mthca_HW2SW_MPT(struct mthca_dev *dev, struct mthca_mailbox *mailbox,
      int mpt_index)
{
 return mthca_cmd_box(dev, 0, mailbox ? mailbox->dma : 0, mpt_index,
        !mailbox, CMD_HW2SW_MPT,
        CMD_TIME_CLASS_B);
}

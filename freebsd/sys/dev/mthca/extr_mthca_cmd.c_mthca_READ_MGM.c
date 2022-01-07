
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_mailbox {int dma; } ;
struct mthca_dev {int dummy; } ;


 int CMD_READ_MGM ;
 int CMD_TIME_CLASS_A ;
 int mthca_cmd_box (struct mthca_dev*,int ,int ,int,int ,int ,int ) ;

int mthca_READ_MGM(struct mthca_dev *dev, int index,
     struct mthca_mailbox *mailbox)
{
 return mthca_cmd_box(dev, 0, mailbox->dma, index, 0,
        CMD_READ_MGM, CMD_TIME_CLASS_A);
}

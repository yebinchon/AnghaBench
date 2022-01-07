
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mthca_mailbox {int dma; int * buf; } ;
struct mthca_dev {int dummy; } ;
typedef int __be32 ;


 int CMD_RESIZE_CQ ;
 int CMD_TIME_CLASS_B ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mthca_mailbox*) ;
 int MTHCA_PUT (int *,int ,int ) ;
 int PTR_ERR (struct mthca_mailbox*) ;
 int RESIZE_CQ_IN_SIZE ;
 int RESIZE_CQ_LKEY_OFFSET ;
 int RESIZE_CQ_LOG_SIZE_OFFSET ;
 int memset (int *,int ,int ) ;
 struct mthca_mailbox* mthca_alloc_mailbox (struct mthca_dev*,int ) ;
 int mthca_cmd (struct mthca_dev*,int ,int,int,int ,int ) ;
 int mthca_free_mailbox (struct mthca_dev*,struct mthca_mailbox*) ;

int mthca_RESIZE_CQ(struct mthca_dev *dev, int cq_num, u32 lkey, u8 log_size)
{
 struct mthca_mailbox *mailbox;
 __be32 *inbox;
 int err;





 mailbox = mthca_alloc_mailbox(dev, GFP_KERNEL);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);
 inbox = mailbox->buf;

 memset(inbox, 0, 0x40);




 MTHCA_PUT(inbox, log_size, 0x0c);
 MTHCA_PUT(inbox, lkey, 0x1c);

 err = mthca_cmd(dev, mailbox->dma, cq_num, 1, CMD_RESIZE_CQ,
   CMD_TIME_CLASS_B);

 mthca_free_mailbox(dev, mailbox);
 return err;
}

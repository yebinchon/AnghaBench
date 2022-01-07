
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mthca_mailbox {int dma; int * buf; } ;
struct mthca_dev {int ddr_start; int ddr_end; int mthca_flags; } ;


 int CMD_QUERY_DDR ;
 int CMD_TIME_CLASS_A ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mthca_mailbox*) ;
 int MTHCA_FLAG_DDR_HIDDEN ;
 int MTHCA_GET (int,int *,int ) ;
 int PTR_ERR (struct mthca_mailbox*) ;
 int QUERY_DDR_END_OFFSET ;
 int QUERY_DDR_INFO_HIDDEN_FLAG ;
 int QUERY_DDR_INFO_OFFSET ;
 int QUERY_DDR_START_OFFSET ;
 struct mthca_mailbox* mthca_alloc_mailbox (struct mthca_dev*,int ) ;
 int mthca_cmd_box (struct mthca_dev*,int ,int ,int ,int ,int ,int ) ;
 int mthca_dbg (struct mthca_dev*,char*,...) ;
 int mthca_free_mailbox (struct mthca_dev*,struct mthca_mailbox*) ;
 int mthca_info (struct mthca_dev*,char*,char*) ;

int mthca_QUERY_DDR(struct mthca_dev *dev)
{
 struct mthca_mailbox *mailbox;
 u8 info;
 u32 *outbox;
 int err = 0;
 mailbox = mthca_alloc_mailbox(dev, GFP_KERNEL);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);
 outbox = mailbox->buf;

 err = mthca_cmd_box(dev, 0, mailbox->dma, 0, 0, CMD_QUERY_DDR,
       CMD_TIME_CLASS_A);

 if (err)
  goto out;

 MTHCA_GET(dev->ddr_start, outbox, 0x00);
 MTHCA_GET(dev->ddr_end, outbox, 0x08);
 MTHCA_GET(info, outbox, 0x13);

 if (!!(info & (1 << 4)) !=
     !!(dev->mthca_flags & MTHCA_FLAG_DDR_HIDDEN)) {
  mthca_info(dev, "FW reports that HCA-attached memory "
      "is %s hidden; does not match PCI config\n",
      (info & (1 << 4)) ?
      "" : "not");
 }
 if (info & (1 << 4))
  mthca_dbg(dev, "HCA-attached memory is hidden.\n");

 mthca_dbg(dev, "HCA memory size %d KB (start %llx, end %llx)\n",
    (int) ((dev->ddr_end - dev->ddr_start) >> 10),
    (unsigned long long) dev->ddr_start,
    (unsigned long long) dev->ddr_end);

out:
 mthca_free_mailbox(dev, mailbox);
 return err;
}

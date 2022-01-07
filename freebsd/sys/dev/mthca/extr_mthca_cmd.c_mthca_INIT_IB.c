
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mthca_mailbox {int* buf; int dma; } ;
struct mthca_init_ib_param {int vl_cap; int port_width; int mtu_cap; int gid_cap; int pkey_cap; int guid0; int node_guid; int si_guid; scalar_t__ set_si_guid; scalar_t__ set_node_guid; scalar_t__ set_guid0; } ;
struct mthca_dev {int dummy; } ;


 int CMD_INIT_IB ;
 int CMD_TIME_CLASS_A ;
 int GFP_KERNEL ;
 int INIT_IB_FLAGS_OFFSET ;
 int INIT_IB_FLAG_G0 ;
 int INIT_IB_FLAG_NG ;
 int INIT_IB_FLAG_SIG ;
 int INIT_IB_GUID0_OFFSET ;
 int INIT_IB_IN_SIZE ;
 int INIT_IB_MAX_GID_OFFSET ;
 int INIT_IB_MAX_PKEY_OFFSET ;
 int INIT_IB_MTU_SHIFT ;
 int INIT_IB_NODE_GUID_OFFSET ;
 int INIT_IB_PORT_WIDTH_SHIFT ;
 int INIT_IB_SI_GUID_OFFSET ;
 int INIT_IB_VL_SHIFT ;
 scalar_t__ IS_ERR (struct mthca_mailbox*) ;
 int MTHCA_PUT (int*,int,int ) ;
 int PTR_ERR (struct mthca_mailbox*) ;
 int memset (int*,int ,int ) ;
 struct mthca_mailbox* mthca_alloc_mailbox (struct mthca_dev*,int ) ;
 int mthca_cmd (struct mthca_dev*,int ,int,int ,int ,int ) ;
 int mthca_free_mailbox (struct mthca_dev*,struct mthca_mailbox*) ;

int mthca_INIT_IB(struct mthca_dev *dev,
    struct mthca_init_ib_param *param,
    int port)
{
 struct mthca_mailbox *mailbox;
 u32 *inbox;
 int err;
 u32 flags;
 mailbox = mthca_alloc_mailbox(dev, GFP_KERNEL);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);
 inbox = mailbox->buf;

 memset(inbox, 0, 56);

 flags = 0;
 flags |= param->set_guid0 ? (1 << 16) : 0;
 flags |= param->set_node_guid ? (1 << 17) : 0;
 flags |= param->set_si_guid ? (1 << 18) : 0;
 flags |= param->vl_cap << 4;
 flags |= param->port_width << 8;
 flags |= param->mtu_cap << 12;
 MTHCA_PUT(inbox, flags, 0x00);

 MTHCA_PUT(inbox, param->gid_cap, 0x06);
 MTHCA_PUT(inbox, param->pkey_cap, 0x0a);
 MTHCA_PUT(inbox, param->guid0, 0x10);
 MTHCA_PUT(inbox, param->node_guid, 0x18);
 MTHCA_PUT(inbox, param->si_guid, 0x20);

 err = mthca_cmd(dev, mailbox->dma, port, 0, CMD_INIT_IB,
   CMD_TIME_CLASS_A);

 mthca_free_mailbox(dev, mailbox);
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int* vl_cap; int* port_width_cap; int* ib_mtu_cap; int* gid_table_len; int* pkey_table_len; } ;
struct mlx4_dev {int flags; TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {int* buf; int dma; } ;


 int INIT_PORT_FLAGS_OFFSET ;
 int INIT_PORT_MAX_GID_OFFSET ;
 int INIT_PORT_MAX_PKEY_OFFSET ;
 int INIT_PORT_MTU_OFFSET ;
 int INIT_PORT_PORT_WIDTH_SHIFT ;
 int INIT_PORT_VL_SHIFT ;
 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_INIT_PORT ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int MLX4_FLAG_OLD_PORT_CMDS ;
 int MLX4_PUT (int*,int,int ) ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd (struct mlx4_dev*,int ,int,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;
 int mlx4_hca_core_clock_update (struct mlx4_dev*) ;

int mlx4_INIT_PORT(struct mlx4_dev *dev, int port)
{
 struct mlx4_cmd_mailbox *mailbox;
 u32 *inbox;
 int err;
 u32 flags;
 u16 field;

 if (dev->flags & MLX4_FLAG_OLD_PORT_CMDS) {
  mailbox = mlx4_alloc_cmd_mailbox(dev);
  if (IS_ERR(mailbox))
   return PTR_ERR(mailbox);
  inbox = mailbox->buf;

  flags = 0;
  flags |= (dev->caps.vl_cap[port] & 0xf) << 4;
  flags |= (dev->caps.port_width_cap[port] & 0xf) << 8;
  MLX4_PUT(inbox, flags, 0x00);

  field = 128 << dev->caps.ib_mtu_cap[port];
  MLX4_PUT(inbox, field, 0x04);
  field = dev->caps.gid_table_len[port];
  MLX4_PUT(inbox, field, 0x06);
  field = dev->caps.pkey_table_len[port];
  MLX4_PUT(inbox, field, 0x0a);

  err = mlx4_cmd(dev, mailbox->dma, port, 0, MLX4_CMD_INIT_PORT,
          MLX4_CMD_TIME_CLASS_A, MLX4_CMD_NATIVE);

  mlx4_free_cmd_mailbox(dev, mailbox);
 } else
  err = mlx4_cmd(dev, 0, port, 0, MLX4_CMD_INIT_PORT,
          MLX4_CMD_TIME_CLASS_A, MLX4_CMD_WRAPPED);

 if (!err)
  mlx4_hca_core_clock_update(dev);

 return err;
}

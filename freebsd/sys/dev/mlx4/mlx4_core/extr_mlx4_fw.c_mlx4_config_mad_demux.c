
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags2; } ;
struct mlx4_dev {int flags; TYPE_1__ caps; } ;
struct mlx4_cmd_mailbox {int dma; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_MAD_DEMUX ;
 int MLX4_CMD_MAD_DEMUX_CONFIG ;
 int MLX4_CMD_MAD_DEMUX_QUERY_RESTR ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_DEV_CAP_FLAG2_MAD_DEMUX ;
 int MLX4_FLAG_SECURE_HOST ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 scalar_t__ mlx4_check_smp_firewall_active (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;
 int mlx4_cmd (struct mlx4_dev*,int ,int,int ,int ,int ,int ) ;
 int mlx4_cmd_box (struct mlx4_dev*,int ,int ,int,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;
 int mlx4_warn (struct mlx4_dev*,char*,...) ;

int mlx4_config_mad_demux(struct mlx4_dev *dev)
{
 struct mlx4_cmd_mailbox *mailbox;
 int err;


 if (!(dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_MAD_DEMUX))
  return 0;

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox)) {
  mlx4_warn(dev, "Failed to allocate mailbox for cmd MAD_DEMUX");
  return -ENOMEM;
 }


 err = mlx4_cmd_box(dev, 0, mailbox->dma, 0x01 ,
      MLX4_CMD_MAD_DEMUX_QUERY_RESTR, MLX4_CMD_MAD_DEMUX,
      MLX4_CMD_TIME_CLASS_B, MLX4_CMD_NATIVE);
 if (err) {
  mlx4_warn(dev, "MLX4_CMD_MAD_DEMUX: query restrictions failed (%d)\n",
     err);
  goto out;
 }

 if (mlx4_check_smp_firewall_active(dev, mailbox))
  dev->flags |= MLX4_FLAG_SECURE_HOST;


 err = mlx4_cmd(dev, mailbox->dma, 0x01 ,
         MLX4_CMD_MAD_DEMUX_CONFIG, MLX4_CMD_MAD_DEMUX,
         MLX4_CMD_TIME_CLASS_B, MLX4_CMD_NATIVE);
 if (err) {
  mlx4_warn(dev, "MLX4_CMD_MAD_DEMUX: configure failed (%d)\n", err);
  goto out;
 }

 if (dev->flags & MLX4_FLAG_SECURE_HOST)
  mlx4_warn(dev, "HCA operating in secure-host mode. SMP firewall activated.\n");
out:
 mlx4_free_cmd_mailbox(dev, mailbox);
 return err;
}

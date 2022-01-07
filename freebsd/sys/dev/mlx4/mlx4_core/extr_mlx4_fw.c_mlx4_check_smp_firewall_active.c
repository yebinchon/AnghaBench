
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int buf; } ;


 int MLX4_CMD_MAD_DEMUX_GETRESP_ATTR_OFFSET ;
 int MLX4_CMD_MAD_DEMUX_SET_ATTR_OFFSET ;
 int MLX4_CMD_MAD_DEMUX_TRAP_ATTR_OFFSET ;
 int MLX4_CMD_MAD_DEMUX_TRAP_REPRESS_ATTR_OFFSET ;
 int MLX4_GET (scalar_t__,int ,int ) ;
 int mlx4_dbg (struct mlx4_dev*,char*,scalar_t__) ;

__attribute__((used)) static int mlx4_check_smp_firewall_active(struct mlx4_dev *dev,
       struct mlx4_cmd_mailbox *mailbox)
{





 u32 set_attr_mask, getresp_attr_mask;
 u32 trap_attr_mask, traprepress_attr_mask;

 MLX4_GET(set_attr_mask, mailbox->buf,
   0x10);
 mlx4_dbg(dev, "SMP firewall set_attribute_mask = 0x%x\n",
   set_attr_mask);

 MLX4_GET(getresp_attr_mask, mailbox->buf,
   0x20);
 mlx4_dbg(dev, "SMP firewall getresp_attribute_mask = 0x%x\n",
   getresp_attr_mask);

 MLX4_GET(trap_attr_mask, mailbox->buf,
   0x40);
 mlx4_dbg(dev, "SMP firewall trap_attribute_mask = 0x%x\n",
   trap_attr_mask);

 MLX4_GET(traprepress_attr_mask, mailbox->buf,
   0x70);
 mlx4_dbg(dev, "SMP firewall traprepress_attribute_mask = 0x%x\n",
   traprepress_attr_mask);

 if (set_attr_mask && getresp_attr_mask && trap_attr_mask &&
     traprepress_attr_mask)
  return 1;

 return 0;
}

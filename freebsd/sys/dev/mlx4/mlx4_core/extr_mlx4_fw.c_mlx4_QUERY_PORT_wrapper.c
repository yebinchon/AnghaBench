
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct mlx4_vhcr {int in_modifier; scalar_t__ op_modifier; } ;
struct TYPE_10__ {TYPE_3__* vf_oper; } ;
struct TYPE_11__ {TYPE_4__ master; } ;
struct mlx4_priv {TYPE_5__ mfunc; } ;
struct mlx4_port_cap {int link_state; } ;
struct TYPE_12__ {int function; int* port_type; int* pkey_table_len; } ;
struct mlx4_dev {TYPE_6__ caps; } ;
struct mlx4_cmd_mailbox {int buf; int dma; } ;
struct mlx4_cmd_info {int dummy; } ;
struct TYPE_9__ {TYPE_2__* vport; } ;
struct TYPE_7__ {int mac; } ;
struct TYPE_8__ {TYPE_1__ state; } ;


 int EINVAL ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_QUERY_PORT ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_GET (int,int ,int ) ;
 int MLX4_PORT_LINK_UP_MASK ;
 int MLX4_PORT_TYPE_ETH ;
 int MLX4_PUT (int ,int,int ) ;
 int MLX4_VF_PORT_NO_LINK_SENSE_MASK ;
 int QUERY_PORT_CUR_MAX_GID_OFFSET ;
 int QUERY_PORT_CUR_MAX_PKEY_OFFSET ;
 int QUERY_PORT_MAC_OFFSET ;
 int QUERY_PORT_SUPPORTED_TYPE_OFFSET ;
 int mlx4_QUERY_PORT (struct mlx4_dev*,int,struct mlx4_port_cap*) ;
 int mlx4_cmd_box (struct mlx4_dev*,int ,int ,int,int ,int ,int ,int ) ;
 int mlx4_get_slave_num_gids (struct mlx4_dev*,int,int) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_slave_convert_port (struct mlx4_dev*,int,int) ;

int mlx4_QUERY_PORT_wrapper(struct mlx4_dev *dev, int slave,
       struct mlx4_vhcr *vhcr,
       struct mlx4_cmd_mailbox *inbox,
       struct mlx4_cmd_mailbox *outbox,
       struct mlx4_cmd_info *cmd)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 u64 def_mac;
 u8 port_type;
 u16 short_field;
 int err;
 int port = mlx4_slave_convert_port(dev, slave,
        vhcr->in_modifier & 0xFF);






 if (port < 0)
  return -EINVAL;




 if (vhcr->op_modifier || vhcr->in_modifier & ~0xFF)
  return -EINVAL;

 vhcr->in_modifier = port;

 err = mlx4_cmd_box(dev, 0, outbox->dma, vhcr->in_modifier, 0,
      MLX4_CMD_QUERY_PORT, MLX4_CMD_TIME_CLASS_B,
      MLX4_CMD_NATIVE);

 if (!err && dev->caps.function != slave) {
  def_mac = priv->mfunc.master.vf_oper[slave].vport[vhcr->in_modifier].state.mac;
  MLX4_PUT(outbox->buf, def_mac, QUERY_PORT_MAC_OFFSET);


  MLX4_GET(port_type, outbox->buf,
    QUERY_PORT_SUPPORTED_TYPE_OFFSET);


  port_type &= 0xE0;

  port_type |= (dev->caps.port_type[vhcr->in_modifier] & 0x3);

  if (0 )
   port_type |= 0x80;
  else if (1 )
   port_type &= ~0x80;
  else if (0 ) {
   int other_port = (port == 1) ? 2 : 1;
   struct mlx4_port_cap port_cap;

   err = mlx4_QUERY_PORT(dev, other_port, &port_cap);
   if (err)
    goto out;
   port_type |= (port_cap.link_state << 7);
  }

  MLX4_PUT(outbox->buf, port_type,
    QUERY_PORT_SUPPORTED_TYPE_OFFSET);

  if (dev->caps.port_type[vhcr->in_modifier] == MLX4_PORT_TYPE_ETH)
   short_field = mlx4_get_slave_num_gids(dev, slave, port);
  else
   short_field = 1;
  MLX4_PUT(outbox->buf, short_field,
    0x0e);

  short_field = dev->caps.pkey_table_len[vhcr->in_modifier];
  MLX4_PUT(outbox->buf, short_field,
    0x0c);
 }
out:
 return err;
}

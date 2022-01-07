
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mlx4_en_query_port_context {int link_up; int link_speed; int autoneg; int transceiver; } ;
struct mlx4_en_port_state {int link_state; int link_speed; int flags; int transceiver; } ;
struct mlx4_en_priv {struct mlx4_en_port_state port_state; } ;
struct mlx4_en_dev {int dev; int * pndev; } ;
struct mlx4_cmd_mailbox {struct mlx4_en_query_port_context* buf; int dma; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_QUERY_PORT ;
 int MLX4_CMD_TIME_CLASS_B ;
 int MLX4_CMD_WRAPPED ;







 int MLX4_EN_ANC_MASK ;
 int MLX4_EN_AUTONEG_MASK ;
 int MLX4_EN_LINK_UP_MASK ;
 int MLX4_EN_PORT_ANC ;
 int MLX4_EN_PORT_ANE ;
 int MLX4_EN_SPEED_MASK ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (int ) ;
 int mlx4_cmd_box (int ,int ,int ,size_t,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (int ,struct mlx4_cmd_mailbox*) ;
 struct mlx4_en_priv* netdev_priv (int ) ;

int mlx4_en_QUERY_PORT(struct mlx4_en_dev *mdev, u8 port)
{
 struct mlx4_en_query_port_context *qport_context;
 struct mlx4_en_priv *priv = netdev_priv(mdev->pndev[port]);
 struct mlx4_en_port_state *state = &priv->port_state;
 struct mlx4_cmd_mailbox *mailbox;
 int err;

 mailbox = mlx4_alloc_cmd_mailbox(mdev->dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);
 err = mlx4_cmd_box(mdev->dev, 0, mailbox->dma, port, 0,
      MLX4_CMD_QUERY_PORT, MLX4_CMD_TIME_CLASS_B,
      MLX4_CMD_WRAPPED);
 if (err)
  goto out;
 qport_context = mailbox->buf;



 state->link_state = !!(qport_context->link_up & MLX4_EN_LINK_UP_MASK);
 switch (qport_context->link_speed & MLX4_EN_SPEED_MASK) {
 case 134:
  state->link_speed = 100;
  break;
 case 131:
  state->link_speed = 1000;
  break;
 case 133:
 case 132:
  state->link_speed = 10000;
  break;
 case 130:
  state->link_speed = 20000;
  break;
 case 129:
  state->link_speed = 40000;
  break;
 case 128:
  state->link_speed = 56000;
  break;
 default:
  state->link_speed = -1;
  break;
 }

 state->transceiver = qport_context->transceiver;

 state->flags = 0;
 state->flags |= (qport_context->link_up & MLX4_EN_ANC_MASK) ?
  MLX4_EN_PORT_ANC : 0;
 state->flags |= (qport_context->autoneg & MLX4_EN_AUTONEG_MASK) ?
  MLX4_EN_PORT_ANE : 0;

out:
 mlx4_free_cmd_mailbox(mdev->dev, mailbox);
 return err;
}

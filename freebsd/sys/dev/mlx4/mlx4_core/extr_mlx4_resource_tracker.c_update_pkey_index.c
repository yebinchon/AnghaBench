
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx4_priv {int*** virt2phys_pkey; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {scalar_t__ buf; } ;


 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;

__attribute__((used)) static void update_pkey_index(struct mlx4_dev *dev, int slave,
         struct mlx4_cmd_mailbox *inbox)
{
 u8 sched = *(u8 *)(inbox->buf + 64);
 u8 orig_index = *(u8 *)(inbox->buf + 35);
 u8 new_index;
 struct mlx4_priv *priv = mlx4_priv(dev);
 int port;

 port = (sched >> 6 & 1) + 1;

 new_index = priv->virt2phys_pkey[slave][port - 1][orig_index];
 *(u8 *)(inbox->buf + 35) = new_index;
}

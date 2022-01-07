
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct mlx4_slave_state {int old_vlan_api; } ;
struct TYPE_3__ {struct mlx4_slave_state* slave_state; } ;
struct TYPE_4__ {TYPE_1__ master; } ;
struct mlx4_priv {TYPE_2__ mfunc; } ;
struct mlx4_dev {int dummy; } ;


 int EINVAL ;

 int __mlx4_unregister_vlan (struct mlx4_dev*,int,int ) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_slave_convert_port (struct mlx4_dev*,int,int) ;
 int vlan_del_from_slave (struct mlx4_dev*,int,int ,int) ;

__attribute__((used)) static int vlan_free_res(struct mlx4_dev *dev, int slave, int op, int cmd,
       u64 in_param, u64 *out_param, int port)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_slave_state *slave_state = priv->mfunc.master.slave_state;
 int err = 0;

 port = mlx4_slave_convert_port(
   dev, slave, port);

 if (port < 0)
  return -EINVAL;
 switch (op) {
 case 128:
  if (slave_state[slave].old_vlan_api)
   return 0;
  if (!port)
   return -EINVAL;
  vlan_del_from_slave(dev, slave, in_param, port);
  __mlx4_unregister_vlan(dev, port, in_param);
  break;
 default:
  err = -EINVAL;
  break;
 }

 return err;
}

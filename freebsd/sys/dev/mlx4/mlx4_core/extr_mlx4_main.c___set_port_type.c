
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_priv {int port_mutex; TYPE_2__* port; } ;
struct mlx4_port_info {size_t port; int tmp_type; struct mlx4_dev* dev; } ;
struct TYPE_3__ {int* supported_type; int* possible_type; int num_ports; int* port_type; int flags; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
typedef enum mlx4_port_type { ____Placeholder_mlx4_port_type } mlx4_port_type ;
struct TYPE_4__ {int tmp_type; } ;


 int EINVAL ;
 int MLX4_DEV_CAP_FLAG_DPDP ;
 int MLX4_DEV_CAP_FLAG_SENSE_SUPPORT ;
 int MLX4_MAX_PORTS ;
 int MLX4_PORT_TYPE_AUTO ;
 int mlx4_change_port_types (struct mlx4_dev*,int*) ;
 int mlx4_check_port_params (struct mlx4_dev*,int*) ;
 int mlx4_do_sense_ports (struct mlx4_dev*,int*,int*) ;
 int mlx4_err (struct mlx4_dev*,char*,...) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_start_sense (struct mlx4_dev*) ;
 int mlx4_stop_sense (struct mlx4_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int __set_port_type(struct mlx4_port_info *info,
      enum mlx4_port_type port_type)
{
 struct mlx4_dev *mdev = info->dev;
 struct mlx4_priv *priv = mlx4_priv(mdev);
 enum mlx4_port_type types[MLX4_MAX_PORTS];
 enum mlx4_port_type new_types[MLX4_MAX_PORTS];
 int i;
 int err = 0;

 if ((port_type & mdev->caps.supported_type[info->port]) != port_type) {
  mlx4_err(mdev,
    "Requested port type for port %d is not supported on this HCA\n",
    info->port);
  err = -EINVAL;
  goto err_sup;
 }

 mlx4_stop_sense(mdev);
 mutex_lock(&priv->port_mutex);
 info->tmp_type = port_type;


 mdev->caps.possible_type[info->port] = info->tmp_type;

 for (i = 0; i < mdev->caps.num_ports; i++) {
  types[i] = priv->port[i+1].tmp_type ? priv->port[i+1].tmp_type :
     mdev->caps.possible_type[i+1];
  if (types[i] == MLX4_PORT_TYPE_AUTO)
   types[i] = mdev->caps.port_type[i+1];
 }

 if (!(mdev->caps.flags & MLX4_DEV_CAP_FLAG_DPDP) &&
     !(mdev->caps.flags & MLX4_DEV_CAP_FLAG_SENSE_SUPPORT)) {
  for (i = 1; i <= mdev->caps.num_ports; i++) {
   if (mdev->caps.possible_type[i] == MLX4_PORT_TYPE_AUTO) {
    mdev->caps.possible_type[i] = mdev->caps.port_type[i];
    err = -EINVAL;
   }
  }
 }
 if (err) {
  mlx4_err(mdev, "Auto sensing is not supported on this HCA. Set only 'eth' or 'ib' for both ports (should be the same)\n");
  goto out;
 }

 mlx4_do_sense_ports(mdev, new_types, types);

 err = mlx4_check_port_params(mdev, new_types);
 if (err)
  goto out;




 for (i = 0; i < mdev->caps.num_ports; i++)
  priv->port[i + 1].tmp_type = 0;

 err = mlx4_change_port_types(mdev, new_types);

out:
 mutex_unlock(&priv->port_mutex);
 mlx4_start_sense(mdev);
err_sup:
 return err;
}

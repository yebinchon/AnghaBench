
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_vport_qos_param {int max_avg_bw; int enable; } ;
struct mlx4_qos_manager {int num_of_qos_vfs; int priority_bm; } ;
struct TYPE_3__ {struct mlx4_qos_manager* qos_ctl; } ;
struct TYPE_4__ {TYPE_1__ master; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_priv {TYPE_2__ mfunc; struct mlx4_dev dev; } ;


 int EINVAL ;
 int MLX4_NUM_UP ;
 int memset (struct mlx4_vport_qos_param*,int ,int) ;
 int mlx4_SET_VPORT_QOS_get (struct mlx4_dev*,int,int ,struct mlx4_vport_qos_param*) ;
 int mlx4_SET_VPORT_QOS_set (struct mlx4_dev*,int,int,struct mlx4_vport_qos_param*) ;
 int mlx4_info (struct mlx4_dev*,char*,...) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static int mlx4_set_vport_qos(struct mlx4_priv *priv, int slave, int port,
         int max_tx_rate)
{
 int i;
 int err;
 struct mlx4_qos_manager *port_qos;
 struct mlx4_dev *dev = &priv->dev;
 struct mlx4_vport_qos_param vpp_qos[MLX4_NUM_UP];

 port_qos = &priv->mfunc.master.qos_ctl[port];
 memset(vpp_qos, 0, sizeof(struct mlx4_vport_qos_param) * MLX4_NUM_UP);

 if (slave > port_qos->num_of_qos_vfs) {
  mlx4_info(dev, "No availible VPP resources for this VF\n");
  return -EINVAL;
 }


 err = mlx4_SET_VPORT_QOS_get(dev, port, 0, vpp_qos);
 if (err) {
  mlx4_info(dev, "Failed to query Vport 0 QoS values\n");
  return err;
 }

 for (i = 0; i < MLX4_NUM_UP; i++) {
  if (test_bit(i, port_qos->priority_bm) && max_tx_rate) {
   vpp_qos[i].max_avg_bw = max_tx_rate;
   vpp_qos[i].enable = 1;
  } else {




   vpp_qos[i].enable = 0;
  }
 }

 err = mlx4_SET_VPORT_QOS_set(dev, port, slave, vpp_qos);
 if (err) {
  mlx4_info(dev, "Failed to set Vport %d QoS values\n", slave);
  return err;
 }

 return 0;
}

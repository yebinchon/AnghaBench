
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct net_device {int dummy; } ;
struct mlx4_update_qp_params {int smac_index; } ;
struct TYPE_6__ {scalar_t__ smac; int smac_port; int smac_index; } ;
struct TYPE_5__ {int qpn; } ;
struct mlx4_ib_qp {int mutex; TYPE_3__ pri; TYPE_2__ mqp; } ;
struct TYPE_4__ {int * mac; } ;
struct mlx4_ib_dev {int * qp1_proxy_lock; int dev; struct mlx4_ib_qp** qp1_proxy; TYPE_1__ iboe; } ;


 int IF_LLADDR (struct net_device*) ;
 scalar_t__ MLX4_IB_INVALID_MAC ;
 int MLX4_UPDATE_QP_SMAC ;
 int atomic64_set (int *,scalar_t__) ;
 int mlx4_is_mfunc (int ) ;
 scalar_t__ mlx4_mac_to_u64 (int ) ;
 int mlx4_register_mac (int ,int,scalar_t__) ;
 int mlx4_unregister_mac (int ,int,scalar_t__) ;
 scalar_t__ mlx4_update_qp (int ,int ,int ,struct mlx4_update_qp_params*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mlx4_ib_update_qps(struct mlx4_ib_dev *ibdev,
          struct net_device *dev,
          int port)
{
 u64 new_smac = 0;
 u64 release_mac = MLX4_IB_INVALID_MAC;
 struct mlx4_ib_qp *qp;

 new_smac = mlx4_mac_to_u64(IF_LLADDR(dev));

 atomic64_set(&ibdev->iboe.mac[port - 1], new_smac);


 if (!mlx4_is_mfunc(ibdev->dev))
  return;

 mutex_lock(&ibdev->qp1_proxy_lock[port - 1]);
 qp = ibdev->qp1_proxy[port - 1];
 if (qp) {
  int new_smac_index;
  u64 old_smac;
  struct mlx4_update_qp_params update_params;

  mutex_lock(&qp->mutex);
  old_smac = qp->pri.smac;
  if (new_smac == old_smac)
   goto unlock;

  new_smac_index = mlx4_register_mac(ibdev->dev, port, new_smac);

  if (new_smac_index < 0)
   goto unlock;

  update_params.smac_index = new_smac_index;
  if (mlx4_update_qp(ibdev->dev, qp->mqp.qpn, MLX4_UPDATE_QP_SMAC,
       &update_params)) {
   release_mac = new_smac;
   goto unlock;
  }

  if (qp->pri.smac_port)
   release_mac = old_smac;
  qp->pri.smac = new_smac;
  qp->pri.smac_port = port;
  qp->pri.smac_index = new_smac_index;
 }

unlock:
 if (release_mac != MLX4_IB_INVALID_MAC)
  mlx4_unregister_mac(ibdev->dev, port, release_mac);
 if (qp)
  mutex_unlock(&qp->mutex);
 mutex_unlock(&ibdev->qp1_proxy_lock[port - 1]);
}

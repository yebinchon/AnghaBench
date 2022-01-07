
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_gsi_qp {int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int setup_qps (struct mlx5_ib_gsi_qp*) ;

void mlx5_ib_gsi_pkey_change(struct mlx5_ib_gsi_qp *gsi)
{
 if (!gsi)
  return;

 mutex_lock(&gsi->mutex);
 setup_qps(gsi);
 mutex_unlock(&gsi->mutex);
}

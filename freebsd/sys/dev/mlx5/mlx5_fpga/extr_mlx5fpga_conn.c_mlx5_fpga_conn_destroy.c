
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5_fpga_device {struct mlx5_core_dev* mdev; } ;
struct TYPE_6__ {int active; int sgid_index; int mqp; } ;
struct TYPE_4__ {int irqn; } ;
struct TYPE_5__ {TYPE_1__ mcq; int tasklet; } ;
struct mlx5_fpga_conn {TYPE_3__ qp; struct mlx5_fpga_device* fdev; int fpga_qpn; TYPE_2__ cq; } ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5_CMD_OP_2ERR_QP ;
 int kfree (struct mlx5_fpga_conn*) ;
 int mlx5_core_qp_modify (struct mlx5_core_dev*,int ,int ,int *,int *) ;
 int mlx5_core_reserved_gid_free (struct mlx5_core_dev*,int ) ;
 int mlx5_core_roce_gid_set (struct mlx5_core_dev*,int ,int ,int ,int *,int *,int,int ) ;
 int mlx5_fpga_conn_destroy_cq (struct mlx5_fpga_conn*) ;
 int mlx5_fpga_conn_destroy_qp (struct mlx5_fpga_conn*) ;
 int mlx5_fpga_destroy_qp (struct mlx5_core_dev*,int ) ;
 int mlx5_fpga_warn (struct mlx5_fpga_device*,char*,int) ;
 int synchronize_irq (int ) ;
 int tasklet_disable (int *) ;

void mlx5_fpga_conn_destroy(struct mlx5_fpga_conn *conn)
{
 struct mlx5_fpga_device *fdev = conn->fdev;
 struct mlx5_core_dev *mdev = fdev->mdev;
 int err = 0;

 conn->qp.active = 0;
 tasklet_disable(&conn->cq.tasklet);
 synchronize_irq(conn->cq.mcq.irqn);

 mlx5_fpga_destroy_qp(conn->fdev->mdev, conn->fpga_qpn);
 err = mlx5_core_qp_modify(mdev, MLX5_CMD_OP_2ERR_QP, 0, ((void*)0),
      &conn->qp.mqp);
 if (err)
  mlx5_fpga_warn(fdev, "qp_modify 2ERR failed: %d\n", err);
 mlx5_fpga_conn_destroy_qp(conn);
 mlx5_fpga_conn_destroy_cq(conn);

 mlx5_core_roce_gid_set(conn->fdev->mdev, conn->qp.sgid_index, 0, 0,
          ((void*)0), ((void*)0), 0, 0);
 mlx5_core_reserved_gid_free(conn->fdev->mdev, conn->qp.sgid_index);
 kfree(conn);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int wq_ctrl; int mcq; int tasklet; } ;
struct mlx5_fpga_conn {TYPE_2__ cq; TYPE_1__* fdev; } ;
struct TYPE_3__ {int mdev; } ;


 int mlx5_core_destroy_cq (int ,int *) ;
 int mlx5_cqwq_destroy (int *) ;
 int tasklet_disable (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void mlx5_fpga_conn_destroy_cq(struct mlx5_fpga_conn *conn)
{
 tasklet_disable(&conn->cq.tasklet);
 tasklet_kill(&conn->cq.tasklet);
 mlx5_core_destroy_cq(conn->fdev->mdev, &conn->cq.mcq);
 mlx5_cqwq_destroy(&conn->cq.wq_ctrl);
}

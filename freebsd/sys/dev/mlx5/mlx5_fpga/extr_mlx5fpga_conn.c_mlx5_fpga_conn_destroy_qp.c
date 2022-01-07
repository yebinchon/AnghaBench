
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int bufs; } ;
struct TYPE_6__ {int bufs; } ;
struct TYPE_8__ {int wq_ctrl; TYPE_3__ rq; TYPE_2__ sq; int mqp; } ;
struct mlx5_fpga_conn {TYPE_4__ qp; TYPE_1__* fdev; } ;
struct TYPE_5__ {int mdev; } ;


 int kvfree (int ) ;
 int mlx5_core_destroy_qp (int ,int *) ;
 int mlx5_fpga_conn_flush_send_bufs (struct mlx5_fpga_conn*) ;
 int mlx5_fpga_conn_free_recv_bufs (struct mlx5_fpga_conn*) ;
 int mlx5_wq_destroy (int *) ;

__attribute__((used)) static void mlx5_fpga_conn_destroy_qp(struct mlx5_fpga_conn *conn)
{
 mlx5_core_destroy_qp(conn->fdev->mdev, &conn->qp.mqp);
 mlx5_fpga_conn_free_recv_bufs(conn);
 mlx5_fpga_conn_flush_send_bufs(conn);
 kvfree(conn->qp.sq.bufs);
 kvfree(conn->qp.rq.bufs);
 mlx5_wq_destroy(&conn->qp.wq_ctrl);
}

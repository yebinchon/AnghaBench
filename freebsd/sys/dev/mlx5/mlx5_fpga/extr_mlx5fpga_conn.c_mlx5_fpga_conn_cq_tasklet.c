
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active; } ;
struct mlx5_fpga_conn {TYPE_1__ qp; } ;


 int MLX5_FPGA_CQ_BUDGET ;
 int mlx5_fpga_conn_cqes (struct mlx5_fpga_conn*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mlx5_fpga_conn_cq_tasklet(unsigned long data)
{
 struct mlx5_fpga_conn *conn = (void *)data;

 if (unlikely(!conn->qp.active))
  return;
 mlx5_fpga_conn_cqes(conn, MLX5_FPGA_CQ_BUDGET);
}

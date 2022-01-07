
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_dma_buf {int dummy; } ;
struct mlx5_fpga_conn {int dummy; } ;


 int mlx5_fpga_conn_send (struct mlx5_fpga_conn*,struct mlx5_fpga_dma_buf*) ;

int mlx5_fpga_sbu_conn_sendmsg(struct mlx5_fpga_conn *conn,
          struct mlx5_fpga_dma_buf *buf)
{




 return (0);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_fpga_dma_buf {int dma_dir; TYPE_1__* sg; } ;
struct mlx5_fpga_conn {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; void* data; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 scalar_t__ MLX5_FPGA_RECV_SIZE ;
 int kfree (struct mlx5_fpga_dma_buf*) ;
 struct mlx5_fpga_dma_buf* kzalloc (scalar_t__,int ) ;
 int mlx5_fpga_conn_post_recv (struct mlx5_fpga_conn*,struct mlx5_fpga_dma_buf*) ;

__attribute__((used)) static int mlx5_fpga_conn_post_recv_buf(struct mlx5_fpga_conn *conn)
{
 struct mlx5_fpga_dma_buf *buf;
 int err;

 buf = kzalloc(sizeof(*buf) + MLX5_FPGA_RECV_SIZE, 0);
 if (!buf)
  return -ENOMEM;

 buf->sg[0].data = (void *)(buf + 1);
 buf->sg[0].size = MLX5_FPGA_RECV_SIZE;
 buf->dma_dir = DMA_FROM_DEVICE;

 err = mlx5_fpga_conn_post_recv(conn, buf);
 if (err)
  kfree(buf);

 return err;
}

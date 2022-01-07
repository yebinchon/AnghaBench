
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_fpga_dma_buf {TYPE_3__* sg; } ;
struct TYPE_4__ {int size; int cc; struct mlx5_fpga_dma_buf** bufs; } ;
struct TYPE_5__ {int active; TYPE_1__ rq; } ;
struct mlx5_fpga_conn {int fdev; int cb_arg; int (* recv_cb ) (int ,struct mlx5_fpga_dma_buf*) ;TYPE_2__ qp; int fpga_qpn; } ;
struct mlx5_cqe64 {int byte_cnt; int wqe_counter; } ;
struct TYPE_6__ {int size; } ;


 int MLX5_CQE_SYNDROME_WR_FLUSH_ERR ;
 int MLX5_FPGA_RECV_SIZE ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int kfree (struct mlx5_fpga_dma_buf*) ;
 int mlx5_fpga_conn_post_recv (struct mlx5_fpga_conn*,struct mlx5_fpga_dma_buf*) ;
 int mlx5_fpga_conn_unmap_buf (struct mlx5_fpga_conn*,struct mlx5_fpga_dma_buf*) ;
 int mlx5_fpga_dbg (int ,char*,struct mlx5_fpga_dma_buf*,...) ;
 int mlx5_fpga_warn (int ,char*,...) ;
 int stub1 (int ,struct mlx5_fpga_dma_buf*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mlx5_fpga_conn_rq_cqe(struct mlx5_fpga_conn *conn,
      struct mlx5_cqe64 *cqe, u8 status)
{
 struct mlx5_fpga_dma_buf *buf;
 int ix, err;

 ix = be16_to_cpu(cqe->wqe_counter) & (conn->qp.rq.size - 1);
 buf = conn->qp.rq.bufs[ix];
 conn->qp.rq.bufs[ix] = ((void*)0);
 if (!status)
  buf->sg[0].size = be32_to_cpu(cqe->byte_cnt);
 conn->qp.rq.cc++;

 if (unlikely(status && (status != MLX5_CQE_SYNDROME_WR_FLUSH_ERR)))
  mlx5_fpga_warn(conn->fdev, "RQ buf %p on FPGA QP %u completion status %d\n",
          buf, conn->fpga_qpn, status);
 else
  mlx5_fpga_dbg(conn->fdev, "RQ buf %p on FPGA QP %u completion status %d\n",
         buf, conn->fpga_qpn, status);

 mlx5_fpga_conn_unmap_buf(conn, buf);

 if (unlikely(status || !conn->qp.active)) {
  conn->qp.active = 0;
  kfree(buf);
  return;
 }

 mlx5_fpga_dbg(conn->fdev, "Message with %u bytes received successfully\n",
        buf->sg[0].size);
 conn->recv_cb(conn->cb_arg, buf);

 buf->sg[0].size = MLX5_FPGA_RECV_SIZE;
 err = mlx5_fpga_conn_post_recv(conn, buf);
 if (unlikely(err)) {
  mlx5_fpga_warn(conn->fdev,
          "Failed to re-post recv buf: %d\n", err);
  kfree(buf);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_fpga_dma_buf {int list; } ;
struct TYPE_3__ {scalar_t__ pc; scalar_t__ cc; scalar_t__ size; int lock; int backlog; } ;
struct TYPE_4__ {TYPE_1__ sq; int active; } ;
struct mlx5_fpga_conn {TYPE_2__ qp; } ;


 int ENOTCONN ;
 int list_add_tail (int *,int *) ;
 int mlx5_fpga_conn_map_buf (struct mlx5_fpga_conn*,struct mlx5_fpga_dma_buf*) ;
 int mlx5_fpga_conn_post_send (struct mlx5_fpga_conn*,struct mlx5_fpga_dma_buf*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int mlx5_fpga_conn_send(struct mlx5_fpga_conn *conn,
   struct mlx5_fpga_dma_buf *buf)
{
 unsigned long flags;
 int err;

 if (!conn->qp.active)
  return -ENOTCONN;

 err = mlx5_fpga_conn_map_buf(conn, buf);
 if (err)
  return err;

 spin_lock_irqsave(&conn->qp.sq.lock, flags);

 if (conn->qp.sq.pc - conn->qp.sq.cc >= conn->qp.sq.size) {
  list_add_tail(&buf->list, &conn->qp.sq.backlog);
  goto out_unlock;
 }

 mlx5_fpga_conn_post_send(conn, buf);

out_unlock:
 spin_unlock_irqrestore(&conn->qp.sq.lock, flags);
 return err;
}

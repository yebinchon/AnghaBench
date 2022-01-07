
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int complete; TYPE_1__* sg; } ;
typedef TYPE_2__ u32 ;
struct mlx5_fpga_transaction {int size; scalar_t__ direction; TYPE_2__* data; int addr; int complete1; struct mlx5_fpga_conn* conn; } ;
struct mlx5_fpga_trans_priv {int tid; TYPE_2__ buf; int state; TYPE_2__* header; struct mlx5_fpga_transaction const* user_trans; } ;
struct mlx5_fpga_conn {TYPE_3__* fdev; } ;
struct TYPE_13__ {int shell_conn; } ;
struct TYPE_11__ {int size; TYPE_2__* data; } ;


 int EBUSY ;
 int EINVAL ;
 int MLX5_FPGA_SHELL_QP_PACKET_TYPE_DDR_READ ;
 int MLX5_FPGA_SHELL_QP_PACKET_TYPE_DDR_WRITE ;
 scalar_t__ MLX5_FPGA_WRITE ;
 int MLX5_SET (int ,TYPE_2__*,int ,int) ;
 int MLX5_SET64 (int ,TYPE_2__*,int ,int ) ;
 int TRANS_STATE_SEND ;
 int address ;
 struct mlx5_fpga_trans_priv* alloc_tid (TYPE_3__*) ;
 int fpga_shell_qp_packet ;
 int free_tid (TYPE_3__*,struct mlx5_fpga_trans_priv*) ;
 int len ;
 int memset (TYPE_2__*,int ,int) ;
 int mlx5_fpga_conn_send (int ,TYPE_2__*) ;
 int mlx5_fpga_warn (TYPE_3__*,char*) ;
 int tid ;
 int trans_send_complete ;
 int trans_validate (TYPE_3__*,int ,int) ;
 int type ;

int mlx5_fpga_trans_exec(const struct mlx5_fpga_transaction *trans)
{
 struct mlx5_fpga_conn *conn = trans->conn;
 struct mlx5_fpga_trans_priv *trans_priv;
 u32 *header;
 int err;

 if (!trans->complete1) {
  mlx5_fpga_warn(conn->fdev, "Transaction must have a completion callback\n");
  err = -EINVAL;
  goto out;
 }

 err = trans_validate(conn->fdev, trans->addr, trans->size);
 if (err)
  goto out;

 trans_priv = alloc_tid(conn->fdev);
 if (!trans_priv) {
  err = -EBUSY;
  goto out;
 }
 trans_priv->user_trans = trans;
 header = trans_priv->header;

 memset(header, 0, sizeof(trans_priv->header));
 memset(&trans_priv->buf, 0, sizeof(trans_priv->buf));
 MLX5_SET(fpga_shell_qp_packet, header, type,
   (trans->direction == MLX5_FPGA_WRITE) ?
   MLX5_FPGA_SHELL_QP_PACKET_TYPE_DDR_WRITE :
   MLX5_FPGA_SHELL_QP_PACKET_TYPE_DDR_READ);
 MLX5_SET(fpga_shell_qp_packet, header, tid, trans_priv->tid);
 MLX5_SET(fpga_shell_qp_packet, header, len, trans->size);
 MLX5_SET64(fpga_shell_qp_packet, header, address, trans->addr);

 trans_priv->buf.sg[0].data = header;
 trans_priv->buf.sg[0].size = sizeof(trans_priv->header);
 if (trans->direction == MLX5_FPGA_WRITE) {
  trans_priv->buf.sg[1].data = trans->data;
  trans_priv->buf.sg[1].size = trans->size;
 }

 trans_priv->buf.complete = trans_send_complete;
 trans_priv->state = TRANS_STATE_SEND;





 err = 0;

 if (err)
  goto out_buf_tid;
 goto out;

out_buf_tid:
 free_tid(conn->fdev, trans_priv);
out:
 return err;
}

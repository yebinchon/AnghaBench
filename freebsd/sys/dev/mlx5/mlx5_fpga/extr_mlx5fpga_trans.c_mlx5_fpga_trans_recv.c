
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_fpga_trans_priv {TYPE_1__* user_trans; } ;
struct mlx5_fpga_dma_buf {TYPE_2__* sg; } ;
struct mlx5_fpga_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ size; int data; } ;
struct TYPE_3__ {size_t direction; size_t size; int data; } ;


 int EIO ;
 int MLX5_ADDR_OF (int ,int ,int ) ;
 size_t MLX5_FPGA_READ ;


 size_t MLX5_FPGA_WRITE ;
 int MLX5_GET (int ,int ,int) ;
 scalar_t__ MLX5_ST_SZ_BYTES (int ) ;
 int data ;
 struct mlx5_fpga_trans_priv* find_tid (struct mlx5_fpga_device*,int) ;
 int fpga_shell_qp_packet ;
 int memcpy (int ,int ,size_t) ;
 int mlx5_fpga_dbg (struct mlx5_fpga_device*,char*,scalar_t__) ;
 int mlx5_fpga_warn (struct mlx5_fpga_device*,char*,int,...) ;
 int trans_complete (struct mlx5_fpga_device*,struct mlx5_fpga_trans_priv*,int) ;

void mlx5_fpga_trans_recv(void *cb_arg, struct mlx5_fpga_dma_buf *buf)
{
 struct mlx5_fpga_device *fdev = cb_arg;
 struct mlx5_fpga_trans_priv *trans_priv;
 size_t payload_len;
 u8 status = 0;
 u8 tid, type;

 mlx5_fpga_dbg(fdev, "Rx QP message on core conn; %u bytes\n",
        buf->sg[0].size);

 if (buf->sg[0].size < MLX5_ST_SZ_BYTES(fpga_shell_qp_packet)) {
  mlx5_fpga_warn(fdev, "Short message %u bytes from device\n",
          buf->sg[0].size);
  goto out;
 }
 payload_len = buf->sg[0].size - MLX5_ST_SZ_BYTES(fpga_shell_qp_packet);

 tid = MLX5_GET(fpga_shell_qp_packet, buf->sg[0].data, tid);
 trans_priv = find_tid(fdev, tid);
 if (!trans_priv)
  goto out;

 type = MLX5_GET(fpga_shell_qp_packet, buf->sg[0].data, type);
 switch (type) {
 case 129:
  if (trans_priv->user_trans->direction != MLX5_FPGA_READ) {
   mlx5_fpga_warn(fdev, "Wrong answer type %u to a %u transaction\n",
           type, trans_priv->user_trans->direction);
   status = -EIO;
   goto complete;
  }
  if (payload_len != trans_priv->user_trans->size) {
   mlx5_fpga_warn(fdev, "Incorrect transaction payload length %zu expected %zu\n",
           payload_len,
           trans_priv->user_trans->size);
   goto complete;
  }
  memcpy(trans_priv->user_trans->data,
         MLX5_ADDR_OF(fpga_shell_qp_packet, buf->sg[0].data,
        data), payload_len);
  break;
 case 128:
  if (trans_priv->user_trans->direction != MLX5_FPGA_WRITE) {
   mlx5_fpga_warn(fdev, "Wrong answer type %u to a %u transaction\n",
           type, trans_priv->user_trans->direction);
   status = -EIO;
   goto complete;
  }
  break;
 default:
  mlx5_fpga_warn(fdev, "Unexpected message type %u len %u from device\n",
          type, buf->sg[0].size);
  status = -EIO;
  goto complete;
 }

complete:
 trans_complete(fdev, trans_priv, status);
out:
 return;
}

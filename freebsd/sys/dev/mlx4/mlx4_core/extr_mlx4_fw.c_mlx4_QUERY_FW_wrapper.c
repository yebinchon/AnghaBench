
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mlx4_vhcr {int dummy; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; scalar_t__* buf; } ;
struct mlx4_cmd_info {int dummy; } ;


 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_QUERY_FW ;
 int MLX4_CMD_TIME_CLASS_A ;
 scalar_t__ MLX4_INVALID_SLAVE_ID ;
 scalar_t__ QUERY_FW_OUT_SIZE ;
 size_t QUERY_FW_PPF_ID ;
 int memset (scalar_t__*,int ,scalar_t__) ;
 int mlx4_cmd_box (struct mlx4_dev*,int ,int ,int ,int ,int ,int ,int ) ;

int mlx4_QUERY_FW_wrapper(struct mlx4_dev *dev, int slave,
     struct mlx4_vhcr *vhcr,
     struct mlx4_cmd_mailbox *inbox,
     struct mlx4_cmd_mailbox *outbox,
     struct mlx4_cmd_info *cmd)
{
 u8 *outbuf;
 int err;

 outbuf = outbox->buf;
 err = mlx4_cmd_box(dev, 0, outbox->dma, 0, 0, MLX4_CMD_QUERY_FW,
       MLX4_CMD_TIME_CLASS_A, MLX4_CMD_NATIVE);
 if (err)
  return err;



 outbuf[0] = outbuf[1] = 0;
 memset(&outbuf[8], 0, QUERY_FW_OUT_SIZE - 8);
 outbuf[QUERY_FW_PPF_ID] = MLX4_INVALID_SLAVE_ID;

 return 0;
}

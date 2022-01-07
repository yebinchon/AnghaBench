
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; int * buf; } ;
struct mlx4_adapter {int board_id; int inta_pin; } ;


 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_QUERY_ADAPTER ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_GET (int ,int *,int ) ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int QUERY_ADAPTER_INTA_PIN_OFFSET ;
 int QUERY_ADAPTER_VSD_OFFSET ;
 int get_board_id (int *,int ) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd_box (struct mlx4_dev*,int ,int ,int ,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;

int mlx4_QUERY_ADAPTER(struct mlx4_dev *dev, struct mlx4_adapter *adapter)
{
 struct mlx4_cmd_mailbox *mailbox;
 u32 *outbox;
 int err;





 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox))
  return PTR_ERR(mailbox);
 outbox = mailbox->buf;

 err = mlx4_cmd_box(dev, 0, mailbox->dma, 0, 0, MLX4_CMD_QUERY_ADAPTER,
      MLX4_CMD_TIME_CLASS_A, MLX4_CMD_NATIVE);
 if (err)
  goto out;

 MLX4_GET(adapter->inta_pin, outbox, 0x10);

 get_board_id(outbox + 0x20 / 4,
       adapter->board_id);

out:
 mlx4_free_cmd_mailbox(dev, mailbox);
 return err;
}

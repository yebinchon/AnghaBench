
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_12__ {scalar_t__ from_state; } ;
struct res_eq {TYPE_4__ com; } ;
struct mlx4_slave_event_eq_info {int eqn; int token; } ;
struct TYPE_15__ {int * gen_eqe_mutex; TYPE_3__* slave_state; } ;
struct TYPE_16__ {TYPE_7__ master; } ;
struct mlx4_priv {TYPE_8__ mfunc; } ;
struct TYPE_13__ {int token; } ;
struct TYPE_14__ {TYPE_5__ cmd; } ;
struct mlx4_eqe {size_t type; TYPE_6__ event; } ;
struct TYPE_10__ {int function; } ;
struct mlx4_dev {TYPE_2__ caps; TYPE_1__* persist; } ;
struct mlx4_cmd_mailbox {int dma; int buf; } ;
struct TYPE_11__ {struct mlx4_slave_event_eq_info* event_eq; int active; } ;
struct TYPE_9__ {int num_vfs; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 int MLX4_CMD_GEN_EQE ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_B ;
 size_t MLX4_EVENT_TYPE_CMD ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int RES_EQ ;
 scalar_t__ RES_EQ_HW ;
 int cpu_to_be16 (int ) ;
 int get_res (struct mlx4_dev*,int,int,int ,struct res_eq**) ;
 int memcpy (int ,int *,int) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd (struct mlx4_dev*,int ,int,int ,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_res (struct mlx4_dev*,int,int,int ) ;

int mlx4_GEN_EQE(struct mlx4_dev *dev, int slave, struct mlx4_eqe *eqe)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_slave_event_eq_info *event_eq;
 struct mlx4_cmd_mailbox *mailbox;
 u32 in_modifier = 0;
 int err;
 int res_id;
 struct res_eq *req;

 if (!priv->mfunc.master.slave_state)
  return -EINVAL;


 if (slave < 0 || slave > dev->persist->num_vfs ||
     slave == dev->caps.function ||
     !priv->mfunc.master.slave_state[slave].active)
  return 0;

 event_eq = &priv->mfunc.master.slave_state[slave].event_eq[eqe->type];


 if (event_eq->eqn < 0)
  return 0;

 mutex_lock(&priv->mfunc.master.gen_eqe_mutex[slave]);
 res_id = (slave << 10) | event_eq->eqn;
 err = get_res(dev, slave, res_id, RES_EQ, &req);
 if (err)
  goto unlock;

 if (req->com.from_state != RES_EQ_HW) {
  err = -EINVAL;
  goto put;
 }

 mailbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(mailbox)) {
  err = PTR_ERR(mailbox);
  goto put;
 }

 if (eqe->type == MLX4_EVENT_TYPE_CMD) {
  ++event_eq->token;
  eqe->event.cmd.token = cpu_to_be16(event_eq->token);
 }

 memcpy(mailbox->buf, (u8 *) eqe, 28);

 in_modifier = (slave & 0xff) | ((event_eq->eqn & 0x3ff) << 16);

 err = mlx4_cmd(dev, mailbox->dma, in_modifier, 0,
         MLX4_CMD_GEN_EQE, MLX4_CMD_TIME_CLASS_B,
         MLX4_CMD_NATIVE);

 put_res(dev, slave, res_id, RES_EQ);
 mutex_unlock(&priv->mfunc.master.gen_eqe_mutex[slave]);
 mlx4_free_cmd_mailbox(dev, mailbox);
 return err;

put:
 put_res(dev, slave, res_id, RES_EQ);

unlock:
 mutex_unlock(&priv->mfunc.master.gen_eqe_mutex[slave]);
 return err;
}

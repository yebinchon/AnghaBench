
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int timer; int * map; } ;
struct TYPE_6__ {TYPE_1__* comm; } ;
struct mlx4_priv {TYPE_3__ catas_err; TYPE_2__ mfunc; } ;
struct mlx4_dev {TYPE_4__* persist; } ;
struct TYPE_8__ {int state; int catas_work; int catas_wq; } ;
struct TYPE_5__ {int slave_read; } ;


 scalar_t__ MLX4_CATAS_POLL_INTERVAL ;
 int MLX4_DEVICE_STATE_INTERNAL_ERROR ;
 int dump_err_buf (struct mlx4_dev*) ;
 scalar_t__ jiffies ;
 scalar_t__ mlx4_comm_internal_err (int ) ;
 scalar_t__ mlx4_internal_err_reset ;
 scalar_t__ mlx4_is_slave (struct mlx4_dev*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*) ;
 int mod_timer (int *,int ) ;
 int queue_work (int ,int *) ;
 scalar_t__ readl (int *) ;
 int round_jiffies (scalar_t__) ;
 int swab32 (scalar_t__) ;

__attribute__((used)) static void poll_catas(unsigned long dev_ptr)
{
 struct mlx4_dev *dev = (struct mlx4_dev *) dev_ptr;
 struct mlx4_priv *priv = mlx4_priv(dev);
 u32 slave_read;

 if (mlx4_is_slave(dev)) {
  slave_read = swab32(readl(&priv->mfunc.comm->slave_read));
  if (mlx4_comm_internal_err(slave_read)) {
   mlx4_warn(dev, "Internal error detected on the communication channel\n");
   goto internal_err;
  }
 } else if (readl(priv->catas_err.map)) {
  dump_err_buf(dev);
  goto internal_err;
 }

 if (dev->persist->state & MLX4_DEVICE_STATE_INTERNAL_ERROR) {
  mlx4_warn(dev, "Internal error mark was detected on device\n");
  goto internal_err;
 }

 mod_timer(&priv->catas_err.timer,
    round_jiffies(jiffies + MLX4_CATAS_POLL_INTERVAL));
 return;

internal_err:
 if (mlx4_internal_err_reset)
  queue_work(dev->persist->catas_wq, &dev->persist->catas_work);
}

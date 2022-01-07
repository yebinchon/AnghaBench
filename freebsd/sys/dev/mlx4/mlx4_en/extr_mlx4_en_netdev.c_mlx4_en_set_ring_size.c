
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlx4_en_priv {TYPE_3__* prof; scalar_t__ port_up; TYPE_2__** tx_ring; TYPE_1__** rx_ring; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int state_lock; } ;
struct TYPE_6__ {int tx_ring_size; int rx_ring_size; } ;
struct TYPE_5__ {int size; } ;
struct TYPE_4__ {int actual_size; int size; } ;


 int MLX4_EN_MAX_RX_SIZE ;
 int MLX4_EN_MAX_TX_SIZE ;
 int MLX4_EN_MIN_RX_SIZE ;
 int MLX4_EN_MIN_TX_SIZE ;
 int en_err (struct mlx4_en_priv*,char*) ;
 int max_t (int ,int,int ) ;
 int min_t (int ,int,int ) ;
 int mlx4_en_alloc_resources (struct mlx4_en_priv*) ;
 int mlx4_en_free_resources (struct mlx4_en_priv*) ;
 int mlx4_en_start_port (struct net_device*) ;
 int mlx4_en_stop_port (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mlx4_en_priv* netdev_priv (struct net_device*) ;
 int roundup_pow_of_two (int) ;
 int u32 ;

__attribute__((used)) static int mlx4_en_set_ring_size(struct net_device *dev,
    int rx_size, int tx_size)
{
        struct mlx4_en_priv *priv = netdev_priv(dev);
        struct mlx4_en_dev *mdev = priv->mdev;
        int port_up = 0;
        int err = 0;

        rx_size = roundup_pow_of_two(rx_size);
        rx_size = max_t(u32, rx_size, MLX4_EN_MIN_RX_SIZE);
        rx_size = min_t(u32, rx_size, MLX4_EN_MAX_RX_SIZE);
        tx_size = roundup_pow_of_two(tx_size);
        tx_size = max_t(u32, tx_size, MLX4_EN_MIN_TX_SIZE);
        tx_size = min_t(u32, tx_size, MLX4_EN_MAX_TX_SIZE);

        if (rx_size == (priv->port_up ?
            priv->rx_ring[0]->actual_size : priv->rx_ring[0]->size) &&
            tx_size == priv->tx_ring[0]->size)
                return 0;
        mutex_lock(&mdev->state_lock);
        if (priv->port_up) {
                port_up = 1;
                mlx4_en_stop_port(dev);
        }
        mlx4_en_free_resources(priv);
        priv->prof->tx_ring_size = tx_size;
        priv->prof->rx_ring_size = rx_size;
        err = mlx4_en_alloc_resources(priv);
        if (err) {
                en_err(priv, "Failed reallocating port resources\n");
                goto out;
        }
        if (port_up) {
                err = mlx4_en_start_port(dev);
                if (err)
                        en_err(priv, "Failed starting port\n");
        }
out:
        mutex_unlock(&mdev->state_lock);
        return err;
}

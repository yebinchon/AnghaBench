#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct mlx4_en_priv {TYPE_3__* prof; scalar_t__ port_up; TYPE_2__** tx_ring; TYPE_1__** rx_ring; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; } ;
struct TYPE_6__ {int tx_ring_size; int rx_ring_size; } ;
struct TYPE_5__ {int size; } ;
struct TYPE_4__ {int actual_size; int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_EN_MAX_RX_SIZE ; 
 int /*<<< orphan*/  MLX4_EN_MAX_TX_SIZE ; 
 int /*<<< orphan*/  MLX4_EN_MIN_RX_SIZE ; 
 int /*<<< orphan*/  MLX4_EN_MIN_TX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_en_priv*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_en_priv*) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC9 (struct net_device*) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static int FUNC11(struct net_device *dev,
    int rx_size, int tx_size)
{
        struct mlx4_en_priv *priv = FUNC9(dev);
        struct mlx4_en_dev *mdev = priv->mdev;
        int port_up = 0;
        int err = 0;

        rx_size = FUNC10(rx_size);
        rx_size = FUNC1(u32, rx_size, MLX4_EN_MIN_RX_SIZE);
        rx_size = FUNC2(u32, rx_size, MLX4_EN_MAX_RX_SIZE);
        tx_size = FUNC10(tx_size);
        tx_size = FUNC1(u32, tx_size, MLX4_EN_MIN_TX_SIZE);
        tx_size = FUNC2(u32, tx_size, MLX4_EN_MAX_TX_SIZE);

        if (rx_size == (priv->port_up ?
            priv->rx_ring[0]->actual_size : priv->rx_ring[0]->size) &&
            tx_size == priv->tx_ring[0]->size)
                return 0;
        FUNC7(&mdev->state_lock);
        if (priv->port_up) {
                port_up = 1;
                FUNC6(dev);
        }
        FUNC4(priv);
        priv->prof->tx_ring_size = tx_size;
        priv->prof->rx_ring_size = rx_size;
        err = FUNC3(priv);
        if (err) {
                FUNC0(priv, "Failed reallocating port resources\n");
                goto out;
        }
        if (port_up) {
                err = FUNC5(dev);
                if (err)
                        FUNC0(priv, "Failed starting port\n");
        }
out:
        FUNC8(&mdev->state_lock);
        return err;
}
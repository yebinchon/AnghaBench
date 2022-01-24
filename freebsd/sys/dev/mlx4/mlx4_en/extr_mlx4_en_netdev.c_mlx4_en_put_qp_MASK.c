#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct mlx4_en_priv {int base_qpn; int /*<<< orphan*/  flags; int /*<<< orphan*/  port; int /*<<< orphan*/  dev; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {struct mlx4_dev* dev; } ;
struct TYPE_2__ {scalar_t__ steering_mode; } ;
struct mlx4_dev {TYPE_1__ caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX4_EN_FLAG_FORCE_PROMISC ; 
 scalar_t__ MLX4_STEERING_MODE_A0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mlx4_en_priv *priv)
{
	struct mlx4_en_dev *mdev = priv->mdev;
	struct mlx4_dev *dev = mdev->dev;
	int qpn = priv->base_qpn;

	if (dev->caps.steering_mode == MLX4_STEERING_MODE_A0) {
		u64 mac = FUNC2(FUNC0(priv->dev));
		FUNC1(DRV, priv, "Registering MAC: %pM for deleting\n",
		       FUNC0(priv->dev));
		FUNC4(dev, priv->port, mac);
	} else {
		FUNC1(DRV, priv, "Releasing qp: port %d, qpn %d\n",
		       priv->port, qpn);
		FUNC3(dev, qpn, 1);
		priv->flags &= ~MLX4_EN_FLAG_FORCE_PROMISC;
	}
}
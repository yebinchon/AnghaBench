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
struct mlx4_en_priv {int base_qpn; int /*<<< orphan*/  port; int /*<<< orphan*/  dev; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {struct mlx4_dev* dev; } ;
struct TYPE_2__ {scalar_t__ steering_mode; } ;
struct mlx4_dev {TYPE_1__ caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX4_RESERVE_A0_QP ; 
 scalar_t__ MLX4_STEERING_MODE_A0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_en_priv*,char*,...) ; 
 int FUNC3 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct mlx4_dev*,int,int,int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mlx4_en_priv *priv)
{
	struct mlx4_en_dev *mdev = priv->mdev;
	struct mlx4_dev *dev = mdev->dev;
	int index = 0;
	int err = 0;
	int *qpn = &priv->base_qpn;
	u64 mac = FUNC4(FUNC0(priv->dev));

	FUNC1(DRV, priv, "Registering MAC: %pM for adding\n",
	       FUNC0(priv->dev));
	index = FUNC6(dev, priv->port, mac);
	if (index < 0) {
		err = index;
		FUNC2(priv, "Failed adding MAC: %pM\n",
		       FUNC0(priv->dev));
		return err;
	}

	if (dev->caps.steering_mode == MLX4_STEERING_MODE_A0) {
		int base_qpn = FUNC3(dev, priv->port);
		*qpn = base_qpn + index;
		return 0;
	}

	err = FUNC5(dev, 1, 1, qpn, MLX4_RESERVE_A0_QP);
	FUNC1(DRV, priv, "Reserved qp %d\n", *qpn);
	if (err) {
		FUNC2(priv, "Failed to reserve qp for mac registration\n");
		FUNC7(dev, priv->port, mac);
		return err;
	}

	return 0;
}
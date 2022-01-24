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
struct TYPE_2__ {scalar_t__ prio_tc; } ;
struct mlx5e_priv {TYPE_1__ params_ethtool; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int MLX5E_MAX_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  ets ; 
 int FUNC3 (struct mlx5_core_dev*,int,scalar_t__) ; 

__attribute__((used)) static int
FUNC4(struct mlx5e_priv *priv)
{
	struct mlx5_core_dev *mdev = priv->mdev;
	int err = 0;
	int i;

	FUNC1(priv);
	if (!FUNC0(priv->mdev, ets)) {
		FUNC2(priv);
		return (EOPNOTSUPP);
	}

	for (i = 0; i != MLX5E_MAX_PRIORITY; i++) {
		err = -FUNC3(mdev, i, priv->params_ethtool.prio_tc + i);
		if (err)
			break;
	}
	FUNC2(priv);
	return (err);
}
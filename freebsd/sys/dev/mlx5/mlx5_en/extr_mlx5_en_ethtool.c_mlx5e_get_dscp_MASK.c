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
struct TYPE_2__ {int /*<<< orphan*/  trust_state; int /*<<< orphan*/  dscp2prio; } ;
struct mlx5e_priv {TYPE_1__ params_ethtool; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qcam_reg ; 
 int /*<<< orphan*/  qpdpm ; 
 int /*<<< orphan*/  qpts ; 

__attribute__((used)) static int
FUNC6(struct mlx5e_priv *priv)
{
	struct mlx5_core_dev *mdev = priv->mdev;
	int err;

	if (FUNC0(mdev, qcam_reg) == 0 ||
	    FUNC1(mdev, qpts) == 0 ||
	    FUNC1(mdev, qpdpm) == 0)
		return (EOPNOTSUPP);

	FUNC2(priv);
	err = -FUNC4(mdev, priv->params_ethtool.dscp2prio);
	if (err)
		goto done;

	err = -FUNC5(mdev, &priv->params_ethtool.trust_state);
	if (err)
		goto done;
done:
	FUNC3(priv);
	return (err);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx4_priv {int /*<<< orphan*/  bond_mutex; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,char*) ; 
 int FUNC1 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*) ; 
 scalar_t__ FUNC4 (struct mlx4_dev*) ; 
 int FUNC5 (struct mlx4_dev*) ; 
 struct mlx4_priv* FUNC6 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct mlx4_dev *dev)
{
	int ret = 0;
	struct mlx4_priv *priv = FUNC6(dev);

	FUNC7(&priv->bond_mutex);

	if (!FUNC3(dev)) {
		ret = FUNC1(dev, true);
		if (ret)
			FUNC2(dev, "Failed to bond device: %d\n", ret);
		if (!ret && FUNC4(dev)) {
			ret = FUNC5(dev);
			if (ret) {
				FUNC2(dev, "bond for multifunction failed\n");
				FUNC1(dev, false);
			}
		}
	}

	FUNC8(&priv->bond_mutex);
	if (!ret)
		FUNC0(dev, "Device is bonded\n");

	return ret;
}
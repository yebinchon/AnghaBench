#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* eq; } ;
struct mlx4_priv {TYPE_2__ eq_table; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  eqn; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 size_t MLX4_EQ_ASYNC ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*) ; 
 int FUNC2 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*) ; 
 struct mlx4_priv* FUNC6 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,char*) ; 

int FUNC8(struct mlx4_dev *dev, int vector)
{
	struct mlx4_priv *priv = FUNC6(dev);
	int err;

	/* Temporary use polling for command completions */
	FUNC5(dev);

	/* Map the new eq to handle all asynchronous events */
	err = FUNC2(dev, FUNC1(dev), 0,
			  priv->eq_table.eq[FUNC0(vector)].eqn);
	if (err) {
		FUNC7(dev, "Failed mapping eq for interrupt test\n");
		goto out;
	}

	/* Go back to using events */
	FUNC4(dev);
	err = FUNC3(dev);

	/* Return to default */
	FUNC5(dev);
out:
	FUNC2(dev, FUNC1(dev), 0,
		    priv->eq_table.eq[MLX4_EQ_ASYNC].eqn);
	FUNC4(dev);

	return err;
}
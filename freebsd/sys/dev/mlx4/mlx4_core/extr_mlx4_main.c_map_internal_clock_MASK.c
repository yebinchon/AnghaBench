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
struct TYPE_4__ {scalar_t__ clock_offset; int /*<<< orphan*/  clock_bar; } ;
struct mlx4_priv {int /*<<< orphan*/  clock_mapping; TYPE_2__ fw; } ;
struct mlx4_dev {TYPE_1__* persist; } ;
struct TYPE_3__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MLX4_CLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct mlx4_priv* FUNC1 (struct mlx4_dev*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC1(dev);

	priv->clock_mapping =
		FUNC0(FUNC2(dev->persist->pdev,
					   priv->fw.clock_bar) +
			priv->fw.clock_offset, MLX4_CLOCK_SIZE);

	if (!priv->clock_mapping)
		return -ENOMEM;

	return 0;
}
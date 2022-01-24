#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ initialized; int /*<<< orphan*/ * hcr; int /*<<< orphan*/ * pool; } ;
struct TYPE_7__ {int /*<<< orphan*/ * vhcr; int /*<<< orphan*/  vhcr_dma; } ;
struct mlx4_priv {TYPE_4__ cmd; TYPE_3__ mfunc; } ;
struct mlx4_dev {TYPE_2__* persist; } ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MLX4_CMD_CLEANUP_HCR ; 
 int MLX4_CMD_CLEANUP_POOL ; 
 int MLX4_CMD_CLEANUP_STRUCT ; 
 int MLX4_CMD_CLEANUP_VHCR ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*) ; 
 struct mlx4_priv* FUNC4 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct mlx4_dev *dev, int cleanup_mask)
{
	struct mlx4_priv *priv = FUNC4(dev);

	if (priv->cmd.pool && (cleanup_mask & MLX4_CMD_CLEANUP_POOL)) {
		FUNC5(priv->cmd.pool);
		priv->cmd.pool = NULL;
	}

	if (!FUNC3(dev) && priv->cmd.hcr &&
	    (cleanup_mask & MLX4_CMD_CLEANUP_HCR)) {
		FUNC1(priv->cmd.hcr);
		priv->cmd.hcr = NULL;
	}
	if (FUNC2(dev) && priv->mfunc.vhcr &&
	    (cleanup_mask & MLX4_CMD_CLEANUP_VHCR)) {
		FUNC0(&dev->persist->pdev->dev, PAGE_SIZE,
				  priv->mfunc.vhcr, priv->mfunc.vhcr_dma);
		priv->mfunc.vhcr = NULL;
	}
	if (priv->cmd.initialized && (cleanup_mask & MLX4_CMD_CLEANUP_STRUCT))
		priv->cmd.initialized = 0;
}
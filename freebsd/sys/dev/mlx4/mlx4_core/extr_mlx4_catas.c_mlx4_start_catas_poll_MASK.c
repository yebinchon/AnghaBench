#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {unsigned long data; int /*<<< orphan*/  expires; int /*<<< orphan*/  function; } ;
struct TYPE_8__ {TYPE_4__ timer; int /*<<< orphan*/ * map; int /*<<< orphan*/  list; } ;
struct TYPE_7__ {int catas_size; scalar_t__ catas_offset; int /*<<< orphan*/  catas_bar; } ;
struct mlx4_priv {TYPE_3__ catas_err; TYPE_2__ fw; } ;
struct mlx4_dev {TYPE_1__* persist; } ;
typedef  scalar_t__ phys_addr_t ;
struct TYPE_6__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MLX4_CATAS_POLL_INTERVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*) ; 
 struct mlx4_priv* FUNC5 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*,char*,unsigned long long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  poll_catas ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

void FUNC9(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC5(dev);
	phys_addr_t addr;

	FUNC0(&priv->catas_err.list);
	FUNC2(&priv->catas_err.timer);
	priv->catas_err.map = NULL;

	if (!FUNC4(dev)) {
		addr = FUNC7(dev->persist->pdev,
					  priv->fw.catas_bar) +
					  priv->fw.catas_offset;

		priv->catas_err.map = FUNC3(addr, priv->fw.catas_size * 4);
		if (!priv->catas_err.map) {
			FUNC6(dev, "Failed to map internal error buffer at 0x%llx\n",
				  (unsigned long long)addr);
			return;
		}
	}

	priv->catas_err.timer.data     = (unsigned long) dev;
	priv->catas_err.timer.function = poll_catas;
	priv->catas_err.timer.expires  =
		FUNC8(jiffies + MLX4_CATAS_POLL_INTERVAL);
	FUNC1(&priv->catas_err.timer);
}
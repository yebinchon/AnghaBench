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
struct TYPE_4__ {scalar_t__ map; } ;
struct TYPE_3__ {int catas_size; } ;
struct mlx4_priv {TYPE_2__ catas_err; TYPE_1__ fw; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,char*,...) ; 
 struct mlx4_priv* FUNC1 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC1(dev);

	int i;

	FUNC0(dev, "Internal error detected:\n");
	for (i = 0; i < priv->fw.catas_size; ++i)
		FUNC0(dev, "  buf[%02x]: %08x\n",
			 i, FUNC3(FUNC2(priv->catas_err.map + i)));
}
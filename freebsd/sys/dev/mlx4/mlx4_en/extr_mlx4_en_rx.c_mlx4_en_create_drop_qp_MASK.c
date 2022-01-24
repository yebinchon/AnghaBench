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
typedef  int /*<<< orphan*/  u32 ;
struct mlx4_en_priv {TYPE_1__* mdev; int /*<<< orphan*/  drop_qp; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_en_priv*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(struct mlx4_en_priv *priv)
{
	int err;
	u32 qpn;

	err = FUNC3(priv->mdev->dev, 1, 1, &qpn, 0);
	if (err) {
		FUNC0(priv, "Failed reserving drop qpn\n");
		return err;
	}
	err = FUNC1(priv->mdev->dev, qpn, &priv->drop_qp, GFP_KERNEL);
	if (err) {
		FUNC0(priv, "Failed allocating drop qp\n");
		FUNC2(priv->mdev->dev, qpn, 1);
		return err;
	}

	return 0;
}
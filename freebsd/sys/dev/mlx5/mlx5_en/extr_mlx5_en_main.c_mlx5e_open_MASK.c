#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx5e_priv {TYPE_1__* ifp; int /*<<< orphan*/  mdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  MLX5_PORT_UP ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct mlx5e_priv *priv = arg;

	FUNC0(priv);
	if (FUNC3(priv->mdev, MLX5_PORT_UP))
		FUNC2(priv->ifp,
		    "Setting port status to up failed\n");

	FUNC4(priv->ifp);
	priv->ifp->if_drv_flags |= IFF_DRV_RUNNING;
	FUNC1(priv);
}
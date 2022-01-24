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
struct mlx5_priv {int /*<<< orphan*/  msix_arr; } ;
struct mlx5_core_dev {int /*<<< orphan*/  pdev; struct mlx5_priv priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mlx5_core_dev *dev)
{
	struct mlx5_priv *priv = &dev->priv;

	FUNC1(dev->pdev);
	FUNC0(priv->msix_arr);
}
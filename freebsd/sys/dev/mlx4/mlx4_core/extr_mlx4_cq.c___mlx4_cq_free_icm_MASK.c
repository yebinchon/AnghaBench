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
struct mlx4_cq_table {int /*<<< orphan*/  bitmap; int /*<<< orphan*/  table; int /*<<< orphan*/  cmpt_table; } ;
struct mlx4_priv {struct mlx4_cq_table cq_table; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_NO_RR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct mlx4_priv* FUNC1 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,int /*<<< orphan*/ *,int) ; 

void FUNC3(struct mlx4_dev *dev, int cqn)
{
	struct mlx4_priv *priv = FUNC1(dev);
	struct mlx4_cq_table *cq_table = &priv->cq_table;

	FUNC2(dev, &cq_table->cmpt_table, cqn);
	FUNC2(dev, &cq_table->table, cqn);
	FUNC0(&cq_table->bitmap, cqn, MLX4_NO_RR);
}
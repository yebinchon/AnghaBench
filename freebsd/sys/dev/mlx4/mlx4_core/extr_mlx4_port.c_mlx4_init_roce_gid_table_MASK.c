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
struct mlx4_roce_gid_table {TYPE_1__* roce_gids; int /*<<< orphan*/  mutex; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_ROCE_GID_ENTRY_SIZE ; 
 int MLX4_ROCE_MAX_GIDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct mlx4_dev *dev,
			      struct mlx4_roce_gid_table *table)
{
	int i;

	FUNC1(&table->mutex);
	for (i = 0; i < MLX4_ROCE_MAX_GIDS; i++)
		FUNC0(table->roce_gids[i].raw, 0, MLX4_ROCE_GID_ENTRY_SIZE);
}
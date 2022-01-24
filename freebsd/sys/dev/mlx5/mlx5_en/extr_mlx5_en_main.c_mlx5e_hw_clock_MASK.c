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
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct mlx5e_priv {TYPE_1__* mdev; } ;
struct mlx5_init_seg {int /*<<< orphan*/  internal_timer_h; int /*<<< orphan*/  internal_timer_l; } ;
struct TYPE_2__ {struct mlx5_init_seg* iseg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint64_t
FUNC1(struct mlx5e_priv *priv)
{
	struct mlx5_init_seg *iseg;
	uint32_t hw_h, hw_h1, hw_l;

	iseg = priv->mdev->iseg;
	do {
		hw_h = FUNC0(&iseg->internal_timer_h);
		hw_l = FUNC0(&iseg->internal_timer_l);
		hw_h1 = FUNC0(&iseg->internal_timer_h);
	} while (hw_h1 != hw_h);
	return (((uint64_t)hw_h << 32) | hw_l);
}
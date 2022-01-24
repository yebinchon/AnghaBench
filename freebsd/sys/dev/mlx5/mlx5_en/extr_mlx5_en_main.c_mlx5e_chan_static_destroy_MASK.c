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
struct TYPE_4__ {int /*<<< orphan*/  mtx; int /*<<< orphan*/  watchdog; } ;
struct mlx5e_channel {TYPE_1__* sq; TYPE_2__ rq; } ;
struct TYPE_3__ {int /*<<< orphan*/  comp_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  cev_callout; } ;

/* Variables and functions */
 int MLX5E_MAX_TX_NUM_TC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct mlx5e_channel *c)
{
	int tc;

	FUNC0(&c->rq.watchdog);

	FUNC1(&c->rq.mtx);

	for (tc = 0; tc != MLX5E_MAX_TX_NUM_TC; tc++) {
		FUNC0(&c->sq[tc].cev_callout);
		FUNC1(&c->sq[tc].lock);
		FUNC1(&c->sq[tc].comp_lock);
	}
}
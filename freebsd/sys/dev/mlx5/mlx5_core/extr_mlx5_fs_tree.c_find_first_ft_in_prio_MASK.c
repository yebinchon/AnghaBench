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
struct mlx5_flow_table {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct fs_prio {TYPE_1__ base; } ;

/* Variables and functions */
 struct mlx5_flow_table* FUNC0 (struct fs_prio*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlx5_flow_table *FUNC3(struct fs_prio *prio,
						     struct list_head *start)
{
	struct mlx5_flow_table *ft;

	if (!prio)
		return NULL;

	FUNC1(&prio->base.lock);
	ft = FUNC0(prio, start);
	FUNC2(&prio->base.lock);

	return ft;
}
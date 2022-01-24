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
struct mlx5e_flow_table {int num_groups; int /*<<< orphan*/ ** g; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct mlx5e_flow_table *ft)
{
	int i;

	for (i = ft->num_groups - 1; i >= 0; i--) {
		if (!FUNC0(ft->g[i]))
			FUNC1(ft->g[i]);
		ft->g[i] = NULL;
	}
	ft->num_groups = 0;
}
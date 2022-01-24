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
typedef  int /*<<< orphan*/  u_long ;
struct namedobj_instance {int max_blocks; int /*<<< orphan*/ * idx_mask; } ;

/* Variables and functions */
 int IPFW_MAX_SETS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void
FUNC1(struct namedobj_instance *ni, void **idx, int *blocks)
{
	int old_blocks, new_blocks;
	u_long *old_idx, *new_idx;
	int i;

	old_idx = ni->idx_mask;
	old_blocks = ni->max_blocks;
	new_idx = *idx;
	new_blocks = *blocks;

	for (i = 0; i < IPFW_MAX_SETS; i++) {
		FUNC0(&new_idx[new_blocks * i], &old_idx[old_blocks * i],
		    old_blocks * sizeof(u_long));
	}
}
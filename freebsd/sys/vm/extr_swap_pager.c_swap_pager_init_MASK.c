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

/* Variables and functions */
 int /*<<< orphan*/  MTX_DEF ; 
 int NOBJLISTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sw_alloc_sx ; 
 int /*<<< orphan*/  sw_dev_mtx ; 
 int /*<<< orphan*/ * swap_pager_object_list ; 
 int /*<<< orphan*/  swdev_syscall_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC3(void)
{
	/*
	 * Initialize object lists
	 */
	int i;

	for (i = 0; i < NOBJLISTS; ++i)
		FUNC0(&swap_pager_object_list[i]);
	FUNC1(&sw_dev_mtx, "swapdev", NULL, MTX_DEF);
	FUNC2(&sw_alloc_sx, "swspsx");
	FUNC2(&swdev_syscall_lock, "swsysc");
}
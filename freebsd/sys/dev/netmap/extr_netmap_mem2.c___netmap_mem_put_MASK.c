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
struct netmap_mem_d {scalar_t__ refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netmap_mem_d*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct netmap_mem_d*) ; 
 int /*<<< orphan*/  nm_mem_list_lock ; 
 int /*<<< orphan*/  FUNC4 (struct netmap_mem_d*) ; 

void
FUNC5(struct netmap_mem_d *nmd, const char *func, int line)
{
	int last;
	FUNC1(nm_mem_list_lock);
	last = (--nmd->refcount == 0);
	if (last)
		FUNC4(nmd);
	FUNC0(nmd, func, line);
	FUNC2(nm_mem_list_lock);
	if (last)
		FUNC3(nmd);
}
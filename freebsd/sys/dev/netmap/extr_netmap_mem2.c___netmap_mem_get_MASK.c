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
struct netmap_mem_d {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netmap_mem_d*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nm_mem_list_lock ; 

struct netmap_mem_d *
FUNC3(struct netmap_mem_d *nmd, const char *func, int line)
{
	FUNC1(nm_mem_list_lock);
	nmd->refcount++;
	FUNC0(nmd, func, line);
	FUNC2(nm_mem_list_lock);
	return nmd;
}
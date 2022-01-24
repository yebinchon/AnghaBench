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
struct netmap_mem_d {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct netmap_mem_d*) ; 
 int /*<<< orphan*/  nm_mem_list_lock ; 

__attribute__((used)) static int
FUNC3(struct netmap_mem_d *nmd)
{
	int ret;

	FUNC0(nm_mem_list_lock);
	ret = FUNC2(nmd);
	FUNC1(nm_mem_list_lock);

	return ret;
}
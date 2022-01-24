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
struct netmap_mem_d {int /*<<< orphan*/ * pools; } ;

/* Variables and functions */
 int NETMAP_POOLS_NR ; 
 int /*<<< orphan*/  FUNC0 (struct netmap_mem_d*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct netmap_mem_d nm_mem ; 
 int /*<<< orphan*/  FUNC2 (struct netmap_mem_d*) ; 

__attribute__((used)) static void
FUNC3(struct netmap_mem_d *nmd)
{
	int i;

	for (i = 0; i < NETMAP_POOLS_NR; i++) {
	    FUNC1(&nmd->pools[i]);
	}

	FUNC0(nmd);
	if (nmd != &nm_mem)
		FUNC2(nmd);
}
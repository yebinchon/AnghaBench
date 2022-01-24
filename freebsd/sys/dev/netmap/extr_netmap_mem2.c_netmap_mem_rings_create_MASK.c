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
struct netmap_mem_d {TYPE_1__* ops; } ;
struct netmap_adapter {struct netmap_mem_d* nm_mem; } ;
struct TYPE_2__ {int (* nmd_rings_create ) (struct netmap_adapter*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netmap_mem_d*) ; 
 int /*<<< orphan*/  FUNC1 (struct netmap_mem_d*) ; 
 int FUNC2 (struct netmap_adapter*) ; 

int
FUNC3(struct netmap_adapter *na)
{
	int rv;
	struct netmap_mem_d *nmd = na->nm_mem;

	FUNC0(nmd);
	rv = nmd->ops->nmd_rings_create(na);
	FUNC1(nmd);

	return rv;
}
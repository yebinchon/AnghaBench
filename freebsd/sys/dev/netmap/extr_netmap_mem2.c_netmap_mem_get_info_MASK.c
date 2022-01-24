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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u_int ;
struct netmap_mem_d {TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  nm_memid_t ;
struct TYPE_2__ {int (* nmd_get_info ) (struct netmap_mem_d*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netmap_mem_d*) ; 
 int /*<<< orphan*/  FUNC1 (struct netmap_mem_d*) ; 
 int FUNC2 (struct netmap_mem_d*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(struct netmap_mem_d *nmd, uint64_t *size,
		u_int *memflags, nm_memid_t *memid)
{
	int rv;

	FUNC0(nmd);
	rv = nmd->ops->nmd_get_info(nmd, size, memflags, memid);
	FUNC1(nmd);

	return rv;
}
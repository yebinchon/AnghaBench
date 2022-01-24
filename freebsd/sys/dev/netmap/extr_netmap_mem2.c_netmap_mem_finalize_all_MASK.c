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
struct netmap_mem_d {int flags; int lasterr; int nm_totalsize; TYPE_1__* pools; } ;
struct TYPE_2__ {int memtotal; int /*<<< orphan*/  objfree; } ;

/* Variables and functions */
 size_t NETMAP_BUF_POOL ; 
 size_t NETMAP_IF_POOL ; 
 int NETMAP_MEM_FINALIZED ; 
 int NETMAP_POOLS_NR ; 
 size_t NETMAP_RING_POOL ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct netmap_mem_d*) ; 
 int /*<<< orphan*/  FUNC2 (struct netmap_mem_d*) ; 
 scalar_t__ netmap_verbose ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 

__attribute__((used)) static int
FUNC4(struct netmap_mem_d *nmd)
{
	int i;
	if (nmd->flags & NETMAP_MEM_FINALIZED)
		return 0;
	nmd->lasterr = 0;
	nmd->nm_totalsize = 0;
	for (i = 0; i < NETMAP_POOLS_NR; i++) {
		nmd->lasterr = FUNC0(&nmd->pools[i]);
		if (nmd->lasterr)
			goto error;
		nmd->nm_totalsize += nmd->pools[i].memtotal;
	}
	nmd->lasterr = FUNC1(nmd);
	if (nmd->lasterr)
		goto error;

	nmd->flags |= NETMAP_MEM_FINALIZED;

	if (netmap_verbose)
		FUNC3("interfaces %zd KB, rings %zd KB, buffers %zd MB",
		    nmd->pools[NETMAP_IF_POOL].memtotal >> 10,
		    nmd->pools[NETMAP_RING_POOL].memtotal >> 10,
		    nmd->pools[NETMAP_BUF_POOL].memtotal >> 20);

	if (netmap_verbose)
		FUNC3("Free buffers: %d", nmd->pools[NETMAP_BUF_POOL].objfree);


	return 0;
error:
	FUNC2(nmd);
	return nmd->lasterr;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_offset_t ;
typedef  int uint64_t ;
struct TYPE_4__ {struct slbtnode** ua_child; struct slb* slb_entries; } ;
struct slbtnode {scalar_t__ ua_base; scalar_t__ ua_level; TYPE_1__ u; } ;
struct slb {int slbe; } ;
typedef  TYPE_2__* pmap_t ;
struct TYPE_5__ {struct slbtnode* pm_slb_tree_root; } ;

/* Variables and functions */
 int ADDR_SR_SHFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int SLBE_VALID ; 
 scalar_t__ UAD_LEAF_LEVEL ; 
 scalar_t__ FUNC1 (int,scalar_t__) ; 
 int FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct slbtnode*) ; 

struct slb *
FUNC4(pmap_t pm, vm_offset_t va)
{
	uint64_t esid = va >> ADDR_SR_SHFT;
	struct slbtnode *ua;
	int idx;

	ua = pm->pm_slb_tree_root;

	for (;;) {
		FUNC0(FUNC3(ua), ("uad base %016jx level %d bad!",
		    ua->ua_base, ua->ua_level));
		idx = FUNC2(esid, ua->ua_level);

		/*
		 * This code is specific to ppc64 where a load is
		 * atomic, so no need for atomic_load macro.
		 */
		if (ua->ua_level == UAD_LEAF_LEVEL)
			return ((ua->u.slb_entries[idx].slbe & SLBE_VALID) ?
			    &ua->u.slb_entries[idx] : NULL);

		/*
		 * The following accesses are implicitly ordered under the POWER
		 * ISA by load dependencies (the store ordering is provided by
		 * the powerpc_lwsync() calls elsewhere) and so are run without
		 * barriers.
		 */
		ua = ua->u.ua_child[idx];
		if (ua == NULL ||
		    FUNC1(esid, ua->ua_level) != ua->ua_base)
			return (NULL);
	}

	return (NULL);
}
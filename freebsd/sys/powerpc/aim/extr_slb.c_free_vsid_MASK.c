#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_7__ {struct slbtnode** ua_child; TYPE_1__* slb_entries; } ;
struct slbtnode {scalar_t__ ua_base; scalar_t__ ua_level; TYPE_2__ u; int /*<<< orphan*/  ua_alloc; } ;
typedef  TYPE_3__* pmap_t ;
struct TYPE_8__ {struct slbtnode* pm_slb_tree_root; } ;
struct TYPE_6__ {scalar_t__ slbe; scalar_t__ slbv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ UAD_LEAF_LEVEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct slbtnode*) ; 

void
FUNC7(pmap_t pm, uint64_t esid, int large)
{
	struct slbtnode *ua;
	int idx;

	FUNC1(pm, MA_OWNED);

	ua = pm->pm_slb_tree_root;
	/* Descend to the correct leaf. */
	for (;;) {
		FUNC0(FUNC6(ua),
		   ("uad base %09jx level %d bad!", ua->ua_base, ua->ua_level));
		
		idx = FUNC5(esid, ua->ua_level);
		if (ua->ua_level == UAD_LEAF_LEVEL) {
			ua->u.slb_entries[idx].slbv = 0;
			FUNC3();
			ua->u.slb_entries[idx].slbe = 0;
			FUNC2(&ua->ua_alloc, idx);
			return;
		}

		ua = ua->u.ua_child[idx];
		if (ua == NULL ||
		    FUNC4(esid, ua->ua_level) != ua->ua_base) {
			/* Perhaps just return instead of assert? */
			FUNC0(0,
			    ("Asked to remove an entry that was never inserted!"));
			return;
		}
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* slb_entries; struct slbtnode** ua_child; } ;
struct slbtnode {scalar_t__ ua_level; TYPE_2__ u; } ;
struct TYPE_3__ {int slbv; } ;

/* Variables and functions */
 int SLBV_VSID_SHIFT ; 
 scalar_t__ UAD_LEAF_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  slbt_zone ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct slbtnode*) ; 

__attribute__((used)) static void
FUNC2(struct slbtnode *ua)
{
	int idx;

	for (idx = 0; idx < 16; idx++) {
		if (ua->ua_level != UAD_LEAF_LEVEL) {
			if (ua->u.ua_child[idx] != NULL)
				FUNC2(ua->u.ua_child[idx]);
		} else {
			if (ua->u.slb_entries[idx].slbv != 0)
				FUNC0(ua->u.slb_entries[idx].slbv
				    >> SLBV_VSID_SHIFT);
		}
	}

	FUNC1(slbt_zone, ua);
}
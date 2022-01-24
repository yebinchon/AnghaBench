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
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_3__* vm_object_t ;
struct swblk {scalar_t__* d; scalar_t__ p; } ;
typedef  int /*<<< orphan*/  daddr_t ;
struct TYPE_6__ {int /*<<< orphan*/  swp_blks; } ;
struct TYPE_7__ {TYPE_1__ swp; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ un_pager; } ;

/* Variables and functions */
 scalar_t__ OBJT_SWAP ; 
 scalar_t__ SWAPBLK_NONE ; 
 int SWAP_META_PAGES ; 
 struct swblk* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  swblk_zone ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct swblk*) ; 

__attribute__((used)) static void
FUNC7(vm_object_t object)
{
	struct swblk *sb;
	daddr_t n_free, s_free;
	vm_pindex_t pindex;
	int i;

	FUNC2(object);
	if (object->type != OBJT_SWAP)
		return;

	FUNC4(&s_free, &n_free);
	for (pindex = 0; (sb = FUNC0(
	    &object->un_pager.swp.swp_blks, pindex)) != NULL;) {
		pindex = sb->p + SWAP_META_PAGES;
		for (i = 0; i < SWAP_META_PAGES; i++) {
			if (sb->d[i] == SWAPBLK_NONE)
				continue;
			FUNC5(&s_free, &n_free, sb->d[i]);
		}
		FUNC1(&object->un_pager.swp.swp_blks, sb->p);
		FUNC6(swblk_zone, sb);
	}
	FUNC3(s_free, n_free);
}
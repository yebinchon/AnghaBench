#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_3__* vm_object_t ;
struct swblk {scalar_t__ p; scalar_t__* d; } ;
typedef  int /*<<< orphan*/  daddr_t ;
struct TYPE_9__ {int /*<<< orphan*/  swp_blks; } ;
struct TYPE_10__ {TYPE_1__ swp; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_2__ un_pager; } ;

/* Variables and functions */
 scalar_t__ OBJT_SWAP ; 
 scalar_t__ SWAPBLK_NONE ; 
 scalar_t__ SWAP_META_PAGES ; 
 struct swblk* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  swblk_zone ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct swblk*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_3__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct swblk*) ; 

__attribute__((used)) static void
FUNC10(vm_object_t srcobject, vm_object_t dstobject,
    vm_pindex_t pindex, vm_pindex_t count)
{
	struct swblk *sb;
	daddr_t n_free, s_free;
	vm_pindex_t offset, last;
	int i, limit, start;

	FUNC2(srcobject);
	if (srcobject->type != OBJT_SWAP || count == 0)
		return;

	FUNC5(&s_free, &n_free);
	offset = pindex;
	last = pindex + count;
	for (;;) {
		sb = FUNC0(&srcobject->un_pager.swp.swp_blks,
		    FUNC3(pindex, SWAP_META_PAGES));
		if (sb == NULL || sb->p >= last)
			break;
		start = pindex > sb->p ? pindex - sb->p : 0;
		limit = last - sb->p < SWAP_META_PAGES ? last - sb->p :
		    SWAP_META_PAGES;
		for (i = start; i < limit; i++) {
			if (sb->d[i] == SWAPBLK_NONE)
				continue;
			if (dstobject == NULL ||
			    !FUNC8(srcobject, dstobject, 
			    sb->p + i - offset, sb->d[i])) {
				FUNC7(&s_free, &n_free,
				    sb->d[i]);
			}
			sb->d[i] = SWAPBLK_NONE;
		}
		pindex = sb->p + SWAP_META_PAGES;
		if (FUNC6(sb, 0, start) &&
		    FUNC6(sb, limit, SWAP_META_PAGES)) {
			FUNC1(&srcobject->un_pager.swp.swp_blks,
			    sb->p);
			FUNC9(swblk_zone, sb);
		}
	}
	FUNC4(s_free, n_free);
}
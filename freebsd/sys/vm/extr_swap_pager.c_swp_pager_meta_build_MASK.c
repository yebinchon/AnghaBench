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
typedef  scalar_t__ daddr_t ;
struct TYPE_9__ {int /*<<< orphan*/  swp_blks; scalar_t__ writemappings; } ;
struct TYPE_10__ {TYPE_1__ swp; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_2__ un_pager; int /*<<< orphan*/ * handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int M_NOWAIT ; 
 int M_USE_RESERVE ; 
 scalar_t__ OBJT_SWAP ; 
 scalar_t__ SWAPBLK_NONE ; 
 int SWAP_META_PAGES ; 
 int FUNC2 (int /*<<< orphan*/ *,struct swblk*) ; 
 struct swblk* FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  VM_OOM_SWAPZ ; 
 scalar_t__ FUNC7 (int volatile*,int,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ curproc ; 
 scalar_t__ pageproc ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  swblk_zone ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,struct swblk*) ; 
 int /*<<< orphan*/  swpctrie_zone ; 
 struct swblk* FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct swblk*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static daddr_t
FUNC19(vm_object_t object, vm_pindex_t pindex, daddr_t swapblk)
{
	static volatile int swblk_zone_exhausted, swpctrie_zone_exhausted;
	struct swblk *sb, *sb1;
	vm_pindex_t modpi, rdpi;
	daddr_t prev_swapblk;
	int error, i;

	FUNC4(object);

	/*
	 * Convert default object to swap object if necessary
	 */
	if (object->type != OBJT_SWAP) {
		FUNC10(&object->un_pager.swp.swp_blks);

		/*
		 * Ensure that swap_pager_swapoff()'s iteration over
		 * object_list does not see a garbage pctrie.
		 */
		FUNC8();

		object->type = OBJT_SWAP;
		object->un_pager.swp.writemappings = 0;
		FUNC0(object->handle == NULL, ("default pager with handle"));
	}

	rdpi = FUNC12(pindex, SWAP_META_PAGES);
	sb = FUNC3(&object->un_pager.swp.swp_blks, rdpi);
	if (sb == NULL) {
		if (swapblk == SWAPBLK_NONE)
			return (SWAPBLK_NONE);
		for (;;) {
			sb = FUNC14(swblk_zone, M_NOWAIT | (curproc ==
			    pageproc ? M_USE_RESERVE : 0));
			if (sb != NULL) {
				sb->p = rdpi;
				for (i = 0; i < SWAP_META_PAGES; i++)
					sb->d[i] = SWAPBLK_NONE;
				if (FUNC7(&swblk_zone_exhausted,
				    1, 0))
					FUNC11("swblk zone ok\n");
				break;
			}
			FUNC6(object);
			if (FUNC16(swblk_zone)) {
				if (FUNC7(&swblk_zone_exhausted,
				    0, 1))
					FUNC11("swap blk zone exhausted, "
					    "increase kern.maxswzone\n");
				FUNC18(VM_OOM_SWAPZ);
				FUNC9("swzonxb", 10);
			} else
				FUNC17(swblk_zone);
			FUNC5(object);
			sb = FUNC3(&object->un_pager.swp.swp_blks,
			    rdpi);
			if (sb != NULL)
				/*
				 * Somebody swapped out a nearby page,
				 * allocating swblk at the rdpi index,
				 * while we dropped the object lock.
				 */
				goto allocated;
		}
		for (;;) {
			error = FUNC2(
			    &object->un_pager.swp.swp_blks, sb);
			if (error == 0) {
				if (FUNC7(&swpctrie_zone_exhausted,
				    1, 0))
					FUNC11("swpctrie zone ok\n");
				break;
			}
			FUNC6(object);
			if (FUNC16(swpctrie_zone)) {
				if (FUNC7(&swpctrie_zone_exhausted,
				    0, 1))
					FUNC11("swap pctrie zone exhausted, "
					    "increase kern.maxswzone\n");
				FUNC18(VM_OOM_SWAPZ);
				FUNC9("swzonxp", 10);
			} else
				FUNC17(swpctrie_zone);
			FUNC5(object);
			sb1 = FUNC3(&object->un_pager.swp.swp_blks,
			    rdpi);
			if (sb1 != NULL) {
				FUNC15(swblk_zone, sb);
				sb = sb1;
				goto allocated;
			}
		}
	}
allocated:
	FUNC1(sb->p == rdpi);

	modpi = pindex % SWAP_META_PAGES;
	/* Return prior contents of metadata. */
	prev_swapblk = sb->d[modpi];
	/* Enter block into metadata. */
	sb->d[modpi] = swapblk;

	/*
	 * Free the swblk if we end up with the empty page run.
	 */
	if (swapblk == SWAPBLK_NONE)
	    FUNC13(object, sb);
	return (prev_swapblk);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
struct TYPE_24__ {int /*<<< orphan*/  backing_object_offset; struct TYPE_24__* backing_object; } ;
struct TYPE_23__ {scalar_t__ pindex; int flags; int oflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MADV_WILLNEED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGA_REFERENCED ; 
 int PG_FICTITIOUS ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int VPO_UNMANAGED ; 
 int /*<<< orphan*/  listq ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,int) ; 
 TYPE_1__* FUNC11 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 TYPE_1__* FUNC13 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 scalar_t__ FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 

void
FUNC18(vm_object_t object, vm_pindex_t pindex, vm_pindex_t end,
    int advice)
{
	vm_pindex_t tpindex;
	vm_object_t backing_object, tobject;
	vm_page_t m, tm;

	if (object == NULL)
		return;

relookup:
	FUNC3(object);
	if (!FUNC5(object, advice)) {
		FUNC4(object);
		return;
	}
	for (m = FUNC11(object, pindex); pindex < end; pindex++) {
		tobject = object;

		/*
		 * If the next page isn't resident in the top-level object, we
		 * need to search the shadow chain.  When applying MADV_FREE, we
		 * take care to release any swap space used to store
		 * non-resident pages.
		 */
		if (m == NULL || pindex < m->pindex) {
			/*
			 * Optimize a common case: if the top-level object has
			 * no backing object, we can skip over the non-resident
			 * range in constant time.
			 */
			if (object->backing_object == NULL) {
				tpindex = (m != NULL && m->pindex < end) ?
				    m->pindex : end;
				FUNC6(object, advice,
				    pindex, tpindex - pindex);
				if ((pindex = tpindex) == end)
					break;
				goto next_page;
			}

			tpindex = pindex;
			do {
				FUNC6(tobject, advice,
				    tpindex, 1);
				/*
				 * Prepare to search the next object in the
				 * chain.
				 */
				backing_object = tobject->backing_object;
				if (backing_object == NULL)
					goto next_pindex;
				FUNC3(backing_object);
				tpindex +=
				    FUNC1(tobject->backing_object_offset);
				if (tobject != object)
					FUNC4(tobject);
				tobject = backing_object;
				if (!FUNC5(tobject, advice))
					goto next_pindex;
			} while ((tm = FUNC13(tobject, tpindex)) ==
			    NULL);
		} else {
next_page:
			tm = m;
			m = FUNC2(m, listq);
		}

		/*
		 * If the page is not in a normal state, skip it.  The page
		 * can not be invalidated while the object lock is held.
		 */
		if (!FUNC9(tm) || FUNC16(tm))
			goto next_pindex;
		FUNC0((tm->flags & PG_FICTITIOUS) == 0,
		    ("vm_object_madvise: page %p is fictitious", tm));
		FUNC0((tm->oflags & VPO_UNMANAGED) == 0,
		    ("vm_object_madvise: page %p is not managed", tm));
		if (FUNC14(tm) == 0) {
			if (object != tobject)
				FUNC4(object);
			if (advice == MADV_WILLNEED) {
				/*
				 * Reference the page before unlocking and
				 * sleeping so that the page daemon is less
				 * likely to reclaim it.
				 */
				FUNC8(tm, PGA_REFERENCED);
			}
			FUNC10(tm, "madvpo", false);
  			goto relookup;
		}
		FUNC12(tm);
		FUNC7(tm, advice);
		FUNC15(tm);
		FUNC17(tm);
		FUNC6(tobject, advice, tm->pindex, 1);
next_pindex:
		if (tobject != object)
			FUNC4(tobject);
	}
	FUNC4(object);
}
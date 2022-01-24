#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_2__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_3__* vm_object_t ;
typedef  TYPE_4__* vm_map_entry_t ;
struct faultstate {TYPE_1__* map; TYPE_4__* entry; TYPE_3__* first_object; TYPE_3__* object; } ;
struct TYPE_22__ {scalar_t__ start; int /*<<< orphan*/  offset; } ;
struct TYPE_21__ {int flags; } ;
struct TYPE_20__ {scalar_t__ pindex; } ;
struct TYPE_19__ {int /*<<< orphan*/  pmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MADV_DONTNEED ; 
 int MAXPAGESIZES ; 
 int OBJ_FICTITIOUS ; 
 int OBJ_UNMANAGED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SIZE ; 
 TYPE_2__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ VM_FAULT_DONTNEED_MIN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  listq ; 
 scalar_t__* pagesizes ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 TYPE_2__* FUNC13 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC17(const struct faultstate *fs, vm_offset_t vaddr, int ahead)
{
	vm_map_entry_t entry;
	vm_object_t first_object, object;
	vm_offset_t end, start;
	vm_page_t m, m_next;
	vm_pindex_t pend, pstart;
	vm_size_t size;

	object = fs->object;
	FUNC2(object);
	first_object = fs->first_object;
	if (first_object != object) {
		if (!FUNC3(first_object)) {
			FUNC5(object);
			FUNC4(first_object);
			FUNC4(object);
		}
	}
	/* Neither fictitious nor unmanaged pages can be reclaimed. */
	if ((first_object->flags & (OBJ_FICTITIOUS | OBJ_UNMANAGED)) == 0) {
		size = VM_FAULT_DONTNEED_MIN;
		if (MAXPAGESIZES > 1 && size < pagesizes[1])
			size = pagesizes[1];
		end = FUNC9(vaddr, size);
		if (vaddr - end >= size - PAGE_SIZE - FUNC8(ahead) &&
		    (entry = fs->entry)->start < end) {
			if (end - entry->start < size)
				start = entry->start;
			else
				start = end - size;
			FUNC7(fs->map->pmap, start, end, MADV_DONTNEED);
			pstart = FUNC0(entry->offset) + FUNC6(start -
			    entry->start);
			m_next = FUNC13(first_object, pstart);
			pend = FUNC0(entry->offset) + FUNC6(end -
			    entry->start);
			while ((m = m_next) != NULL && m->pindex < pend) {
				m_next = FUNC1(m, listq);
				if (!FUNC10(m) ||
				    FUNC11(m))
					continue;

				/*
				 * Don't clear PGA_REFERENCED, since it would
				 * likely represent a reference by a different
				 * process.
				 *
				 * Typically, at this point, prefetched pages
				 * are still in the inactive queue.  Only
				 * pages that triggered page faults are in the
				 * active queue.
				 */
				FUNC15(m);
				if (!FUNC14(m))
					FUNC12(m);
				FUNC16(m);
			}
		}
	}
	if (first_object != object)
		FUNC5(first_object);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_pindex_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_2__* vm_map_t ;
typedef  TYPE_3__* vm_map_entry_t ;
struct TYPE_28__ {int /*<<< orphan*/ * backing_object; } ;
struct TYPE_25__ {TYPE_4__* vm_object; } ;
struct TYPE_27__ {scalar_t__ start; int eflags; scalar_t__ end; scalar_t__ wired_count; TYPE_1__ object; int /*<<< orphan*/  protection; int /*<<< orphan*/  offset; } ;
struct TYPE_26__ {int /*<<< orphan*/  pmap; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MADV_AUTOSYNC 137 
#define  MADV_CORE 136 
#define  MADV_DONTNEED 135 
#define  MADV_FREE 134 
#define  MADV_NOCORE 133 
#define  MADV_NORMAL 132 
#define  MADV_NOSYNC 131 
#define  MADV_RANDOM 130 
#define  MADV_SEQUENTIAL 129 
#define  MADV_WILLNEED 128 
 int /*<<< orphan*/  MAP_ENTRY_BEHAV_NORMAL ; 
 int /*<<< orphan*/  MAP_ENTRY_BEHAV_RANDOM ; 
 int /*<<< orphan*/  MAP_ENTRY_BEHAV_SEQUENTIAL ; 
 int MAP_ENTRY_IS_SUB_MAP ; 
 int MAP_ENTRY_NOCOREDUMP ; 
 int MAP_ENTRY_NOSYNC ; 
 int /*<<< orphan*/  MAP_PREFAULT_MADVISE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (TYPE_2__*,scalar_t__,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,TYPE_4__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,scalar_t__,scalar_t__,int) ; 

int
FUNC18(
	vm_map_t map,
	vm_offset_t start,
	vm_offset_t end,
	int behav)
{
	vm_map_entry_t current, entry;
	bool modify_map;

	/*
	 * Some madvise calls directly modify the vm_map_entry, in which case
	 * we need to use an exclusive lock on the map and we need to perform
	 * various clipping operations.  Otherwise we only need a read-lock
	 * on the map.
	 */
	switch(behav) {
	case MADV_NORMAL:
	case MADV_SEQUENTIAL:
	case MADV_RANDOM:
	case MADV_NOSYNC:
	case MADV_AUTOSYNC:
	case MADV_NOCORE:
	case MADV_CORE:
		if (start == end)
			return (0);
		modify_map = true;
		FUNC10(map);
		break;
	case MADV_WILLNEED:
	case MADV_DONTNEED:
	case MADV_FREE:
		if (start == end)
			return (0);
		modify_map = false;
		FUNC11(map);
		break;
	default:
		return (EINVAL);
	}

	/*
	 * Locate starting entry and clip if necessary.
	 */
	FUNC1(map, start, end);

	if (FUNC12(map, start, &entry)) {
		if (modify_map)
			FUNC6(map, entry, start);
	} else {
		entry = FUNC9(entry);
	}

	if (modify_map) {
		/*
		 * madvise behaviors that are implemented in the vm_map_entry.
		 *
		 * We clip the vm_map_entry so that behavioral changes are
		 * limited to the specified address range.
		 */
		for (current = entry; current->start < end;
		    current = FUNC9(current)) {
			if (current->eflags & MAP_ENTRY_IS_SUB_MAP)
				continue;

			FUNC5(map, current, end);

			switch (behav) {
			case MADV_NORMAL:
				FUNC8(current, MAP_ENTRY_BEHAV_NORMAL);
				break;
			case MADV_SEQUENTIAL:
				FUNC8(current, MAP_ENTRY_BEHAV_SEQUENTIAL);
				break;
			case MADV_RANDOM:
				FUNC8(current, MAP_ENTRY_BEHAV_RANDOM);
				break;
			case MADV_NOSYNC:
				current->eflags |= MAP_ENTRY_NOSYNC;
				break;
			case MADV_AUTOSYNC:
				current->eflags &= ~MAP_ENTRY_NOSYNC;
				break;
			case MADV_NOCORE:
				current->eflags |= MAP_ENTRY_NOCOREDUMP;
				break;
			case MADV_CORE:
				current->eflags &= ~MAP_ENTRY_NOCOREDUMP;
				break;
			default:
				break;
			}
			FUNC14(map,
			    FUNC7(current), current);
		}
		FUNC14(map, FUNC7(current),
		    current);
		FUNC15(map);
	} else {
		vm_pindex_t pstart, pend;

		/*
		 * madvise behaviors that are implemented in the underlying
		 * vm_object.
		 *
		 * Since we don't clip the vm_map_entry, we have to clip
		 * the vm_object pindex and count.
		 */
		for (current = entry; current->start < end;
		    current = FUNC9(current)) {
			vm_offset_t useEnd, useStart;

			if (current->eflags & MAP_ENTRY_IS_SUB_MAP)
				continue;

			/*
			 * MADV_FREE would otherwise rewind time to
			 * the creation of the shadow object.  Because
			 * we hold the VM map read-locked, neither the
			 * entry's object nor the presence of a
			 * backing object can change.
			 */
			if (behav == MADV_FREE &&
			    current->object.vm_object != NULL &&
			    current->object.vm_object->backing_object != NULL)
				continue;

			pstart = FUNC0(current->offset);
			pend = pstart + FUNC2(current->end - current->start);
			useStart = current->start;
			useEnd = current->end;

			if (current->start < start) {
				pstart += FUNC2(start - current->start);
				useStart = start;
			}
			if (current->end > end) {
				pend -= FUNC2(current->end - end);
				useEnd = end;
			}

			if (pstart >= pend)
				continue;

			/*
			 * Perform the pmap_advise() before clearing
			 * PGA_REFERENCED in vm_page_advise().  Otherwise, a
			 * concurrent pmap operation, such as pmap_remove(),
			 * could clear a reference in the pmap and set
			 * PGA_REFERENCED on the page before the pmap_advise()
			 * had completed.  Consequently, the page would appear
			 * referenced based upon an old reference that
			 * occurred before this pmap_advise() ran.
			 */
			if (behav == MADV_DONTNEED || behav == MADV_FREE)
				FUNC3(map->pmap, useStart, useEnd,
				    behav);

			FUNC17(current->object.vm_object, pstart,
			    pend, behav);

			/*
			 * Pre-populate paging structures in the
			 * WILLNEED case.  For wired entries, the
			 * paging structures are already populated.
			 */
			if (behav == MADV_WILLNEED &&
			    current->wired_count == 0) {
				FUNC13(map,
				    useStart,
				    current->protection,
				    current->object.vm_object,
				    pstart,
				    FUNC4(pend - pstart),
				    MAP_PREFAULT_MADVISE
				);
			}
		}
		FUNC16(map);
	}
	return (0);
}
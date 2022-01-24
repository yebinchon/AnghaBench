#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_14__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  TYPE_3__* vm_map_t ;
typedef  TYPE_4__* vm_map_entry_t ;
struct TYPE_18__ {TYPE_2__* vm_object; } ;
struct TYPE_21__ {int eflags; scalar_t__ end; scalar_t__ start; struct TYPE_21__* defer_next; TYPE_1__ object; int /*<<< orphan*/  offset; int /*<<< orphan*/ * cred; } ;
struct TYPE_20__ {scalar_t__ system_map; int /*<<< orphan*/  size; } ;
struct TYPE_19__ {int ref_count; int flags; scalar_t__ type; scalar_t__ size; scalar_t__ charge; int /*<<< orphan*/ * cred; } ;
struct TYPE_17__ {TYPE_4__* td_map_def_user; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int MAP_ENTRY_GUARD ; 
 int MAP_ENTRY_IS_SUB_MAP ; 
 int MAP_ENTRY_NEEDS_COPY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  OBJPR_NOTMAPPED ; 
 scalar_t__ OBJT_SWAP ; 
 int OBJ_NOSPLIT ; 
 int OBJ_ONEMAPPING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  UNLINK_MERGE_NONE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_14__* curthread ; 
 TYPE_2__* kernel_object ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(vm_map_t map, vm_map_entry_t entry)
{
	vm_object_t object;
	vm_pindex_t offidxstart, offidxend, count, size1;
	vm_size_t size;

	FUNC11(map, entry, UNLINK_MERGE_NONE);
	object = entry->object.vm_object;

	if ((entry->eflags & MAP_ENTRY_GUARD) != 0) {
		FUNC1(entry->cred == NULL);
		FUNC1((entry->eflags & MAP_ENTRY_IS_SUB_MAP) == 0);
		FUNC1(object == NULL);
		FUNC10(entry, map->system_map);
		return;
	}

	size = entry->end - entry->start;
	map->size -= size;

	if (entry->cred != NULL) {
		FUNC9(size, entry->cred);
		FUNC6(entry->cred);
	}

	if ((entry->eflags & MAP_ENTRY_IS_SUB_MAP) == 0 &&
	    (object != NULL)) {
		FUNC0(entry->cred == NULL || object->cred == NULL ||
		    (entry->eflags & MAP_ENTRY_NEEDS_COPY),
		    ("OVERCOMMIT vm_map_entry_delete: both cred %p", entry));
		count = FUNC5(size);
		offidxstart = FUNC2(entry->offset);
		offidxend = offidxstart + count;
		FUNC3(object);
		if (object->ref_count != 1 && ((object->flags & (OBJ_NOSPLIT |
		    OBJ_ONEMAPPING)) == OBJ_ONEMAPPING ||
		    object == kernel_object)) {
			FUNC12(object);

			/*
			 * The option OBJPR_NOTMAPPED can be passed here
			 * because vm_map_delete() already performed
			 * pmap_remove() on the only mapping to this range
			 * of pages. 
			 */
			FUNC13(object, offidxstart, offidxend,
			    OBJPR_NOTMAPPED);
			if (object->type == OBJT_SWAP)
				FUNC8(object, offidxstart,
				    count);
			if (offidxend >= object->size &&
			    offidxstart < object->size) {
				size1 = object->size;
				object->size = offidxstart;
				if (object->cred != NULL) {
					size1 -= object->size;
					FUNC0(object->charge >= FUNC7(size1),
					    ("object %p charge < 0", object));
					FUNC9(FUNC7(size1),
					    object->cred);
					object->charge -= FUNC7(size1);
				}
			}
		}
		FUNC4(object);
	} else
		entry->object.vm_object = NULL;
	if (map->system_map)
		FUNC10(entry, TRUE);
	else {
		entry->defer_next = curthread->td_map_def_user;
		curthread->td_map_def_user = entry;
	}
}
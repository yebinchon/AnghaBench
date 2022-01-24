#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_20__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_ooffset_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  TYPE_3__* vm_map_t ;
typedef  TYPE_4__* vm_map_entry_t ;
struct ucred {int dummy; } ;
struct TYPE_25__ {TYPE_2__* vm_object; } ;
struct TYPE_29__ {int eflags; scalar_t__ wired_count; int protection; struct ucred* cred; scalar_t__ offset; TYPE_1__ object; scalar_t__ start; scalar_t__ end; struct TYPE_29__* defer_next; } ;
struct TYPE_28__ {int /*<<< orphan*/  pmap; } ;
struct TYPE_27__ {scalar_t__ type; int flags; scalar_t__ charge; struct ucred* cred; int /*<<< orphan*/ * handle; } ;
struct TYPE_26__ {struct ucred* td_ucred; TYPE_4__* td_map_def_user; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int MAP_ENTRY_COW ; 
 int MAP_ENTRY_IS_SUB_MAP ; 
 int MAP_ENTRY_NEEDS_COPY ; 
 int MAP_ENTRY_WRITECNT ; 
 scalar_t__ OBJT_DEFAULT ; 
 scalar_t__ OBJT_SWAP ; 
 int OBJ_NOSPLIT ; 
 int OBJ_ONEMAPPING ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC5 (struct ucred*) ; 
 TYPE_20__* curthread ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_3__*,TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 

__attribute__((used)) static void
FUNC15(
	vm_map_t src_map,
	vm_map_t dst_map,
	vm_map_entry_t src_entry,
	vm_map_entry_t dst_entry,
	vm_ooffset_t *fork_charge)
{
	vm_object_t src_object;
	vm_map_entry_t fake_entry;
	vm_offset_t size;
	struct ucred *cred;
	int charged;

	FUNC2(dst_map);

	if ((dst_entry->eflags|src_entry->eflags) & MAP_ENTRY_IS_SUB_MAP)
		return;

	if (src_entry->wired_count == 0 ||
	    (src_entry->protection & VM_PROT_WRITE) == 0) {
		/*
		 * If the source entry is marked needs_copy, it is already
		 * write-protected.
		 */
		if ((src_entry->eflags & MAP_ENTRY_NEEDS_COPY) == 0 &&
		    (src_entry->protection & VM_PROT_WRITE) != 0) {
			FUNC7(src_map->pmap,
			    src_entry->start,
			    src_entry->end,
			    src_entry->protection & ~VM_PROT_WRITE);
		}

		/*
		 * Make a copy of the object.
		 */
		size = src_entry->end - src_entry->start;
		if ((src_object = src_entry->object.vm_object) != NULL) {
			FUNC3(src_object);
			charged = FUNC0(src_entry);
			if (src_object->handle == NULL &&
			    (src_object->type == OBJT_DEFAULT ||
			    src_object->type == OBJT_SWAP)) {
				FUNC11(src_object);
				if ((src_object->flags & (OBJ_NOSPLIT |
				    OBJ_ONEMAPPING)) == OBJ_ONEMAPPING) {
					FUNC14(src_entry);
					src_object =
					    src_entry->object.vm_object;
				}
			}
			FUNC13(src_object);
			FUNC10(src_object, OBJ_ONEMAPPING);
			if (src_entry->cred != NULL &&
			    !(src_entry->eflags & MAP_ENTRY_NEEDS_COPY)) {
				FUNC1(src_object->cred == NULL,
				    ("OVERCOMMIT: vm_map_copy_entry: cred %p",
				     src_object));
				src_object->cred = src_entry->cred;
				src_object->charge = size;
			}
			FUNC4(src_object);
			dst_entry->object.vm_object = src_object;
			if (charged) {
				cred = curthread->td_ucred;
				FUNC5(cred);
				dst_entry->cred = cred;
				*fork_charge += size;
				if (!(src_entry->eflags &
				      MAP_ENTRY_NEEDS_COPY)) {
					FUNC5(cred);
					src_entry->cred = cred;
					*fork_charge += size;
				}
			}
			src_entry->eflags |= MAP_ENTRY_COW |
			    MAP_ENTRY_NEEDS_COPY;
			dst_entry->eflags |= MAP_ENTRY_COW |
			    MAP_ENTRY_NEEDS_COPY;
			dst_entry->offset = src_entry->offset;
			if (src_entry->eflags & MAP_ENTRY_WRITECNT) {
				/*
				 * MAP_ENTRY_WRITECNT cannot
				 * indicate write reference from
				 * src_entry, since the entry is
				 * marked as needs copy.  Allocate a
				 * fake entry that is used to
				 * decrement object->un_pager writecount
				 * at the appropriate time.  Attach
				 * fake_entry to the deferred list.
				 */
				fake_entry = FUNC9(dst_map);
				fake_entry->eflags = MAP_ENTRY_WRITECNT;
				src_entry->eflags &= ~MAP_ENTRY_WRITECNT;
				FUNC12(src_object);
				fake_entry->object.vm_object = src_object;
				fake_entry->start = src_entry->start;
				fake_entry->end = src_entry->end;
				fake_entry->defer_next =
				    curthread->td_map_def_user;
				curthread->td_map_def_user = fake_entry;
			}

			FUNC6(dst_map->pmap, src_map->pmap,
			    dst_entry->start, dst_entry->end - dst_entry->start,
			    src_entry->start);
		} else {
			dst_entry->object.vm_object = NULL;
			dst_entry->offset = 0;
			if (src_entry->cred != NULL) {
				dst_entry->cred = curthread->td_ucred;
				FUNC5(dst_entry->cred);
				*fork_charge += size;
			}
		}
	} else {
		/*
		 * We don't want to make writeable wired pages copy-on-write.
		 * Immediately copy these pages into the new map by simulating
		 * page faults.  The new pages are pageable.
		 */
		FUNC8(dst_map, src_map, dst_entry, src_entry,
		    fork_charge);
	}
}
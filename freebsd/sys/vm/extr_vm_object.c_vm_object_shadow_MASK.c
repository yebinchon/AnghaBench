#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  scalar_t__ vm_ooffset_t ;
typedef  TYPE_1__* vm_object_t ;
struct TYPE_9__ {int ref_count; scalar_t__ type; int flags; int pg_color; int /*<<< orphan*/  shadow_count; int /*<<< orphan*/  shadow_head; int /*<<< orphan*/  domain; scalar_t__ backing_object_offset; struct TYPE_9__* backing_object; int /*<<< orphan*/ * handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ OBJT_DEFAULT ; 
 scalar_t__ OBJT_SWAP ; 
 int OBJ_COLORED ; 
 int FUNC1 (scalar_t__) ; 
 int VM_NFREEORDER ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shadow_list ; 
 TYPE_1__* FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC8(
	vm_object_t *object,	/* IN/OUT */
	vm_ooffset_t *offset,	/* IN/OUT */
	vm_size_t length)
{
	vm_object_t source;
	vm_object_t result;

	source = *object;

	/*
	 * Don't create the new object if the old object isn't shared.
	 */
	if (source != NULL) {
		FUNC2(source);
		if (source->ref_count == 1 &&
		    source->handle == NULL &&
		    (source->type == OBJT_DEFAULT ||
		     source->type == OBJT_SWAP)) {
			FUNC3(source);
			return;
		}
		FUNC3(source);
	}

	/*
	 * Allocate a new object with the given length.
	 */
	result = FUNC7(OBJT_DEFAULT, FUNC6(length));

	/*
	 * The new object shadows the source object, adding a reference to it.
	 * Our caller changes his reference to point to the new object,
	 * removing a reference to the source object.  Net result: no change
	 * of reference count.
	 *
	 * Try to optimize the result object's page color when shadowing
	 * in order to maintain page coloring consistency in the combined 
	 * shadowed object.
	 */
	result->backing_object = source;
	/*
	 * Store the offset into the source object, and fix up the offset into
	 * the new object.
	 */
	result->backing_object_offset = *offset;
	if (source != NULL) {
		FUNC4(source);
		result->domain = source->domain;
		FUNC0(&source->shadow_head, result, shadow_list);
		source->shadow_count++;
#if VM_NRESERVLEVEL > 0
		result->flags |= source->flags & OBJ_COLORED;
		result->pg_color = (source->pg_color + OFF_TO_IDX(*offset)) &
		    ((1 << (VM_NFREEORDER - 1)) - 1);
#endif
		FUNC5(source);
	}


	/*
	 * Return the new things
	 */
	*offset = 0;
	*object = result;
}
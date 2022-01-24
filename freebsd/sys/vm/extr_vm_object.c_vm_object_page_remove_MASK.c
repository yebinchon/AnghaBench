#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
struct TYPE_23__ {int flags; scalar_t__ resident_page_count; scalar_t__ ref_count; } ;
struct TYPE_22__ {scalar_t__ pindex; int flags; scalar_t__ dirty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int OBJPR_CLEANONLY ; 
 int OBJPR_NOTMAPPED ; 
 int OBJ_UNMANAGED ; 
 int PG_FICTITIOUS ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  listq ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_1__* FUNC6 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 

void
FUNC17(vm_object_t object, vm_pindex_t start, vm_pindex_t end,
    int options)
{
	vm_page_t p, next;

	FUNC2(object);
	FUNC0((object->flags & OBJ_UNMANAGED) == 0 ||
	    (options & (OBJPR_CLEANONLY | OBJPR_NOTMAPPED)) == OBJPR_NOTMAPPED,
	    ("vm_object_page_remove: illegal options for object %p", object));
	if (object->resident_page_count == 0)
		return;
	FUNC4(object, 1);
again:
	p = FUNC6(object, start);

	/*
	 * Here, the variable "p" is either (1) the page with the least pindex
	 * greater than or equal to the parameter "start" or (2) NULL. 
	 */
	for (; p != NULL && (p->pindex < end || end == 0); p = next) {
		next = FUNC1(p, listq);

		/*
		 * If the page is wired for any reason besides the existence
		 * of managed, wired mappings, then it cannot be freed.  For
		 * example, fictitious pages, which represent device memory,
		 * are inherently wired and cannot be freed.  They can,
		 * however, be invalidated if the option OBJPR_CLEANONLY is
		 * not specified.
		 */
		if (FUNC13(p) == 0) {
			FUNC10(p, "vmopar");
			goto again;
		}
		if (FUNC15(p)) {
wired:
			if ((options & OBJPR_NOTMAPPED) == 0 &&
			    object->ref_count != 0)
				FUNC3(p);
			if ((options & OBJPR_CLEANONLY) == 0) {
				FUNC8(p);
				FUNC14(p);
			}
			FUNC16(p);
			continue;
		}
		FUNC0((p->flags & PG_FICTITIOUS) == 0,
		    ("vm_object_page_remove: page %p is fictitious", p));
		if ((options & OBJPR_CLEANONLY) != 0 &&
		    !FUNC9(p)) {
			if ((options & OBJPR_NOTMAPPED) == 0 &&
			    object->ref_count != 0 &&
			    !FUNC12(p))
				goto wired;
			if (p->dirty != 0) {
				FUNC16(p);
				continue;
			}
		}
		if ((options & OBJPR_NOTMAPPED) == 0 &&
		    object->ref_count != 0 && !FUNC11(p))
			goto wired;
		FUNC7(p);
	}
	FUNC5(object);
}
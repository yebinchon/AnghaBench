#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
struct TYPE_13__ {int /*<<< orphan*/  memq; struct TYPE_13__* backing_object; } ;
struct TYPE_12__ {TYPE_2__* object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int OBSC_COLLAPSE_NOWAIT ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static vm_page_t
FUNC7(vm_object_t object, vm_page_t p, vm_page_t next,
    int op)
{
	vm_object_t backing_object;

	FUNC2(object);
	backing_object = object->backing_object;
	FUNC2(backing_object);

	FUNC0(p == NULL || p->object == object || p->object == backing_object,
	    ("invalid ownership %p %p %p", p, object, backing_object));
	if ((op & OBSC_COLLAPSE_NOWAIT) != 0)
		return (next);
	/* The page is only NULL when rename fails. */
	if (p == NULL) {
		FUNC6();
	} else {
		if (p->object == object)
			FUNC4(backing_object);
		else
			FUNC4(object);
		FUNC5(p, "vmocol", false);
	}
	FUNC3(object);
	FUNC3(backing_object);
	return (FUNC1(&backing_object->memq));
}
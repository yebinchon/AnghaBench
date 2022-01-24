#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
struct TYPE_10__ {scalar_t__ busy; } ;
struct TYPE_9__ {TYPE_2__* object; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC5(vm_page_t m, const char *msg)
{
	vm_object_t obj;

	FUNC4(m, MA_NOTOWNED);
	FUNC0(m->object);

	/*
	 * The page-specific object must be cached because page
	 * identity can change during the sleep, causing the
	 * re-lock of a different object.
	 * It is assumed that a reference to the object is already
	 * held by the callers.
	 */
	obj = m->object;
	if (FUNC2(m) || (obj != NULL && obj->busy)) {
		FUNC3(m, msg, false);
		FUNC1(obj);
		return (TRUE);
	}
	return (FALSE);
}
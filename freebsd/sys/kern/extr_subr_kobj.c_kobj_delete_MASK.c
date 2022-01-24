#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct malloc_type {int dummy; } ;
typedef  TYPE_2__* kobj_t ;
typedef  TYPE_3__* kobj_class_t ;
struct TYPE_9__ {int refs; } ;
struct TYPE_8__ {TYPE_1__* ops; } ;
struct TYPE_7__ {TYPE_3__* cls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct malloc_type*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

void
FUNC5(kobj_t obj, struct malloc_type *mtype)
{
	kobj_class_t cls = obj->ops->cls;
	int refs;

	/*
	 * Consider freeing the compiled method table for the class
	 * after its last instance is deleted. As an optimisation, we
	 * should defer this for a short while to avoid thrashing.
	 */
	FUNC0(MA_NOTOWNED);
	FUNC1();
	cls->refs--;
	refs = cls->refs;
	FUNC2();

	if (!refs)
		FUNC4(cls);

	obj->ops = NULL;
	if (mtype)
		FUNC3(obj, mtype);
}
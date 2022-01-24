#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct malloc_type {int dummy; } ;
typedef  int /*<<< orphan*/ * kobj_t ;
typedef  TYPE_1__* kobj_class_t ;
struct TYPE_4__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct malloc_type*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,struct malloc_type*,int) ; 

kobj_t
FUNC3(kobj_class_t cls, struct malloc_type *mtype, int mflags)
{
	kobj_t obj;

	obj = FUNC2(cls->size, mtype, mflags | M_ZERO);
	if (obj == NULL)
		return (NULL);
	if (FUNC1(obj, cls, mflags) != 0) {
		FUNC0(obj, mtype);
		return (NULL);
	}
	return (obj);
}
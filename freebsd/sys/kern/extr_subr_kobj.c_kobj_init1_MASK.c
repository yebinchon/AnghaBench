#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kobj_t ;
typedef  TYPE_1__* kobj_class_t ;
struct TYPE_5__ {int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(kobj_t obj, kobj_class_t cls, int mflags)
{
	int error;

	FUNC0();
	while (cls->ops == NULL) {
		/*
		 * kobj_class_compile doesn't want the lock held
		 * because of the call to malloc - we drop the lock
		 * and re-try.
		 */
		FUNC1();
		error = FUNC2(cls, mflags);
		if (error != 0)
			return (error);
		FUNC0();
	}
	FUNC3(obj, cls);
	FUNC1();
	return (0);
}
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
struct kobj_ops {int dummy; } ;
typedef  int /*<<< orphan*/ * kobj_ops_t ;
typedef  TYPE_1__* kobj_class_t ;
struct TYPE_4__ {scalar_t__ ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  M_KOBJ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(kobj_class_t cls, int mflags)
{
	kobj_ops_t ops;

	FUNC0(MA_NOTOWNED);

	ops = FUNC5(sizeof(struct kobj_ops), M_KOBJ, mflags);
	if (ops == NULL)
		return (ENOMEM);

	/*
	 * We may have lost a race for kobj_class_compile here - check
	 * to make sure someone else hasn't already compiled this
	 * class.
	 */
	FUNC1();
	if (cls->ops) {
		FUNC2();
		FUNC3(ops, M_KOBJ);
		return (0);
	}
	FUNC4(cls, ops);
	FUNC2();
	return (0);
}
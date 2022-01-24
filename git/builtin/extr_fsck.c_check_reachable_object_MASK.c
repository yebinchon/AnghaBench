#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct object {int flags; int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_REACHABLE ; 
 int HAS_OBJ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct object*) ; 
 int /*<<< orphan*/  errors_found ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct object*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct object *obj)
{
	/*
	 * We obviously want the object to be parsed,
	 * except if it was in a pack-file and we didn't
	 * do a full fsck
	 */
	if (!(obj->flags & HAS_OBJ)) {
		if (FUNC3(&obj->oid))
			return;
		if (FUNC2(&obj->oid))
			return; /* it is in pack - forget about it */
		FUNC5(FUNC0("missing %s %s"), FUNC4(obj),
			  FUNC1(obj));
		errors_found |= ERROR_REACHABLE;
		return;
	}
}
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
struct object {int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 scalar_t__ MA_ALLOW_PROMISOR ; 
 scalar_t__ arg_missing_action ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct object*,char const*,void*) ; 

__attribute__((used)) static void FUNC4(struct object *obj, const char *name, void *data)
{
	FUNC0(arg_missing_action == MA_ALLOW_PROMISOR);

	/*
	 * Quietly ignore EXPECTED missing objects.  This avoids problems with
	 * staging them now and getting an odd error later.
	 */
	if (!FUNC1(&obj->oid) && FUNC2(&obj->oid))
		return;

	FUNC3(obj, name, data);
}
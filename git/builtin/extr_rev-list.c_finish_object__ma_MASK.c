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
struct object {int /*<<< orphan*/  oid; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  MA_ALLOW_ANY 131 
#define  MA_ALLOW_PROMISOR 130 
#define  MA_ERROR 129 
#define  MA_PRINT 128 
 int arg_missing_action ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  missing_objects ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6(struct object *obj)
{
	/*
	 * Whether or not we try to dynamically fetch missing objects
	 * from the server, we currently DO NOT have the object.  We
	 * can either print, allow (ignore), or conditionally allow
	 * (ignore) them.
	 */
	switch (arg_missing_action) {
	case MA_ERROR:
		FUNC1("missing %s object '%s'",
		    FUNC5(obj->type), FUNC3(&obj->oid));
		return;

	case MA_ALLOW_ANY:
		return;

	case MA_PRINT:
		FUNC4(&missing_objects, &obj->oid);
		return;

	case MA_ALLOW_PROMISOR:
		if (FUNC2(&obj->oid))
			return;
		FUNC1("unexpected missing %s object '%s'",
		    FUNC5(obj->type), FUNC3(&obj->oid));
		return;

	default:
		FUNC0("unhandled missing_action");
		return;
	}
}
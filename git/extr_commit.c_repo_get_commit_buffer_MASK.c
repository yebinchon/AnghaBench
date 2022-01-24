#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct repository {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 void* FUNC1 (struct repository*,struct commit const*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (struct repository*,int /*<<< orphan*/ *,int*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

const void *FUNC5(struct repository *r,
				   const struct commit *commit,
				   unsigned long *sizep)
{
	const void *ret = FUNC1(r, commit, sizep);
	if (!ret) {
		enum object_type type;
		unsigned long size;
		ret = FUNC3(r, &commit->object.oid, &type, &size);
		if (!ret)
			FUNC0("cannot read commit object %s",
			    FUNC2(&commit->object.oid));
		if (type != OBJ_COMMIT)
			FUNC0("expected commit for %s, got %s",
			    FUNC2(&commit->object.oid), FUNC4(type));
		if (sizep)
			*sizep = size;
	}
	return ret;
}
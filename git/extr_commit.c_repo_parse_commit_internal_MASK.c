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
struct TYPE_2__ {int /*<<< orphan*/  oid; scalar_t__ parsed; } ;
struct commit {TYPE_1__ object; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int OBJ_COMMIT ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct repository*,struct commit*,void*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct repository*,struct commit*) ; 
 void* FUNC5 (struct repository*,int /*<<< orphan*/ *,int*,unsigned long*) ; 
 scalar_t__ save_commit_buffer ; 
 int /*<<< orphan*/  FUNC6 (struct repository*,struct commit*,void*,unsigned long) ; 

int FUNC7(struct repository *r,
			       struct commit *item,
			       int quiet_on_missing,
			       int use_commit_graph)
{
	enum object_type type;
	void *buffer;
	unsigned long size;
	int ret;

	if (!item)
		return -1;
	if (item->object.parsed)
		return 0;
	if (use_commit_graph && FUNC4(r, item))
		return 0;
	buffer = FUNC5(r, &item->object.oid, &type, &size);
	if (!buffer)
		return quiet_on_missing ? -1 :
			FUNC0("Could not read %s",
			     FUNC2(&item->object.oid));
	if (type != OBJ_COMMIT) {
		FUNC1(buffer);
		return FUNC0("Object %s not a commit",
			     FUNC2(&item->object.oid));
	}

	ret = FUNC3(r, item, buffer, size, 0);
	if (save_commit_buffer && !ret) {
		FUNC6(r, item, buffer, size);
		return 0;
	}
	FUNC1(buffer);
	return ret;
}
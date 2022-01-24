#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct object_id {int dummy; } ;
struct commit_list {TYPE_2__* item; struct commit_list* next; } ;
struct commit {struct commit_list* parents; } ;
struct TYPE_3__ {struct object_id oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  NORMAL ; 
 int /*<<< orphan*/  REVERSED ; 
 int FUNC0 (struct commit_list*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,struct object_id*) ; 
 struct commit* FUNC3 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct object_id*,char const*) ; 
 char* FUNC5 (char const*,char*) ; 
 int FUNC6 (char*,char**,int) ; 
 scalar_t__ symbolic ; 
 int /*<<< orphan*/  the_repository ; 
 char* FUNC7 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC8(const char *arg)
{
	char *dotdot;
	struct object_id oid;
	struct commit *commit;
	struct commit_list *parents;
	int parent_number;
	int include_rev = 0;
	int include_parents = 0;
	int exclude_parent = 0;

	if ((dotdot = FUNC5(arg, "^!"))) {
		include_rev = 1;
		if (dotdot[2])
			return 0;
	} else if ((dotdot = FUNC5(arg, "^@"))) {
		include_parents = 1;
		if (dotdot[2])
			return 0;
	} else if ((dotdot = FUNC5(arg, "^-"))) {
		include_rev = 1;
		exclude_parent = 1;

		if (dotdot[2]) {
			char *end;
			exclude_parent = FUNC6(dotdot + 2, &end, 10);
			if (*end != '\0' || !exclude_parent)
				return 0;
		}
	} else
		return 0;

	*dotdot = 0;
	if (FUNC2(arg, &oid) ||
	    !(commit = FUNC3(the_repository, &oid))) {
		*dotdot = '^';
		return 0;
	}

	if (exclude_parent &&
	    exclude_parent > FUNC0(commit->parents)) {
		*dotdot = '^';
		return 0;
	}

	if (include_rev)
		FUNC4(NORMAL, &oid, arg);
	for (parents = commit->parents, parent_number = 1;
	     parents;
	     parents = parents->next, parent_number++) {
		char *name = NULL;

		if (exclude_parent && parent_number != exclude_parent)
			continue;

		if (symbolic)
			name = FUNC7("%s^%d", arg, parent_number);
		FUNC4(include_parents ? NORMAL : REVERSED,
			 &parents->item->object.oid, name);
		FUNC1(name);
	}

	*dotdot = '^';
	return 1;
}
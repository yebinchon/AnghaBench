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
struct object_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,struct object_id*,char**) ; 
 struct commit* FUNC2 (char*,struct commit*) ; 
 scalar_t__ FUNC3 (char const*,struct object_id*) ; 
 struct commit* FUNC4 (int /*<<< orphan*/ ,struct object_id*) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC8(int argc, const char **argv)
{
	struct object_id oid;
	char *refname;
	struct commit *derived, *fork_point;
	const char *commitname;

	switch (FUNC1(argv[0], FUNC7(argv[0]), &oid, &refname)) {
	case 0:
		FUNC0("No such ref: '%s'", argv[0]);
	case 1:
		break; /* good */
	default:
		FUNC0("Ambiguous refname: '%s'", argv[0]);
	}

	commitname = (argc == 2) ? argv[1] : "HEAD";
	if (FUNC3(commitname, &oid))
		FUNC0("Not a valid object name: '%s'", commitname);

	derived = FUNC4(the_repository, &oid);

	fork_point = FUNC2(refname, derived);

	if (!fork_point)
		return 1;

	FUNC6("%s\n", FUNC5(&fork_point->object.oid));
	return 0;
}
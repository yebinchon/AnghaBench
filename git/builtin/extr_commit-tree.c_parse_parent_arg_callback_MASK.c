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
struct option {struct commit_list** value; } ;
struct object_id {int dummy; } ;
struct commit_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char const*) ; 
 int /*<<< orphan*/  OBJ_COMMIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct object_id*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct commit_list**) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC7(const struct option *opt,
		const char *arg, int unset)
{
	struct object_id oid;
	struct commit_list **parents = opt->value;

	FUNC0(unset, arg);

	if (FUNC4(arg, &oid))
		FUNC3(FUNC1("not a valid object name %s"), arg);

	FUNC2(&oid, OBJ_COMMIT);
	FUNC6(FUNC5(the_repository, &oid), parents);
	return 0;
}
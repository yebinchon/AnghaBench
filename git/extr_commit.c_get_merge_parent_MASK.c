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
struct object_id {int dummy; } ;
struct object {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_COMMIT ; 
 scalar_t__ FUNC0 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC1 (struct commit*) ; 
 struct object* FUNC2 (int /*<<< orphan*/ ,struct object_id*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ,struct object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct commit*,char const*,struct object*) ; 
 int /*<<< orphan*/  the_repository ; 

struct commit *FUNC5(const char *name)
{
	struct object *obj;
	struct commit *commit;
	struct object_id oid;
	if (FUNC0(name, &oid))
		return NULL;
	obj = FUNC2(the_repository, &oid);
	commit = (struct commit *)FUNC3(name, 0, obj, OBJ_COMMIT);
	if (commit && !FUNC1(commit))
		FUNC4(commit, name, obj);
	return commit;
}
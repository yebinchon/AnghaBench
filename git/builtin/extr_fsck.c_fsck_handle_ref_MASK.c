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
struct object {scalar_t__ type; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  object_names; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_REACHABLE ; 
 int /*<<< orphan*/  ERROR_REFS ; 
 scalar_t__ OBJ_COMMIT ; 
 int /*<<< orphan*/  USED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_refs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  errors_found ; 
 TYPE_1__ fsck_walk_options ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC5 (struct object*) ; 
 scalar_t__ name_objects ; 
 char* FUNC6 (struct object_id const*) ; 
 struct object* FUNC7 (int /*<<< orphan*/ ,struct object_id const*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static int FUNC9(const char *refname, const struct object_id *oid,
			   int flag, void *cb_data)
{
	struct object *obj;

	obj = FUNC7(the_repository, oid);
	if (!obj) {
		if (FUNC4(oid)) {
			/*
			 * Increment default_refs anyway, because this is a
			 * valid ref.
			 */
			 default_refs++;
			 return 0;
		}
		FUNC2(FUNC0("%s: invalid sha1 pointer %s"),
		      refname, FUNC6(oid));
		errors_found |= ERROR_REACHABLE;
		/* We'll continue with the rest despite the error.. */
		return 0;
	}
	if (obj->type != OBJ_COMMIT && FUNC3(refname)) {
		FUNC2(FUNC0("%s: not a commit"), refname);
		errors_found |= ERROR_REFS;
	}
	default_refs++;
	obj->flags |= USED;
	if (name_objects)
		FUNC1(fsck_walk_options.object_names,
			obj, FUNC8(refname));
	FUNC5(obj);

	return 0;
}
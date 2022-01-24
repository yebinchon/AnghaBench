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
struct tag {int dummy; } ;
struct object_id {int dummy; } ;
struct commit_extra_header {int /*<<< orphan*/  len; int /*<<< orphan*/  value; } ;
struct commit {int dummy; } ;
struct check_mergetag_data {char** argv; int argc; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,...) ; 
 scalar_t__ FUNC2 (char*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (struct tag*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*) ; 
 struct tag* FUNC5 (int /*<<< orphan*/ ,struct object_id*) ; 
 char* FUNC6 (struct object_id*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct object_id*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct tag*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct commit *commit,
			       struct commit_extra_header *extra,
			       void *data)
{
	struct check_mergetag_data *mergetag_data = (struct check_mergetag_data *)data;
	const char *ref = mergetag_data->argv[0];
	struct object_id tag_oid;
	struct tag *tag;
	int i;

	FUNC4(extra->value, extra->len, FUNC9(OBJ_TAG), &tag_oid);
	tag = FUNC5(the_repository, &tag_oid);
	if (!tag)
		return FUNC1(FUNC0("bad mergetag in commit '%s'"), ref);
	if (FUNC8(the_repository, tag, extra->value, extra->len))
		return FUNC1(FUNC0("malformed mergetag in commit '%s'"), ref);

	/* iterate over new parents */
	for (i = 1; i < mergetag_data->argc; i++) {
		struct object_id oid;
		if (FUNC2(mergetag_data->argv[i], &oid) < 0)
			return FUNC1(FUNC0("not a valid object name: '%s'"),
				     mergetag_data->argv[i]);
		if (FUNC7(FUNC3(tag), &oid))
			return 0; /* found */
	}

	return FUNC1(FUNC0("original commit '%s' contains mergetag '%s' that is "
		       "discarded; use --edit instead of --graft"), ref,
		     FUNC6(&tag_oid));
}
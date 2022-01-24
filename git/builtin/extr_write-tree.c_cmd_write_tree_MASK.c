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
struct option {char* member_2; int* member_3; int member_6; int /*<<< orphan*/  member_8; int /*<<< orphan*/ * member_7; int /*<<< orphan*/  member_5; int /*<<< orphan*/ * member_4; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  OPTION_BIT ; 
 struct option FUNC1 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 struct option FUNC3 (int /*<<< orphan*/ ,char*,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PARSE_OPT_HIDDEN ; 
 int PARSE_OPT_NOARG ; 
 int /*<<< orphan*/  WRITE_TREE_IGNORE_CACHE_TREE ; 
 int /*<<< orphan*/  WRITE_TREE_MISSING_OK ; 
#define  WRITE_TREE_PREFIX_ERROR 130 
#define  WRITE_TREE_UNMERGED_INDEX 129 
#define  WRITE_TREE_UNREADABLE_INDEX 128 
 int /*<<< orphan*/  FUNC4 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 char* FUNC6 (struct object_id*) ; 
 int FUNC7 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (struct object_id*,int,char const*) ; 
 int /*<<< orphan*/  write_tree_usage ; 

int FUNC10(int argc, const char **argv, const char *cmd_prefix)
{
	int flags = 0, ret;
	const char *tree_prefix = NULL;
	struct object_id oid;
	const char *me = "git-write-tree";
	struct option write_tree_options[] = {
		FUNC1(0, "missing-ok", &flags, FUNC0("allow missing objects"),
			WRITE_TREE_MISSING_OK),
		FUNC3(0, "prefix", &tree_prefix, FUNC0("<prefix>/"),
			   FUNC0("write tree object for a subdirectory <prefix>")),
		{ OPTION_BIT, 0, "ignore-cache-tree", flags, NULL,
		  FUNC0("only useful for debugging"),
		  PARSE_OPT_HIDDEN | PARSE_OPT_NOARG, NULL,
		  WRITE_TREE_IGNORE_CACHE_TREE },
		FUNC2()
	};

	FUNC5(git_default_config, NULL);
	argc = FUNC7(argc, argv, cmd_prefix, write_tree_options,
			     write_tree_usage, 0);

	ret = FUNC9(&oid, flags, tree_prefix);
	switch (ret) {
	case 0:
		FUNC8("%s\n", FUNC6(&oid));
		break;
	case WRITE_TREE_UNREADABLE_INDEX:
		FUNC4("%s: error reading the index", me);
		break;
	case WRITE_TREE_UNMERGED_INDEX:
		FUNC4("%s: error building trees", me);
		break;
	case WRITE_TREE_PREFIX_ERROR:
		FUNC4("%s: prefix %s not found", me, tree_prefix);
		break;
	}
	return ret;
}
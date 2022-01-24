#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tree {int dummy; } ;
struct option {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_6__ {int nr; scalar_t__ has_wildcard; TYPE_1__* items; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  nowildcard_len; } ;

/* Variables and functions */
 int LS_NAME_ONLY ; 
 int LS_RECURSIVE ; 
 int LS_SHOW_SIZE ; 
 int LS_SHOW_TREES ; 
 int LS_TREE_ONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option const FUNC1 (char,char*,int*,int /*<<< orphan*/ ,int) ; 
 struct option const FUNC2 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option const FUNC3 () ; 
 struct option const FUNC4 (char,char*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct option const FUNC5 (int /*<<< orphan*/ *) ; 
 int PATHSPEC_ALL_MAGIC ; 
 int PATHSPEC_FROMTOP ; 
 int PATHSPEC_LITERAL ; 
 int /*<<< orphan*/  PATHSPEC_PREFER_CWD ; 
 int /*<<< orphan*/  abbrev ; 
 scalar_t__ chomp_prefix ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 scalar_t__ line_termination ; 
 int ls_options ; 
 char const* ls_tree_prefix ; 
 int /*<<< orphan*/  ls_tree_usage ; 
 int FUNC9 (int,char const**,char const*,struct option const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ,char const*,char const**) ; 
 struct tree* FUNC11 (struct object_id*) ; 
 TYPE_2__ pathspec ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct tree*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  show_tree ; 
 scalar_t__ FUNC13 (char const*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct option const*) ; 

int FUNC15(int argc, const char **argv, const char *prefix)
{
	struct object_id oid;
	struct tree *tree;
	int i, full_tree = 0;
	const struct option ls_tree_options[] = {
		FUNC1('d', NULL, &ls_options, FUNC0("only show trees"),
			LS_TREE_ONLY),
		FUNC1('r', NULL, &ls_options, FUNC0("recurse into subtrees"),
			LS_RECURSIVE),
		FUNC1('t', NULL, &ls_options, FUNC0("show trees when recursing"),
			LS_SHOW_TREES),
		FUNC4('z', NULL, &line_termination,
			    FUNC0("terminate entries with NUL byte"), 0),
		FUNC1('l', "long", &ls_options, FUNC0("include object size"),
			LS_SHOW_SIZE),
		FUNC1(0, "name-only", &ls_options, FUNC0("list only filenames"),
			LS_NAME_ONLY),
		FUNC1(0, "name-status", &ls_options, FUNC0("list only filenames"),
			LS_NAME_ONLY),
		FUNC4(0, "full-name", &chomp_prefix,
			    FUNC0("use full path names"), 0),
		FUNC2(0, "full-tree", &full_tree,
			 FUNC0("list entire tree; not just current directory "
			    "(implies --full-name)")),
		FUNC5(&abbrev),
		FUNC3()
	};

	FUNC8(git_default_config, NULL);
	ls_tree_prefix = prefix;
	if (prefix && *prefix)
		chomp_prefix = FUNC13(prefix);

	argc = FUNC9(argc, argv, prefix, ls_tree_options,
			     ls_tree_usage, 0);
	if (full_tree) {
		ls_tree_prefix = prefix = NULL;
		chomp_prefix = 0;
	}
	/* -d -r should imply -t, but -d by itself should not have to. */
	if ( (LS_TREE_ONLY|LS_RECURSIVE) ==
	    ((LS_TREE_ONLY|LS_RECURSIVE) & ls_options))
		ls_options |= LS_SHOW_TREES;

	if (argc < 1)
		FUNC14(ls_tree_usage, ls_tree_options);
	if (FUNC7(argv[0], &oid))
		FUNC6("Not a valid object name %s", argv[0]);

	/*
	 * show_recursive() rolls its own matching code and is
	 * generally ignorant of 'struct pathspec'. The magic mask
	 * cannot be lifted until it is converted to use
	 * match_pathspec() or tree_entry_interesting()
	 */
	FUNC10(&pathspec, PATHSPEC_ALL_MAGIC &
				  ~(PATHSPEC_FROMTOP | PATHSPEC_LITERAL),
		       PATHSPEC_PREFER_CWD,
		       prefix, argv + 1);
	for (i = 0; i < pathspec.nr; i++)
		pathspec.items[i].nowildcard_len = pathspec.items[i].len;
	pathspec.has_wildcard = 0;
	tree = FUNC11(&oid);
	if (!tree)
		FUNC6("not a tree object");
	return !!FUNC12(the_repository, tree, "", 0, 0,
				     &pathspec, show_tree, NULL);
}
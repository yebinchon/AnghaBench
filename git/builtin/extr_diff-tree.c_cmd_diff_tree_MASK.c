#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct setup_revision_opt {int /*<<< orphan*/  tweak; } ;
struct TYPE_9__ {int needed_rename_limit; int degraded_cc_to_c; int /*<<< orphan*/  setup; scalar_t__ detect_rename; } ;
struct TYPE_7__ {int nr; TYPE_1__* objects; } ;
struct rev_info {int diff; int disable_stdin; TYPE_4__ diffopt; TYPE_2__ pending; scalar_t__ abbrev; } ;
struct object_id {int dummy; } ;
struct object {int flags; int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  s_r_opt ;
typedef  int /*<<< orphan*/  line ;
struct TYPE_8__ {int /*<<< orphan*/  cache; } ;
struct TYPE_6__ {struct object* item; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_SETUP_USE_SIZE_CACHE ; 
 int /*<<< orphan*/  FUNC0 (struct object*,struct object*) ; 
 int UNINTERESTING ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  diff_tree_tweak_rev ; 
 int /*<<< orphan*/  diff_tree_usage ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_diff_basic_config ; 
 int /*<<< orphan*/  FUNC12 (struct rev_info*) ; 
 struct rev_info log_tree_opt ; 
 int /*<<< orphan*/  FUNC13 (struct setup_revision_opt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int,char const**) ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct rev_info*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int,char const**,struct rev_info*,struct setup_revision_opt*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC19 (char const*,char*) ; 
 TYPE_3__ the_index ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

int FUNC21(int argc, const char **argv, const char *prefix)
{
	char line[1000];
	struct object *tree1, *tree2;
	static struct rev_info *opt = &log_tree_opt;
	struct setup_revision_opt s_r_opt;
	int read_stdin = 0;

	if (argc == 2 && !FUNC19(argv[1], "-h"))
		FUNC20(diff_tree_usage);

	FUNC11(git_diff_basic_config, NULL); /* no "diff" UI options */
	FUNC16(the_repository, opt, prefix);
	if (FUNC15() < 0)
		FUNC2(FUNC1("index file corrupt"));
	opt->abbrev = 0;
	opt->diff = 1;
	opt->disable_stdin = 1;
	FUNC13(&s_r_opt, 0, sizeof(s_r_opt));
	s_r_opt.tweak = diff_tree_tweak_rev;

	FUNC14(argc, argv);
	argc = FUNC18(argc, argv, opt, &s_r_opt);

	while (--argc > 0) {
		const char *arg = *++argv;

		if (!FUNC19(arg, "--stdin")) {
			read_stdin = 1;
			continue;
		}
		FUNC20(diff_tree_usage);
	}

	/*
	 * NOTE!  We expect "a..b" to expand to "^a b" but it is
	 * perfectly valid for revision range parser to yield "b ^a",
	 * which means the same thing. If we get the latter, i.e. the
	 * second one is marked UNINTERESTING, we recover the original
	 * order the user gave, i.e. "a..b", by swapping the trees.
	 */
	switch (opt->pending.nr) {
	case 0:
		if (!read_stdin)
			FUNC20(diff_tree_usage);
		break;
	case 1:
		tree1 = opt->pending.objects[0].item;
		FUNC4(&tree1->oid);
		break;
	case 2:
		tree1 = opt->pending.objects[0].item;
		tree2 = opt->pending.objects[1].item;
		if (tree2->flags & UNINTERESTING) {
			FUNC0(tree2, tree1);
		}
		FUNC5(&tree1->oid, &tree2->oid, "", &opt->diffopt);
		FUNC12(opt);
		break;
	}

	if (read_stdin) {
		int saved_nrl = 0;
		int saved_dcctc = 0;

		if (opt->diffopt.detect_rename) {
			if (!the_index.cache)
				FUNC17(the_repository);
			opt->diffopt.setup |= DIFF_SETUP_USE_SIZE_CACHE;
		}
		while (FUNC8(line, sizeof(line), stdin)) {
			struct object_id oid;

			if (FUNC10(line, &oid)) {
				FUNC9(line, stdout);
				FUNC7(stdout);
			}
			else {
				FUNC6(line);
				if (saved_nrl < opt->diffopt.needed_rename_limit)
					saved_nrl = opt->diffopt.needed_rename_limit;
				if (opt->diffopt.degraded_cc_to_c)
					saved_dcctc = 1;
			}
		}
		opt->diffopt.degraded_cc_to_c = saved_dcctc;
		opt->diffopt.needed_rename_limit = saved_nrl;
	}

	return FUNC3(&opt->diffopt, 0);
}
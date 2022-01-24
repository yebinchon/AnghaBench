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
struct merge_options {char* subtree_shift; int show_rename_progress; char const* branch1; int /*<<< orphan*/  branch2; int /*<<< orphan*/  renormalize; } ;
struct lock_file {int dummy; } ;
struct commit_list {int /*<<< orphan*/  item; struct commit_list* next; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int COMMIT_LOCK ; 
 int /*<<< orphan*/  LOCK_DIE_ON_ERROR ; 
 struct lock_file LOCK_INIT ; 
 int /*<<< orphan*/  REFRESH_QUIET ; 
 int SKIP_IF_UNCHANGED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct lock_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct merge_options*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 
 int FUNC9 (struct merge_options*,struct commit*,int /*<<< orphan*/ ,struct commit_list*,struct commit**) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  option_renormalize ; 
 scalar_t__ FUNC11 (struct merge_options*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int show_progress ; 
 int /*<<< orphan*/  FUNC13 (char const*,char*) ; 
 int /*<<< orphan*/  the_index ; 
 int /*<<< orphan*/  the_repository ; 
 int FUNC14 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,struct commit_list*,char const*,struct commit_list*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,struct lock_file*,int) ; 
 int /*<<< orphan*/ * xopts ; 
 int xopts_nr ; 

__attribute__((used)) static int FUNC16(const char *strategy, struct commit_list *common,
			      struct commit_list *remoteheads,
			      struct commit *head)
{
	const char *head_arg = "HEAD";

	if (FUNC12(REFRESH_QUIET, SKIP_IF_UNCHANGED, 0) < 0)
		return FUNC3(FUNC0("Unable to write index."));

	if (!FUNC13(strategy, "recursive") || !FUNC13(strategy, "subtree")) {
		struct lock_file lock = LOCK_INIT;
		int clean, x;
		struct commit *result;
		struct commit_list *reversed = NULL;
		struct merge_options o;
		struct commit_list *j;

		if (remoteheads->next) {
			FUNC3(FUNC0("Not handling anything other than two heads merge."));
			return 2;
		}

		FUNC7(&o, the_repository);
		if (!FUNC13(strategy, "subtree"))
			o.subtree_shift = "";

		o.renormalize = option_renormalize;
		o.show_rename_progress =
			show_progress == -1 ? FUNC8(2) : show_progress;

		for (x = 0; x < xopts_nr; x++)
			if (FUNC11(&o, xopts[x]))
				FUNC2(FUNC0("Unknown option for merge-recursive: -X%s"), xopts[x]);

		o.branch1 = head_arg;
		o.branch2 = FUNC10(remoteheads->item)->name;

		for (j = common; j; j = j->next)
			FUNC1(j->item, &reversed);

		FUNC6(&lock, LOCK_DIE_ON_ERROR);
		clean = FUNC9(&o, head,
				remoteheads->item, reversed, &result);
		if (clean < 0)
			FUNC4(128);
		if (FUNC15(&the_index, &lock,
				       COMMIT_LOCK | SKIP_IF_UNCHANGED))
			FUNC2(FUNC0("unable to write %s"), FUNC5());
		return clean ? 0 : 1;
	} else {
		return FUNC14(the_repository,
					 strategy, xopts_nr, xopts,
					 common, head_arg, remoteheads);
	}
}
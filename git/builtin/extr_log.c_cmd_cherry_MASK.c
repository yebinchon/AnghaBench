#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  file; } ;
struct TYPE_4__ {int nr; struct object_array_entry* objects; } ;
struct rev_info {int max_parents; TYPE_3__ diffopt; TYPE_1__ pending; } ;
struct patch_ids {int dummy; } ;
struct option {int dummy; } ;
struct object_array_entry {TYPE_2__* item; } ;
struct commit_list {struct commit_list* next; struct commit* item; } ;
struct commit {int dummy; } ;
struct branch {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 () ; 
 struct option FUNC2 (int*) ; 
 struct option FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNINTERESTING ; 
 char* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,struct rev_info*,int /*<<< orphan*/ ) ; 
 struct branch* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (struct branch*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cherry_usage ; 
 int /*<<< orphan*/  FUNC8 (struct commit*,struct commit_list**) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct patch_ids*) ; 
 int /*<<< orphan*/  FUNC12 (struct rev_info*,struct patch_ids*) ; 
 struct commit* FUNC13 (struct rev_info*) ; 
 scalar_t__ FUNC14 (struct commit*,struct patch_ids*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC16 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC18 (char,struct commit*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct rev_info*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct option*) ; 

int FUNC21(int argc, const char **argv, const char *prefix)
{
	struct rev_info revs;
	struct patch_ids ids;
	struct commit *commit;
	struct commit_list *list = NULL;
	struct branch *current_branch;
	const char *upstream;
	const char *head = "HEAD";
	const char *limit = NULL;
	int verbose = 0, abbrev = 0;

	struct option options[] = {
		FUNC2(&abbrev),
		FUNC3(&verbose, FUNC0("be verbose")),
		FUNC1()
	};

	argc = FUNC16(argc, argv, prefix, options, cherry_usage, 0);

	switch (argc) {
	case 3:
		limit = argv[2];
		/* FALLTHROUGH */
	case 2:
		head = argv[1];
		/* FALLTHROUGH */
	case 1:
		upstream = argv[0];
		break;
	default:
		current_branch = FUNC6(NULL);
		upstream = FUNC7(current_branch, NULL);
		if (!upstream) {
			FUNC10(stderr, "%s", FUNC4("Could not find a tracked"
					" remote branch, please"
					" specify <upstream> manually.\n"));
			FUNC20(cherry_usage, options);
		}
	}

	FUNC19(the_repository, &revs, prefix);
	revs.max_parents = 1;

	if (FUNC5(head, &revs, 0))
		FUNC9(FUNC4("unknown commit %s"), head);
	if (FUNC5(upstream, &revs, UNINTERESTING))
		FUNC9(FUNC4("unknown commit %s"), upstream);

	/* Don't say anything if head and upstream are the same. */
	if (revs.pending.nr == 2) {
		struct object_array_entry *o = revs.pending.objects;
		if (FUNC15(&o[0].item->oid, &o[1].item->oid))
			return 0;
	}

	FUNC12(&revs, &ids);

	if (limit && FUNC5(limit, &revs, UNINTERESTING))
		FUNC9(FUNC4("unknown commit %s"), limit);

	/* reverse the list of commits */
	if (FUNC17(&revs))
		FUNC9(FUNC4("revision walk setup failed"));
	while ((commit = FUNC13(&revs)) != NULL) {
		FUNC8(commit, &list);
	}

	while (list) {
		char sign = '+';

		commit = list->item;
		if (FUNC14(commit, &ids))
			sign = '-';
		FUNC18(sign, commit, verbose, abbrev, revs.diffopt.file);
		list = list->next;
	}

	FUNC11(&ids);
	return 0;
}
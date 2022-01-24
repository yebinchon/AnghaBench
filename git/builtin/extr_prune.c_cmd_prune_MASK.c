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
struct rev_info {int exclude_promisor_objects; } ;
struct option {int dummy; } ;
struct object_id {int dummy; } ;
struct object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option const FUNC1 (int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 struct option const FUNC2 () ; 
 struct option const FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct option const FUNC4 (scalar_t__*,int /*<<< orphan*/ ) ; 
 struct option const FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRUNE_PACKED_DRY_RUN ; 
 int /*<<< orphan*/  PRUNE_SHOW_ONLY ; 
 int /*<<< orphan*/  TIME_MAX ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct rev_info*,struct object*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  expire ; 
 scalar_t__ fetch_if_missing ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rev_info*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char const*,struct object_id*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int) ; 
 char* FUNC15 (char*,char*) ; 
 struct object* FUNC16 (struct object_id*,char const*) ; 
 int FUNC17 (int,char const**,char const*,struct option const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct rev_info*) ; 
 int /*<<< orphan*/  prune_cruft ; 
 int /*<<< orphan*/  prune_object ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prune_subdir ; 
 int /*<<< orphan*/  prune_usage ; 
 scalar_t__ read_replace_refs ; 
 int ref_paranoia ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,struct rev_info*,char const*) ; 
 scalar_t__ repository_format_precious_objects ; 
 scalar_t__ save_commit_buffer ; 
 scalar_t__ show_only ; 
 int show_progress ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  verbose ; 

int FUNC23(int argc, const char **argv, const char *prefix)
{
	struct rev_info revs;
	int exclude_promisor_objects = 0;
	const struct option options[] = {
		FUNC4(&show_only, FUNC0("do not remove, show only")),
		FUNC5(&verbose, FUNC0("report pruned objects")),
		FUNC1(0, "progress", &show_progress, FUNC0("show progress")),
		FUNC3(0, "expire", &expire,
				FUNC0("expire objects older than <time>")),
		FUNC1(0, "exclude-promisor-objects", &exclude_promisor_objects,
			 FUNC0("limit traversal to objects outside promisor packfiles")),
		FUNC2()
	};
	char *s;

	expire = TIME_MAX;
	save_commit_buffer = 0;
	read_replace_refs = 0;
	ref_paranoia = 1;
	FUNC22(the_repository, &revs, prefix);

	argc = FUNC17(argc, argv, prefix, options, prune_usage, 0);

	if (repository_format_precious_objects)
		FUNC8(FUNC6("cannot prune in a precious-objects repo"));

	while (argc--) {
		struct object_id oid;
		const char *name = *argv++;

		if (!FUNC12(name, &oid)) {
			struct object *object = FUNC16(&oid,
								    name);
			FUNC7(&revs, object, "");
		}
		else
			FUNC8("unrecognized argument: %s", name);
	}

	if (show_progress == -1)
		show_progress = FUNC14(2);
	if (exclude_promisor_objects) {
		fetch_if_missing = 0;
		revs.exclude_promisor_objects = 1;
	}

	FUNC9(FUNC11(), prune_object,
				      prune_cruft, prune_subdir, &revs);

	FUNC19(show_only ? PRUNE_PACKED_DRY_RUN : 0);
	FUNC21(FUNC11());
	s = FUNC15("%s/pack", FUNC11());
	FUNC21(s);
	FUNC10(s);

	if (FUNC13(the_repository)) {
		FUNC18(&revs);
		FUNC20(show_only ? PRUNE_SHOW_ONLY : 0);
	}

	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_4__ {int /*<<< orphan*/  oid; } ;
struct tree {TYPE_2__ object; } ;
struct object_id {int dummy; } ;
struct TYPE_3__ {struct object_id oid; } ;
struct commit {int /*<<< orphan*/  date; TYPE_1__ object; } ;
struct archiver_args {int /*<<< orphan*/  time; struct commit const* commit; struct object_id const* commit_oid; struct tree* tree; int /*<<< orphan*/  repo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,struct object_id*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*,struct object_id*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,struct object_id*,unsigned short*) ; 
 struct commit* FUNC7 (int /*<<< orphan*/ ,struct object_id*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct object_id*) ; 
 struct tree* FUNC9 (struct object_id*) ; 
 int /*<<< orphan*/  remote_allow_unreachable ; 
 char* FUNC10 (char const*,char) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(const char **argv,
		struct archiver_args *ar_args, const char *prefix,
		int remote)
{
	const char *name = argv[0];
	const struct object_id *commit_oid;
	time_t archive_time;
	struct tree *tree;
	const struct commit *commit;
	struct object_id oid;

	/* Remotes are only allowed to fetch actual refs */
	if (remote && !remote_allow_unreachable) {
		char *ref = NULL;
		const char *colon = FUNC10(name, ':');
		int refnamelen = colon - name;

		if (!FUNC3(name, refnamelen, &oid, &ref))
			FUNC2(FUNC1("no such ref: %.*s"), refnamelen, name);
		FUNC4(ref);
	}

	if (FUNC5(name, &oid))
		FUNC2(FUNC1("not a valid object name: %s"), name);

	commit = FUNC7(ar_args->repo, &oid, 1);
	if (commit) {
		commit_oid = &commit->object.oid;
		archive_time = commit->date;
	} else {
		commit_oid = NULL;
		archive_time = FUNC11(NULL);
	}

	tree = FUNC9(&oid);
	if (tree == NULL)
		FUNC2(FUNC1("not a tree object: %s"), FUNC8(&oid));

	if (prefix) {
		struct object_id tree_oid;
		unsigned short mode;
		int err;

		err = FUNC6(ar_args->repo,
				     &tree->object.oid,
				     prefix, &tree_oid,
				     &mode);
		if (err || !FUNC0(mode))
			FUNC2(FUNC1("current working directory is untracked"));

		tree = FUNC9(&tree_oid);
	}
	ar_args->tree = tree;
	ar_args->commit_oid = commit_oid;
	ar_args->commit = commit;
	ar_args->time = archive_time;
}
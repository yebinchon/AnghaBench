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
struct submodule_update_clone {char const* recursive_prefix; char const* depth; char const* prefix; int warn_if_uninitialized; int /*<<< orphan*/  list; int /*<<< orphan*/  update; int /*<<< orphan*/  max_jobs; int /*<<< orphan*/  progress; int /*<<< orphan*/  quiet; int /*<<< orphan*/  recommend_shallow; int /*<<< orphan*/  dissociate; int /*<<< orphan*/  references; } ;
struct pathspec {scalar_t__ nr; } ;
struct option {int dummy; } ;

/* Variables and functions */
 char const* FUNC0 (char*) ; 
 struct option FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char const*) ; 
 struct option FUNC2 () ; 
 struct option FUNC3 (char,char*,int /*<<< orphan*/ *,char const*) ; 
 struct option FUNC4 (int /*<<< orphan*/ ,char*,char const**,char*,char const*) ; 
 struct option FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char const*,char const*) ; 
 struct option FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 struct submodule_update_clone SUBMODULE_UPDATE_CLONE_INIT ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_update_clone_config ; 
 scalar_t__ FUNC10 (int,char const**,char const*,struct pathspec*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int,char const**,char const*,struct option*,char const* const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct submodule_update_clone*) ; 

__attribute__((used)) static int FUNC15(int argc, const char **argv, const char *prefix)
{
	const char *update = NULL;
	struct pathspec pathspec;
	struct submodule_update_clone suc = SUBMODULE_UPDATE_CLONE_INIT;

	struct option module_update_clone_options[] = {
		FUNC4(0, "prefix", &prefix,
			   FUNC0("path"),
			   FUNC0("path into the working tree")),
		FUNC4(0, "recursive-prefix", &suc.recursive_prefix,
			   FUNC0("path"),
			   FUNC0("path into the working tree, across nested "
			      "submodule boundaries")),
		FUNC4(0, "update", &update,
			   FUNC0("string"),
			   FUNC0("rebase, merge, checkout or none")),
		FUNC5(0, "reference", &suc.references, FUNC0("repo"),
			   FUNC0("reference repository")),
		FUNC1(0, "dissociate", &suc.dissociate,
			   FUNC0("use --reference only while cloning")),
		FUNC4(0, "depth", &suc.depth, "<depth>",
			   FUNC0("Create a shallow clone truncated to the "
			      "specified number of revisions")),
		FUNC3('j', "jobs", &suc.max_jobs,
			    FUNC0("parallel jobs")),
		FUNC1(0, "recommend-shallow", &suc.recommend_shallow,
			    FUNC0("whether the initial clone should follow the shallow recommendation")),
		FUNC6(&suc.quiet, FUNC0("don't print cloning progress")),
		FUNC1(0, "progress", &suc.progress,
			    FUNC0("force cloning progress")),
		FUNC2()
	};

	const char *const git_submodule_helper_usage[] = {
		FUNC0("git submodule--helper update-clone [--prefix=<path>] [<path>...]"),
		NULL
	};
	suc.prefix = prefix;

	FUNC13(&suc.max_jobs);
	FUNC9(git_update_clone_config, &suc.max_jobs);

	argc = FUNC11(argc, argv, prefix, module_update_clone_options,
			     git_submodule_helper_usage, 0);

	if (update)
		if (FUNC12(update, &suc.update) < 0)
			FUNC8(FUNC7("bad value for update parameter"));

	if (FUNC10(argc, argv, prefix, &pathspec, &suc.list) < 0)
		return 1;

	if (pathspec.nr)
		suc.warn_if_uninitialized = 1;

	return FUNC14(&suc);
}
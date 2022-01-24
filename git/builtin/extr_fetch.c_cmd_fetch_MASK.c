#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct string_list {int nr; } ;
struct split_commit_graph_opts {int dummy; } ;
struct remote {int dummy; } ;
struct argv_array {int /*<<< orphan*/  argv; } ;
struct TYPE_11__ {scalar_t__ nr; } ;
struct TYPE_10__ {scalar_t__ choice; } ;
struct TYPE_8__ {scalar_t__ fetch_write_commit_graph; } ;
struct TYPE_9__ {int /*<<< orphan*/  objects; TYPE_1__ settings; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int COMMIT_GRAPH_WRITE_PROGRESS ; 
 int COMMIT_GRAPH_WRITE_SPLIT ; 
 scalar_t__ INFINITE_DEPTH ; 
 scalar_t__ RECURSE_SUBMODULES_OFF ; 
 int /*<<< orphan*/  RUN_GIT_CMD ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct string_list*) ; 
 scalar_t__ all ; 
 int /*<<< orphan*/  FUNC3 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC4 (struct argv_array*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct argv_array*,char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  builtin_fetch_options ; 
 int /*<<< orphan*/  builtin_fetch_usage ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int deepen ; 
 TYPE_7__ deepen_not ; 
 scalar_t__ deepen_relative ; 
 scalar_t__ deepen_since ; 
 int /*<<< orphan*/  default_rla ; 
 scalar_t__ depth ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ enable_auto_gc ; 
 int /*<<< orphan*/  FUNC9 (int*,scalar_t__*) ; 
 scalar_t__ fetch_if_missing ; 
 int FUNC10 (struct string_list*,int) ; 
 int FUNC11 (struct remote*,int,char const**,int) ; 
 int /*<<< orphan*/  FUNC12 (struct remote*) ; 
 int fetch_parallel_config ; 
 int FUNC13 (TYPE_2__*,struct argv_array*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 TYPE_5__ filter_options ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct string_list*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  get_one_remote_for_fetch ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_fetch_config ; 
 scalar_t__ FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int max_jobs ; 
 int /*<<< orphan*/  FUNC19 (struct split_commit_graph_opts*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ multiple ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int FUNC21 (int,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 scalar_t__ progress ; 
 scalar_t__ recurse_submodules ; 
 int /*<<< orphan*/  recurse_submodules_default ; 
 struct remote* FUNC23 (char const*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC27 (struct string_list*,int /*<<< orphan*/ ) ; 
 int submodule_fetch_jobs_config ; 
 int /*<<< orphan*/  submodule_prefix ; 
 TYPE_2__* the_repository ; 
 scalar_t__ unshallow ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int,struct split_commit_graph_opts*) ; 
 scalar_t__ FUNC29 (char*,scalar_t__) ; 

int FUNC30(int argc, const char **argv, const char *prefix)
{
	int i;
	struct string_list list = STRING_LIST_INIT_DUP;
	struct remote *remote = NULL;
	int result = 0;
	int prune_tags_ok = 1;
	struct argv_array argv_gc_auto = ARGV_ARRAY_INIT;

	FUNC20("fetch");

	/* Record the command line for the reflog */
	FUNC26(&default_rla, "fetch");
	for (i = 1; i < argc; i++)
		FUNC25(&default_rla, " %s", argv[i]);

	FUNC9(&submodule_fetch_jobs_config,
				     &recurse_submodules);
	FUNC16(git_fetch_config, NULL);

	argc = FUNC21(argc, argv, prefix,
			     builtin_fetch_options, builtin_fetch_usage, 0);

	if (deepen_relative) {
		if (deepen_relative < 0)
			FUNC8(FUNC0("Negative depth in --deepen is not supported"));
		if (depth)
			FUNC8(FUNC0("--deepen and --depth are mutually exclusive"));
		depth = FUNC29("%d", deepen_relative);
	}
	if (unshallow) {
		if (depth)
			FUNC8(FUNC0("--depth and --unshallow cannot be used together"));
		else if (!FUNC18(the_repository))
			FUNC8(FUNC0("--unshallow on a complete repository does not make sense"));
		else
			depth = FUNC29("%d", INFINITE_DEPTH);
	}

	/* no need to be strict, transport_set_option() will validate it again */
	if (depth && FUNC6(depth) < 1)
		FUNC8(FUNC0("depth %s is not a positive number"), depth);
	if (depth || deepen_since || deepen_not.nr)
		deepen = 1;

	if (filter_options.choice && !FUNC17())
		FUNC8("--filter can only be used when extensions.partialClone is set");

	if (all) {
		if (argc == 1)
			FUNC8(FUNC0("fetch --all does not take a repository argument"));
		else if (argc > 1)
			FUNC8(FUNC0("fetch --all does not make sense with refspecs"));
		(void) FUNC14(get_one_remote_for_fetch, &list);
	} else if (argc == 0) {
		/* No arguments -- use default remote */
		remote = FUNC23(NULL);
	} else if (multiple) {
		/* All arguments are assumed to be remotes or groups */
		for (i = 0; i < argc; i++)
			if (!FUNC2(argv[i], &list))
				FUNC8(FUNC0("No such remote or remote group: %s"), argv[i]);
	} else {
		/* Single remote or group */
		(void) FUNC2(argv[0], &list);
		if (list.nr > 1) {
			/* More than one remote */
			if (argc > 1)
				FUNC8(FUNC0("Fetching a group and specifying refspecs does not make sense"));
		} else {
			/* Zero or one remotes */
			remote = FUNC23(argv[0]);
			prune_tags_ok = (argc == 1);
			argc--;
			argv++;
		}
	}

	fetch_if_missing = 0;

	if (remote) {
		if (filter_options.choice || FUNC17())
			FUNC12(remote);
		result = FUNC11(remote, argc, argv, prune_tags_ok);
	} else {
		int max_children = max_jobs;

		if (filter_options.choice)
			FUNC8(FUNC0("--filter can only be used with the remote "
			      "configured in extensions.partialclone"));

		if (max_children < 0)
			max_children = fetch_parallel_config;

		/* TODO should this also die if we have a previous partial-clone? */
		result = FUNC10(&list, max_children);
	}

	if (!result && (recurse_submodules != RECURSE_SUBMODULES_OFF)) {
		struct argv_array options = ARGV_ARRAY_INIT;
		int max_children = max_jobs;

		if (max_children < 0)
			max_children = submodule_fetch_jobs_config;
		if (max_children < 0)
			max_children = fetch_parallel_config;

		FUNC1(&options);
		result = FUNC13(the_repository,
						    &options,
						    submodule_prefix,
						    recurse_submodules,
						    recurse_submodules_default,
						    verbosity < 0,
						    max_children);
		FUNC3(&options);
	}

	FUNC27(&list, 0);

	FUNC22(the_repository);
	if (the_repository->settings.fetch_write_commit_graph) {
		int commit_graph_flags = COMMIT_GRAPH_WRITE_SPLIT;
		struct split_commit_graph_opts split_opts;
		FUNC19(&split_opts, 0, sizeof(struct split_commit_graph_opts));

		if (progress)
			commit_graph_flags |= COMMIT_GRAPH_WRITE_PROGRESS;

		FUNC28(FUNC15(),
					     commit_graph_flags,
					     &split_opts);
	}

	FUNC7(the_repository->objects);

	if (enable_auto_gc) {
		FUNC5(&argv_gc_auto, "gc", "--auto", NULL);
		if (verbosity < 0)
			FUNC4(&argv_gc_auto, "--quiet");
		FUNC24(argv_gc_auto.argv, RUN_GIT_CMD);
		FUNC3(&argv_gc_auto);
	}

	return result;
}
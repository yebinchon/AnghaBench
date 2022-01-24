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
struct string_list {int dummy; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct option {int dummy; } ;

/* Variables and functions */
 char const* FUNC0 (char*) ; 
 struct option FUNC1 (int /*<<< orphan*/ ,char*,int*,char const*) ; 
 struct option FUNC2 () ; 
 struct option FUNC3 (int /*<<< orphan*/ ,char*,char const**,char const*,char const*) ; 
 struct option FUNC4 (int /*<<< orphan*/ ,char*,struct string_list*,char const*,char const*) ; 
 struct option FUNC5 (int*,char*) ; 
 struct strbuf STRBUF_INIT ; 
 struct string_list STRING_LIST_INIT_NODUP ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char*,char const*,char const*,struct string_list*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*,char**) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,char*) ; 
 char* FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int FUNC19 (int,char const**,char const*,struct option*,char const* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char const*,struct string_list*) ; 
 scalar_t__ FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (struct strbuf*,char*,char*,...) ; 
 char* FUNC23 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC25 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char const* const*,struct option*) ; 
 char* FUNC28 (char*) ; 

__attribute__((used)) static int FUNC29(int argc, const char **argv, const char *prefix)
{
	const char *name = NULL, *url = NULL, *depth = NULL;
	int quiet = 0;
	int progress = 0;
	char *p, *path = NULL, *sm_gitdir;
	struct strbuf sb = STRBUF_INIT;
	struct string_list reference = STRING_LIST_INIT_NODUP;
	int dissociate = 0;
	char *sm_alternate = NULL, *error_strategy = NULL;

	struct option module_clone_options[] = {
		FUNC3(0, "prefix", &prefix,
			   FUNC0("path"),
			   FUNC0("alternative anchor for relative paths")),
		FUNC3(0, "path", &path,
			   FUNC0("path"),
			   FUNC0("where the new submodule will be cloned to")),
		FUNC3(0, "name", &name,
			   FUNC0("string"),
			   FUNC0("name of the new submodule")),
		FUNC3(0, "url", &url,
			   FUNC0("string"),
			   FUNC0("url where to clone the submodule from")),
		FUNC4(0, "reference", &reference,
			   FUNC0("repo"),
			   FUNC0("reference repository")),
		FUNC1(0, "dissociate", &dissociate,
			   FUNC0("use --reference only while cloning")),
		FUNC3(0, "depth", &depth,
			   FUNC0("string"),
			   FUNC0("depth for shallow clones")),
		FUNC5(&quiet, "Suppress output for cloning a submodule"),
		FUNC1(0, "progress", &progress,
			   FUNC0("force cloning progress")),
		FUNC2()
	};

	const char *const git_submodule_helper_usage[] = {
		FUNC0("git submodule--helper clone [--prefix=<path>] [--quiet] "
		   "[--reference <repository>] [--name <name>] [--depth <depth>] "
		   "--url <url> --path <path>"),
		NULL
	};

	argc = FUNC19(argc, argv, prefix, module_clone_options,
			     git_submodule_helper_usage, 0);

	if (argc || !url || !path || !*path)
		FUNC27(git_submodule_helper_usage,
				   module_clone_options);

	FUNC22(&sb, "%s/modules/%s", FUNC13(), name);
	sm_gitdir = FUNC7(sb.buf);
	FUNC25(&sb);

	if (!FUNC18(path)) {
		FUNC22(&sb, "%s/%s", FUNC14(), path);
		path = FUNC23(&sb, NULL);
	} else
		path = FUNC28(path);

	if (!FUNC11(sm_gitdir)) {
		if (FUNC21(sm_gitdir) < 0)
			FUNC10(FUNC6("could not create directory '%s'"), sm_gitdir);

		FUNC20(name, &reference);

		if (FUNC8(path, sm_gitdir, url, depth, &reference, dissociate,
				    quiet, progress))
			FUNC10(FUNC6("clone of '%s' into submodule path '%s' failed"),
			    url, path);
	} else {
		if (FUNC21(path) < 0)
			FUNC10(FUNC6("could not create directory '%s'"), path);
		FUNC22(&sb, "%s/index", sm_gitdir);
		FUNC26(sb.buf);
		FUNC25(&sb);
	}

	FUNC9(path, sm_gitdir, 0);

	p = FUNC17(path, "config");
	if (!p)
		FUNC10(FUNC6("could not get submodule directory for '%s'"), path);

	/* setup alternateLocation and alternateErrorStrategy in the cloned submodule if needed */
	FUNC15("submodule.alternateLocation", &sm_alternate);
	if (sm_alternate)
		FUNC16(p, "submodule.alternateLocation",
					   sm_alternate);
	FUNC15("submodule.alternateErrorStrategy", &error_strategy);
	if (error_strategy)
		FUNC16(p, "submodule.alternateErrorStrategy",
					   error_strategy);

	FUNC12(sm_alternate);
	FUNC12(error_strategy);

	FUNC24(&sb);
	FUNC12(sm_gitdir);
	FUNC12(path);
	FUNC12(p);
	return 0;
}
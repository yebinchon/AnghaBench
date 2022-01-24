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
struct submodule {int dummy; } ;
struct strbuf {int dummy; } ;
struct repository {int /*<<< orphan*/  gitdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*) ; 
 int /*<<< orphan*/  null_oid ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct repository*,char*,char**) ; 
 char* FUNC8 (struct repository*,char*) ; 
 scalar_t__ FUNC9 (struct repository*,int /*<<< orphan*/ ,struct submodule const*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 struct submodule* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC12(int argc, const char **argv, const char *prefix)
{
	const struct submodule *sub;
	const char *path;
	char *cw;
	struct repository subrepo;

	if (argc != 2)
		FUNC0("submodule--helper ensure-core-worktree <path>");

	path = argv[1];

	sub = FUNC11(the_repository, &null_oid, path);
	if (!sub)
		FUNC0("We could get the submodule handle before?");

	if (FUNC9(&subrepo, the_repository, sub))
		FUNC3(FUNC1("could not get a repository handle for submodule '%s'"), path);

	if (!FUNC7(&subrepo, "core.worktree", &cw)) {
		char *cfg_file, *abs_path;
		const char *rel_path;
		struct strbuf sb = STRBUF_INIT;

		cfg_file = FUNC8(&subrepo, "config");

		abs_path = FUNC2(path);
		rel_path = FUNC6(abs_path, subrepo.gitdir, &sb);

		FUNC5(cfg_file, "core.worktree", rel_path);

		FUNC4(cfg_file);
		FUNC4(abs_path);
		FUNC10(&sb);
	}

	return 0;
}
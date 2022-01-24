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
struct submodule {char* url; char* name; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct child_process {int git_cmd; char const* dir; int /*<<< orphan*/  args; int /*<<< orphan*/  env_array; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 unsigned int OPT_QUIET ; 
 unsigned int OPT_RECURSIVE ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*,...) ; 
 scalar_t__ FUNC4 (struct child_process*,struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 () ; 
 char* FUNC8 (char const*,char const*) ; 
 char* FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC14 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 char* FUNC17 (char*,char*,char*) ; 
 scalar_t__ FUNC18 (struct child_process*) ; 
 scalar_t__ FUNC19 (char*) ; 
 scalar_t__ FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (struct strbuf*,char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC23 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC24 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC25 (struct strbuf*,char*) ; 
 struct submodule* FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC27 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  the_repository ; 
 char* FUNC28 () ; 
 char* FUNC29 (char*) ; 
 char* FUNC30 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC31(const char *path, const char *prefix,
			   unsigned int flags)
{
	const struct submodule *sub;
	char *remote_key = NULL;
	char *sub_origin_url, *super_config_url, *displaypath;
	struct strbuf sb = STRBUF_INIT;
	struct child_process cp = CHILD_PROCESS_INIT;
	char *sub_config_path = NULL;

	if (!FUNC13(the_repository, path))
		return;

	sub = FUNC26(the_repository, &null_oid, path);

	if (sub && sub->url) {
		if (FUNC19(sub->url) ||
		    FUNC20(sub->url)) {
			char *remote_url, *up_path;
			char *remote = FUNC7();
			FUNC21(&sb, "remote.%s.url", remote);

			if (FUNC10(sb.buf, &remote_url))
				remote_url = FUNC28();

			up_path = FUNC9(path);
			sub_origin_url = FUNC17(remote_url, sub->url, up_path);
			super_config_url = FUNC17(remote_url, sub->url, NULL);

			FUNC6(remote);
			FUNC6(up_path);
			FUNC6(remote_url);
		} else {
			sub_origin_url = FUNC29(sub->url);
			super_config_url = FUNC29(sub->url);
		}
	} else {
		sub_origin_url = FUNC29("");
		super_config_url = FUNC29("");
	}

	displaypath = FUNC8(path, prefix);

	if (!(flags & OPT_QUIET))
		FUNC16(FUNC0("Synchronizing submodule url for '%s'\n"),
			 displaypath);

	FUNC24(&sb);
	FUNC21(&sb, "submodule.%s.url", sub->name);
	if (FUNC11(sb.buf, super_config_url))
		FUNC5(FUNC0("failed to register url for submodule path '%s'"),
		      displaypath);

	if (!FUNC14(path, NULL))
		goto cleanup;

	FUNC15(&cp.env_array);
	cp.git_cmd = 1;
	cp.dir = path;
	FUNC3(&cp.args, "submodule--helper",
			 "print-default-remote", NULL);

	FUNC24(&sb);
	if (FUNC4(&cp, &sb, 0))
		FUNC5(FUNC0("failed to get the default remote for submodule '%s'"),
		      path);

	FUNC25(&sb, "\n");
	remote_key = FUNC30("remote.%s.url", sb.buf);

	FUNC24(&sb);
	FUNC27(&sb, path);
	FUNC22(&sb, "/config");

	if (FUNC12(sb.buf, remote_key, sub_origin_url))
		FUNC5(FUNC0("failed to update remote for submodule '%s'"),
		      path);

	if (flags & OPT_RECURSIVE) {
		struct child_process cpr = CHILD_PROCESS_INIT;

		cpr.git_cmd = 1;
		cpr.dir = path;
		FUNC15(&cpr.env_array);

		FUNC1(&cpr.args, "--super-prefix");
		FUNC2(&cpr.args, "%s/", displaypath);
		FUNC3(&cpr.args, "submodule--helper", "sync",
				 "--recursive", NULL);

		if (flags & OPT_QUIET)
			FUNC1(&cpr.args, "--quiet");

		if (FUNC18(&cpr))
			FUNC5(FUNC0("failed to recurse into submodule '%s'"),
			      path);
	}

cleanup:
	FUNC6(super_config_url);
	FUNC6(sub_origin_url);
	FUNC23(&sb);
	FUNC6(remote_key);
	FUNC6(displaypath);
	FUNC6(sub_config_path);
}
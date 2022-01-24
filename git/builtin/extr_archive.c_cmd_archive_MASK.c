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
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 () ; 
 struct option FUNC2 (char,char*,char const**,int /*<<< orphan*/ ) ; 
 struct option FUNC3 (int /*<<< orphan*/ ,char*,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OPT_KEEP_ALL ; 
 int /*<<< orphan*/  _IOLBF ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int,char const**,char const*,struct option*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char const**,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  the_repository ; 
 int FUNC9 (int,char const**,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

int FUNC10(int argc, const char **argv, const char *prefix)
{
	const char *exec = "git-upload-archive";
	const char *output = NULL;
	const char *remote = NULL;
	struct option local_opts[] = {
		FUNC2('o', "output", &output,
			     FUNC0("write the archive to this file")),
		FUNC3(0, "remote", &remote, FUNC0("repo"),
			FUNC0("retrieve the archive from remote repository <repo>")),
		FUNC3(0, "exec", &exec, FUNC0("command"),
			FUNC0("path to the remote git-upload-archive command")),
		FUNC1()
	};

	argc = FUNC6(argc, argv, prefix, local_opts, NULL,
			     PARSE_OPT_KEEP_ALL);

	FUNC5();

	if (output)
		FUNC4(output);

	if (remote)
		return FUNC7(argc, argv, remote, exec, output);

	FUNC8(stderr, NULL, _IOLBF, BUFSIZ);

	return FUNC9(argc, argv, prefix, the_repository, output, 0);
}
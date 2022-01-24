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
struct remote {char** pushurl; int pushurl_nr; char** url; int url_nr; } ;
struct option {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 (char,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  builtin_remote_geturl_usage ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC5 (int,char const**,int /*<<< orphan*/ *,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 struct remote* FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct remote*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct option*) ; 

__attribute__((used)) static int FUNC10(int argc, const char **argv)
{
	int i, push_mode = 0, all_mode = 0;
	const char *remotename = NULL;
	struct remote *remote;
	const char **url;
	int url_nr;
	struct option options[] = {
		FUNC1('\0', "push", &push_mode,
			 FUNC0("query push URLs rather than fetch URLs")),
		FUNC1('\0', "all", &all_mode,
			 FUNC0("return all URLs")),
		FUNC2()
	};
	argc = FUNC5(argc, argv, NULL, options, builtin_remote_geturl_usage, 0);

	if (argc != 1)
		FUNC9(builtin_remote_geturl_usage, options);

	remotename = argv[0];

	remote = FUNC7(remotename);
	if (!FUNC8(remote, 1))
		FUNC4(FUNC3("No such remote '%s'"), remotename);

	url_nr = 0;
	if (push_mode) {
		url = remote->pushurl;
		url_nr = remote->pushurl_nr;
	}
	/* else fetch mode */

	/* Use the fetch URL when no push URLs were found or requested. */
	if (!url_nr) {
		url = remote->url;
		url_nr = remote->url_nr;
	}

	if (!url_nr)
		FUNC4(FUNC3("no URLs configured for remote '%s'"), remotename);

	if (all_mode) {
		for (i = 0; i < url_nr; i++)
			FUNC6("%s", url[i]);
	} else {
		FUNC6("%s", *url);
	}

	return 0;
}
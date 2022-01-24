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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct remote {char** pushurl; int pushurl_nr; char** url; int url_nr; } ;
struct option {int dummy; } ;
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 (char,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 int /*<<< orphan*/  PARSE_OPT_KEEP_ARGV0 ; 
 int /*<<< orphan*/  REG_EXTENDED ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  builtin_remote_seturl_usage ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,char const*,int) ; 
 int FUNC7 (int,char const**,int /*<<< orphan*/ *,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct remote* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (struct remote*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct option*) ; 

__attribute__((used)) static int FUNC16(int argc, const char **argv)
{
	int i, push_mode = 0, add_mode = 0, delete_mode = 0;
	int matches = 0, negative_matches = 0;
	const char *remotename = NULL;
	const char *newurl = NULL;
	const char *oldurl = NULL;
	struct remote *remote;
	regex_t old_regex;
	const char **urlset;
	int urlset_nr;
	struct strbuf name_buf = STRBUF_INIT;
	struct option options[] = {
		FUNC1('\0', "push", &push_mode,
			 FUNC0("manipulate push URLs")),
		FUNC1('\0', "add", &add_mode,
			 FUNC0("add URL")),
		FUNC1('\0', "delete", &delete_mode,
			    FUNC0("delete URLs")),
		FUNC2()
	};
	argc = FUNC7(argc, argv, NULL, options, builtin_remote_seturl_usage,
			     PARSE_OPT_KEEP_ARGV0);

	if (add_mode && delete_mode)
		FUNC4(FUNC3("--add --delete doesn't make sense"));

	if (argc < 3 || argc > 4 || ((add_mode || delete_mode) && argc != 3))
		FUNC15(builtin_remote_seturl_usage, options);

	remotename = argv[1];
	newurl = argv[2];
	if (argc > 3)
		oldurl = argv[3];

	if (delete_mode)
		oldurl = newurl;

	remote = FUNC11(remotename);
	if (!FUNC12(remote, 1))
		FUNC4(FUNC3("No such remote '%s'"), remotename);

	if (push_mode) {
		FUNC13(&name_buf, "remote.%s.pushurl", remotename);
		urlset = remote->pushurl;
		urlset_nr = remote->pushurl_nr;
	} else {
		FUNC13(&name_buf, "remote.%s.url", remotename);
		urlset = remote->url;
		urlset_nr = remote->url_nr;
	}

	/* Special cases that add new entry. */
	if ((!oldurl && !delete_mode) || add_mode) {
		if (add_mode)
			FUNC6(name_buf.buf, newurl,
						       "^$", 0);
		else
			FUNC5(name_buf.buf, newurl);
		goto out;
	}

	/* Old URL specified. Demand that one matches. */
	if (FUNC8(&old_regex, oldurl, REG_EXTENDED))
		FUNC4(FUNC3("Invalid old URL pattern: %s"), oldurl);

	for (i = 0; i < urlset_nr; i++)
		if (!FUNC9(&old_regex, urlset[i], 0, NULL, 0))
			matches++;
		else
			negative_matches++;
	if (!delete_mode && !matches)
		FUNC4(FUNC3("No such URL found: %s"), oldurl);
	if (delete_mode && !negative_matches && !push_mode)
		FUNC4(FUNC3("Will not delete all non-push URLs"));

	FUNC10(&old_regex);

	if (!delete_mode)
		FUNC6(name_buf.buf, newurl, oldurl, 0);
	else
		FUNC6(name_buf.buf, NULL, oldurl, 1);
out:
	FUNC14(&name_buf);
	return 0;
}
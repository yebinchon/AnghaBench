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
struct strbuf {int dummy; } ;
struct pathspec {int dummy; } ;
struct option {int dummy; } ;
typedef  int /*<<< orphan*/  ps ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option FUNC1 (unsigned char,char*,int*,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 struct option FUNC3 (char,char*,int*,int /*<<< orphan*/ ,int) ; 
 struct option FUNC4 (char,char*,char const**,char*,int /*<<< orphan*/ ) ; 
 struct option FUNC5 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSE_OPT_KEEP_DASHDASH ; 
 struct strbuf STRBUF_INIT ; 
 int FUNC6 (struct pathspec*,char const*,int,int,int,int) ; 
 int /*<<< orphan*/  git_stash_save_usage ; 
 int /*<<< orphan*/  FUNC7 (struct pathspec*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int,char const**,char const*,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC9 (struct strbuf*,int,char const**,char) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 

__attribute__((used)) static int FUNC11(int argc, const char **argv, const char *prefix)
{
	int keep_index = -1;
	int patch_mode = 0;
	int include_untracked = 0;
	int quiet = 0;
	int ret = 0;
	const char *stash_msg = NULL;
	struct pathspec ps;
	struct strbuf stash_msg_buf = STRBUF_INIT;
	struct option options[] = {
		FUNC1('k', "keep-index", &keep_index,
			 FUNC0("keep index")),
		FUNC1('p', "patch", &patch_mode,
			 FUNC0("stash in patch mode")),
		FUNC5(&quiet, FUNC0("quiet mode")),
		FUNC1('u', "include-untracked", &include_untracked,
			 FUNC0("include untracked files in stash")),
		FUNC3('a', "all", &include_untracked,
			    FUNC0("include ignore files"), 2),
		FUNC4('m', "message", &stash_msg, "message",
			   FUNC0("stash message")),
		FUNC2()
	};

	argc = FUNC8(argc, argv, prefix, options,
			     git_stash_save_usage,
			     PARSE_OPT_KEEP_DASHDASH);

	if (argc)
		stash_msg = FUNC9(&stash_msg_buf, argc, argv, ' ');

	FUNC7(&ps, 0, sizeof(ps));
	ret = FUNC6(&ps, stash_msg, quiet, keep_index,
			    patch_mode, include_untracked);

	FUNC10(&stash_msg_buf);
	return ret;
}
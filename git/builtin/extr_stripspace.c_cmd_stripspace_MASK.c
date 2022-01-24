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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct option {int dummy; } ;
typedef  enum stripspace_mode { ____Placeholder_stripspace_mode } stripspace_mode ;

/* Variables and functions */
 int COMMENT_LINES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct option const FUNC1 (char,char*,int*,int /*<<< orphan*/ ,int) ; 
 struct option const FUNC2 () ; 
 struct strbuf STRBUF_INIT ; 
 int STRIP_COMMENTS ; 
 int STRIP_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_default_config ; 
 int FUNC6 (int,char const**,char const*,struct option const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 scalar_t__ FUNC8 (struct strbuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,int) ; 
 int /*<<< orphan*/  stripspace_usage ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct option const*) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC13(int argc, const char **argv, const char *prefix)
{
	struct strbuf buf = STRBUF_INIT;
	enum stripspace_mode mode = STRIP_DEFAULT;
	int nongit;

	const struct option options[] = {
		FUNC1('s', "strip-comments", &mode,
			    FUNC0("skip and remove all lines starting with comment character"),
			    STRIP_COMMENTS),
		FUNC1('c', "comment-lines", &mode,
			    FUNC0("prepend comment character and space to each line"),
			    COMMENT_LINES),
		FUNC2()
	};

	argc = FUNC6(argc, argv, prefix, options, stripspace_usage, 0);
	if (argc)
		FUNC11(stripspace_usage, options);

	if (mode == STRIP_COMMENTS || mode == COMMENT_LINES) {
		FUNC7(&nongit);
		FUNC5(git_default_config, NULL);
	}

	if (FUNC8(&buf, 0, 1024) < 0)
		FUNC4("could not read the input");

	if (mode == STRIP_DEFAULT || mode == STRIP_COMMENTS)
		FUNC10(&buf, mode == STRIP_COMMENTS);
	else
		FUNC3(&buf);

	FUNC12(1, buf.buf, buf.len);
	FUNC9(&buf);
	return 0;
}
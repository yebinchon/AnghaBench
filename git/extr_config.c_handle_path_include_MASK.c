#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char* buf; } ;
struct config_include_data {scalar_t__ depth; } ;
struct TYPE_2__ {char* path; char* name; } ;

/* Variables and functions */
 scalar_t__ MAX_INCLUDE_DEPTH ; 
 int /*<<< orphan*/  R_OK ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* cf ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,char const*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,...) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,char const*,struct config_include_data*) ; 
 int /*<<< orphan*/  git_config_include ; 
 char* include_depth_advice ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 

__attribute__((used)) static int FUNC13(const char *path, struct config_include_data *inc)
{
	int ret = 0;
	struct strbuf buf = STRBUF_INIT;
	char *expanded;

	if (!path)
		return FUNC2("include.path");

	expanded = FUNC5(path, 0);
	if (!expanded)
		return FUNC4(FUNC0("could not expand include path '%s'"), path);
	path = expanded;

	/*
	 * Use an absolute path as-is, but interpret relative paths
	 * based on the including config file.
	 */
	if (!FUNC9(path)) {
		char *slash;

		if (!cf || !cf->path)
			return FUNC4(FUNC0("relative config includes must come from files"));

		slash = FUNC6(cf->path);
		if (slash)
			FUNC10(&buf, cf->path, slash - cf->path + 1);
		FUNC11(&buf, path);
		path = buf.buf;
	}

	if (!FUNC1(path, R_OK, 0)) {
		if (++inc->depth > MAX_INCLUDE_DEPTH)
			FUNC3(FUNC0(include_depth_advice), MAX_INCLUDE_DEPTH, path,
			    !cf ? "<unknown>" :
			    cf->name ? cf->name :
			    "the command line");
		ret = FUNC8(git_config_include, path, inc);
		inc->depth--;
	}
	FUNC12(&buf);
	FUNC7(expanded);
	return ret;
}
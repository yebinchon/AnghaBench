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
struct config_options {int respect_includes; int /*<<< orphan*/  git_dir; int /*<<< orphan*/  commondir; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  config_fn_t ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,struct config_options*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

void FUNC6(config_fn_t cb, void *data)
{
	struct config_options opts = {0};
	struct strbuf commondir = STRBUF_INIT;
	struct strbuf gitdir = STRBUF_INIT;

	opts.respect_includes = 1;

	if (FUNC4()) {
		opts.commondir = FUNC2();
		opts.git_dir = FUNC3();
	/*
	 * When setup_git_directory() was not yet asked to discover the
	 * GIT_DIR, we ask discover_git_directory() to figure out whether there
	 * is any repository config we should use (but unlike
	 * setup_git_directory_gently(), no global state is changed, most
	 * notably, the current working directory is still the same after the
	 * call).
	 */
	} else if (!FUNC1(&commondir, &gitdir)) {
		opts.commondir = commondir.buf;
		opts.git_dir = gitdir.buf;
	}

	FUNC0(cb, data, NULL, &opts);

	FUNC5(&commondir);
	FUNC5(&gitdir);
}
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

/* Variables and functions */
 int /*<<< orphan*/  FF_ALLOW ; 
 int /*<<< orphan*/  FF_NO ; 
 int /*<<< orphan*/  FF_ONLY ; 
 char* branch ; 
 int /*<<< orphan*/  branch_mergeoptions ; 
 int /*<<< orphan*/  cleanup_arg ; 
 void* default_to_upstream ; 
 int /*<<< orphan*/  fast_forward ; 
 int FUNC0 (char const*,char const*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (char const*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC4 (char const*,char const*,void*) ; 
 int FUNC5 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*) ; 
 void* option_renormalize ; 
 int /*<<< orphan*/  pull_octopus ; 
 int /*<<< orphan*/  pull_twohead ; 
 void* show_diffstat ; 
 char* sign_commit ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*) ; 
 int FUNC9 (char*) ; 
 void* verify_signatures ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

__attribute__((used)) static int FUNC11(const char *k, const char *v, void *cb)
{
	int status;

	if (branch && FUNC7(k, "branch.") &&
		FUNC7(k + 7, branch) &&
		!FUNC8(k + 7 + FUNC9(branch), ".mergeoptions")) {
		FUNC1(branch_mergeoptions);
		branch_mergeoptions = FUNC10(v);
		return 0;
	}

	if (!FUNC8(k, "merge.diffstat") || !FUNC8(k, "merge.stat"))
		show_diffstat = FUNC2(k, v);
	else if (!FUNC8(k, "merge.verifysignatures"))
		verify_signatures = FUNC2(k, v);
	else if (!FUNC8(k, "pull.twohead"))
		return FUNC3(&pull_twohead, k, v);
	else if (!FUNC8(k, "pull.octopus"))
		return FUNC3(&pull_octopus, k, v);
	else if (!FUNC8(k, "commit.cleanup"))
		return FUNC3(&cleanup_arg, k, v);
	else if (!FUNC8(k, "merge.renormalize"))
		option_renormalize = FUNC2(k, v);
	else if (!FUNC8(k, "merge.ff")) {
		int boolval = FUNC6(v);
		if (0 <= boolval) {
			fast_forward = boolval ? FF_ALLOW : FF_NO;
		} else if (v && !FUNC8(v, "only")) {
			fast_forward = FF_ONLY;
		} /* do not barf on values from future versions of git */
		return 0;
	} else if (!FUNC8(k, "merge.defaulttoupstream")) {
		default_to_upstream = FUNC2(k, v);
		return 0;
	} else if (!FUNC8(k, "commit.gpgsign")) {
		sign_commit = FUNC2(k, v) ? "" : NULL;
		return 0;
	}

	status = FUNC0(k, v, cb);
	if (status)
		return status;
	status = FUNC5(k, v, NULL);
	if (status)
		return status;
	return FUNC4(k, v, cb);
}
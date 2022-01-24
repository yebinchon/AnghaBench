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
struct wt_status {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cleanup_arg ; 
 int /*<<< orphan*/  config_commit_verbose ; 
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,char const*,struct wt_status*) ; 
 scalar_t__ include_status ; 
 char* sign_commit ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  template_file ; 

__attribute__((used)) static int FUNC7(const char *k, const char *v, void *cb)
{
	struct wt_status *s = cb;
	int status;

	if (!FUNC6(k, "commit.template"))
		return FUNC2(&template_file, k, v);
	if (!FUNC6(k, "commit.status")) {
		include_status = FUNC0(k, v);
		return 0;
	}
	if (!FUNC6(k, "commit.cleanup"))
		return FUNC3(&cleanup_arg, k, v);
	if (!FUNC6(k, "commit.gpgsign")) {
		sign_commit = FUNC0(k, v) ? "" : NULL;
		return 0;
	}
	if (!FUNC6(k, "commit.verbose")) {
		int is_bool;
		config_commit_verbose = FUNC1(k, v, &is_bool);
		return 0;
	}

	status = FUNC4(k, v, NULL);
	if (status)
		return status;
	return FUNC5(k, v, s);
}
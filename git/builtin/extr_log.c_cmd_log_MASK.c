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
struct setup_revision_opt {char* def; int /*<<< orphan*/  tweak; int /*<<< orphan*/  revarg_opt; } ;
struct rev_info {int always_show_header; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  REVARG_COMMITTISH ; 
 int /*<<< orphan*/  FUNC0 (int,char const**,char const*,struct rev_info*,struct setup_revision_opt*) ; 
 int FUNC1 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_log_config ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  log_setup_revisions_tweak ; 
 int /*<<< orphan*/  FUNC4 (struct setup_revision_opt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct rev_info*,char const*) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC6(int argc, const char **argv, const char *prefix)
{
	struct rev_info rev;
	struct setup_revision_opt opt;

	FUNC3();
	FUNC2(git_log_config, NULL);

	FUNC5(the_repository, &rev, prefix);
	rev.always_show_header = 1;
	FUNC4(&opt, 0, sizeof(opt));
	opt.def = "HEAD";
	opt.revarg_opt = REVARG_COMMITTISH;
	opt.tweak = log_setup_revisions_tweak;
	FUNC0(argc, argv, prefix, &rev, &opt);
	return FUNC1(&rev);
}
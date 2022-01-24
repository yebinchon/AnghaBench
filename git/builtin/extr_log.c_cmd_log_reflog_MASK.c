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
struct setup_revision_opt {char* def; } ;
struct rev_info {int verbose_header; int abbrev_commit; int use_terminator; int always_show_header; int /*<<< orphan*/  commit_format; int /*<<< orphan*/  reflog_info; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  CMIT_FMT_ONELINE ; 
 int /*<<< orphan*/  FUNC0 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC1 (int,char const**,char const*,struct rev_info*,struct setup_revision_opt*) ; 
 int FUNC2 (struct rev_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_log_config ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct setup_revision_opt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct rev_info*,char const*) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC8(int argc, const char **argv, const char *prefix)
{
	struct rev_info rev;
	struct setup_revision_opt opt;

	FUNC4();
	FUNC3(git_log_config, NULL);

	FUNC7(the_repository, &rev, prefix);
	FUNC5(&rev.reflog_info);
	rev.verbose_header = 1;
	FUNC6(&opt, 0, sizeof(opt));
	opt.def = "HEAD";
	FUNC0(&rev);
	rev.abbrev_commit = 1;
	rev.commit_format = CMIT_FMT_ONELINE;
	rev.use_terminator = 1;
	rev.always_show_header = 1;
	FUNC1(argc, argv, prefix, &rev, &opt);

	return FUNC2(&rev);
}
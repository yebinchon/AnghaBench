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
struct rev_info {int /*<<< orphan*/  commit_format; scalar_t__ abbrev; } ;
struct repository {int dummy; } ;
struct argv_array {int /*<<< orphan*/  argv; int /*<<< orphan*/  argc; } ;
struct TYPE_2__ {int nr; scalar_t__ oid; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  CMIT_FMT_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (struct argv_array*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ current_bad_oid ; 
 TYPE_1__ good_revs ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC4 (struct repository*,struct rev_info*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct repository *r, struct rev_info *revs,
			     const char *prefix,
			     const char *bad_format, const char *good_format,
			     int read_paths)
{
	struct argv_array rev_argv = ARGV_ARRAY_INIT;
	int i;

	FUNC4(r, revs, prefix);
	revs->abbrev = 0;
	revs->commit_format = CMIT_FMT_UNSPECIFIED;

	/* rev_argv.argv[0] will be ignored by setup_revisions */
	FUNC0(&rev_argv, "bisect_rev_setup");
	FUNC1(&rev_argv, bad_format, FUNC2(current_bad_oid));
	for (i = 0; i < good_revs.nr; i++)
		FUNC1(&rev_argv, good_format,
				 FUNC2(good_revs.oid + i));
	FUNC0(&rev_argv, "--");
	if (read_paths)
		FUNC3(&rev_argv);

	FUNC5(rev_argv.argc, rev_argv.argv, revs, NULL);
	/* XXX leak rev_argv, as "revs" may still be pointing to it */
}
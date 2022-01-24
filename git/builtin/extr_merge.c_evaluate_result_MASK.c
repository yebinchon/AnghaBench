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
struct TYPE_2__ {int* format_callback_data; int /*<<< orphan*/  format_callback; int /*<<< orphan*/  output_format; } ;
struct rev_info {TYPE_1__ diffopt; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_FORMAT_CALLBACK ; 
 int /*<<< orphan*/  count_diff_files ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct rev_info*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct rev_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC4(void)
{
	int cnt = 0;
	struct rev_info rev;

	/* Check how many files differ. */
	FUNC1(the_repository, &rev, "");
	FUNC3(0, NULL, &rev, NULL);
	rev.diffopt.output_format |=
		DIFF_FORMAT_CALLBACK;
	rev.diffopt.format_callback = count_diff_files;
	rev.diffopt.format_callback_data = &cnt;
	FUNC2(&rev, 0);

	/*
	 * Check how many unmerged entries are
	 * there.
	 */
	cnt += FUNC0();

	return cnt;
}
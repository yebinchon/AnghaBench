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
struct TYPE_2__ {int /*<<< orphan*/  file; } ;
struct rev_info {TYPE_1__ diffopt; } ;
struct diff_options {int output_format; } ;
struct commit {int dummy; } ;
typedef  int /*<<< orphan*/  opts ;

/* Variables and functions */
 int DIFF_FORMAT_DIFFSTAT ; 
 int DIFF_FORMAT_SUMMARY ; 
 int /*<<< orphan*/  FUNC0 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC3 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct commit*) ; 
 int /*<<< orphan*/  FUNC6 (struct diff_options*,TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC7(struct rev_info *rev,
			  struct commit *origin, struct commit *head)
{
	struct diff_options opts;

	FUNC6(&opts, &rev->diffopt, sizeof(opts));
	opts.output_format = DIFF_FORMAT_SUMMARY | DIFF_FORMAT_DIFFSTAT;
	FUNC1(&opts);

	FUNC2(FUNC5(origin),
		      FUNC5(head),
		      "", &opts);
	FUNC3(&opts);
	FUNC0(&opts);

	FUNC4(rev->diffopt.file, "\n");
}
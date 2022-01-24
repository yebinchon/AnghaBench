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
struct TYPE_2__ {int /*<<< orphan*/  output_format; int /*<<< orphan*/  flags; } ;
struct rev_info {TYPE_1__ diffopt; } ;
struct object {int dummy; } ;
struct diff_options {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_FORMAT_NAME_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct rev_info*,struct object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct rev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rev_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC4(struct object *head,
			       const struct diff_options *opts)
{
	struct rev_info rev;
	/* I think we want full paths, even if we're in a subdirectory. */
	FUNC2(the_repository, &rev, NULL);
	rev.diffopt.flags = opts->flags;
	rev.diffopt.output_format |= DIFF_FORMAT_NAME_STATUS;
	FUNC1(&rev.diffopt);
	FUNC0(&rev, head, NULL);
	FUNC3(&rev, 0);
}
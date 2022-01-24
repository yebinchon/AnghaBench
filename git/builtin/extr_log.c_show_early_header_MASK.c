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
struct TYPE_2__ {int /*<<< orphan*/  file; int /*<<< orphan*/  line_termination; } ;
struct rev_info {scalar_t__ commit_format; TYPE_1__ diffopt; scalar_t__ shown_one; } ;

/* Variables and functions */
 scalar_t__ CMIT_FMT_ONELINE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rev_info *rev, const char *stage, int nr)
{
	if (rev->shown_one) {
		rev->shown_one = 0;
		if (rev->commit_format != CMIT_FMT_ONELINE)
			FUNC2(rev->diffopt.line_termination);
	}
	FUNC1(rev->diffopt.file, FUNC0("Final output: %d %s\n"), nr, stage);
}
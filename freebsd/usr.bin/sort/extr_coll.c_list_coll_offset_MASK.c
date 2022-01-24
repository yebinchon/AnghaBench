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
struct sort_list_item {int /*<<< orphan*/  str; int /*<<< orphan*/  ka; } ;
struct TYPE_2__ {scalar_t__ complex_sort; int /*<<< orphan*/  sflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ debug_sort ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 TYPE_1__ sort_opts_vals ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(struct sort_list_item **ss1, struct sort_list_item **ss2,
    size_t offset)
{
	int ret;

	ret = FUNC1(&((*ss1)->ka), &((*ss2)->ka), offset);

	if (debug_sort) {
		if (offset)
			FUNC2("; offset=%d", (int) offset);
		FUNC0(stdout, ((*ss1)->str), "; s1=<", ">");
		FUNC0(stdout, ((*ss2)->str), ", s2=<", ">");
		FUNC2("; cmp1=%d\n", ret);
	}

	if (ret)
		return (ret);

	if (!(sort_opts_vals.sflag) && sort_opts_vals.complex_sort) {
		ret = FUNC3(((*ss1)->str), ((*ss2)->str));
		if (debug_sort)
			FUNC2("; cmp2=%d\n", ret);
	}

	return (ret);
}
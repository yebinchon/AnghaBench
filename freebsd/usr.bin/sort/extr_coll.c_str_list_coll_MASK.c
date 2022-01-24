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
struct sort_list_item {struct bwstring* str; int /*<<< orphan*/  ka; } ;
struct keys_array {int dummy; } ;
struct bwstring {int dummy; } ;
struct TYPE_2__ {scalar_t__ complex_sort; int /*<<< orphan*/  sflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bwstring*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwstring*,struct keys_array*) ; 
 scalar_t__ debug_sort ; 
 int FUNC2 (struct keys_array*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct keys_array* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct bwstring*,struct keys_array*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct keys_array*) ; 
 int /*<<< orphan*/  FUNC7 (struct sort_list_item*) ; 
 TYPE_1__ sort_opts_vals ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC8 (struct bwstring*,struct bwstring*) ; 

int
FUNC9(struct bwstring *str1, struct sort_list_item **ss2)
{
	struct keys_array *ka1;
	int ret = 0;

	ka1 = FUNC3();

	FUNC4(str1, ka1);

	FUNC7(*ss2);

	if (debug_sort) {
		FUNC0(stdout, str1, "; s1=<", ">");
		FUNC0(stdout, (*ss2)->str, ", s2=<", ">");
	}

	ret = FUNC2(ka1, &((*ss2)->ka), 0);

	if (debug_sort)
		FUNC5("; cmp1=%d", ret);

	FUNC1(str1, ka1);
	FUNC6(ka1);

	if ((ret == 0) && !(sort_opts_vals.sflag) && sort_opts_vals.complex_sort) {
		ret = FUNC8(str1, ((*ss2)->str));
		if (debug_sort)
			FUNC5("; cmp2=%d", ret);
	}

	if (debug_sort)
		FUNC5("\n");

	return (ret);
}
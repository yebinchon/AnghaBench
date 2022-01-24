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
struct sort_list_item {int /*<<< orphan*/  str; } ;
struct sort_list {size_t count; struct sort_list_item** list; } ;
struct TYPE_2__ {int /*<<< orphan*/  zflag; int /*<<< orphan*/  uflag; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sort_list_item**,struct sort_list_item**) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 TYPE_1__ sort_opts_vals ; 

void
FUNC5(struct sort_list *l, const char *fn)
{

	if (l && fn) {
		FILE *f;

		f = FUNC4(fn, "w");
		if (f == NULL)
			FUNC2(2, NULL);

		if (l->list) {
			size_t i;
			if (!(sort_opts_vals.uflag)) {
				for (i = 0; i < l->count; ++i)
					FUNC0(l->list[i]->str, f,
					    sort_opts_vals.zflag);
			} else {
				struct sort_list_item *last_printed_item = NULL;
				struct sort_list_item *item;
				for (i = 0; i < l->count; ++i) {
					item = l->list[i];
					if ((last_printed_item == NULL) ||
					    FUNC3(&last_printed_item, &item)) {
						FUNC0(item->str, f, sort_opts_vals.zflag);
						last_printed_item = item;
					}
				}
			}
		}

		FUNC1(f, fn);
	}
}
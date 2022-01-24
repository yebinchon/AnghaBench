#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int close_file; int /*<<< orphan*/  file; } ;
struct rev_info {int early_output; TYPE_1__ diffopt; int /*<<< orphan*/  sort_order; } ;
struct commit_list {struct commit_list* next; struct commit* item; } ;
struct commit {int dummy; } ;
struct TYPE_6__ {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_7__ {TYPE_2__ it_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  ITIMER_REAL ; 
#define  commit_error 130 
#define  commit_ignore 129 
#define  commit_show 128 
 TYPE_3__ early_output_timer ; 
 int FUNC0 (struct commit_list*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rev_info*,struct commit*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rev_info*,char*,int) ; 
 int FUNC5 (struct rev_info*,struct commit*) ; 
 int /*<<< orphan*/  FUNC6 (struct commit_list**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct rev_info *revs, struct commit_list *list)
{
	int i = revs->early_output, close_file = revs->diffopt.close_file;
	int show_header = 1;

	revs->diffopt.close_file = 0;
	FUNC6(&list, revs->sort_order);
	while (list && i) {
		struct commit *commit = list->item;
		switch (FUNC5(revs, commit)) {
		case commit_show:
			if (show_header) {
				int n = FUNC0(list);
				FUNC4(revs, "incomplete", n);
				show_header = 0;
			}
			FUNC2(revs, commit);
			i--;
			break;
		case commit_ignore:
			break;
		case commit_error:
			if (close_file)
				FUNC1(revs->diffopt.file);
			return;
		}
		list = list->next;
	}

	/* Did we already get enough commits for the early output? */
	if (!i) {
		if (close_file)
			FUNC1(revs->diffopt.file);
		return;
	}

	/*
	 * ..if no, then repeat it twice a second until we
	 * do.
	 *
	 * NOTE! We don't use "it_interval", because if the
	 * reader isn't listening, we want our output to be
	 * throttled by the writing, and not have the timer
	 * trigger every second even if we're blocked on a
	 * reader!
	 */
	early_output_timer.it_value.tv_sec = 0;
	early_output_timer.it_value.tv_usec = 500000;
	FUNC3(ITIMER_REAL, &early_output_timer, NULL);
}
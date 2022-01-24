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
struct sort_list {scalar_t__ memsize; } ;
struct file_reader {int dummy; } ;
struct file_list {int dummy; } ;
struct bwstring {int dummy; } ;

/* Variables and functions */
 scalar_t__ available_free_memory ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file_list*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct file_reader*) ; 
 struct file_reader* FUNC3 (char const*) ; 
 struct bwstring* FUNC4 (struct file_reader*) ; 
 char* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct sort_list*,struct bwstring*) ; 
 int /*<<< orphan*/  FUNC7 (struct sort_list*) ; 
 int /*<<< orphan*/  FUNC8 (struct sort_list*,char*) ; 

int
FUNC9(const char *fsrc, struct sort_list *list, struct file_list *fl)
{
	struct file_reader *fr;

	fr = FUNC3(fsrc);
	if (fr == NULL)
		FUNC0(2, NULL);

	/* file browse cycle */
	for (;;) {
		struct bwstring *bws;

		bws = FUNC4(fr);

		if (bws == NULL)
			break;

		FUNC6(list, bws);

		if (list->memsize >= available_free_memory) {
			char *fn;

			fn = FUNC5();
			FUNC8(list, fn);
			FUNC1(fl, fn, false);
			FUNC7(list);
		}
	}

	FUNC2(fr);

	return (0);
}
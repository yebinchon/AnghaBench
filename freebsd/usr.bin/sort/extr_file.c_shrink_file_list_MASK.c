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
struct file_list {size_t count; int tmp; int /*<<< orphan*/  sz; int /*<<< orphan*/ * fns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct file_list*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct file_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct file_list*,int) ; 
 size_t max_open_files ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct file_list *fl)
{

	if ((fl == NULL) || (size_t) (fl->count) < max_open_files)
		return (0);
	else {
		struct file_list new_fl;
		size_t indx = 0;

		FUNC2(&new_fl, true);
		while (indx < fl->count) {
			char *fnew;
			size_t num;

			num = fl->count - indx;
			fnew = FUNC4();

			if ((size_t) num >= max_open_files)
				num = max_open_files - 1;
			FUNC3(num, fl->fns + indx, fnew);
			if (fl->tmp) {
				size_t i;

				for (i = 0; i < num; i++)
					FUNC5(fl->fns[indx + i]);
			}
			FUNC0(&new_fl, fnew, false);
			indx += num;
		}
		fl->tmp = false; /* already taken care of */
		FUNC1(fl);

		fl->count = new_fl.count;
		fl->fns = new_fl.fns;
		fl->sz = new_fl.sz;
		fl->tmp = new_fl.tmp;

		return (1);
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  links; } ;
typedef  TYPE_1__ prog_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  curfilename ; 
 TYPE_1__* FUNC1 (char*) ; 
 int goterror ; 
 int /*<<< orphan*/  linenum ; 
 scalar_t__ list_mode ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

void
FUNC4(int argc, char **argv)
{
	int i;
	prog_t *p = FUNC1(argv[1]);

	if (p == NULL) {
		FUNC3("%s:%d: no prog %s previously declared, skipping link",
		    curfilename, linenum, argv[1]);
		goterror = 1;
		return;
	}

	for (i = 2; i < argc; i++) {
		if (list_mode)
			FUNC2("%s\n",argv[i]);

		FUNC0(&p->links, argv[i]);
	}
}
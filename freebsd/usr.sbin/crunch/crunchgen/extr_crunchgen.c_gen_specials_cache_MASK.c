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
struct TYPE_3__ {char* srcdir; char* name; char* objdir; scalar_t__ objpaths; scalar_t__ objs; struct TYPE_3__* next; } ;
typedef  TYPE_1__ prog_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* CRUNCH_VERSION ; 
 int MAXLINELEN ; 
 char* cachename ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int goterror ; 
 char* infilename ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__* progs ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

void
FUNC7(void)
{
	FILE *cachef;
	prog_t *p;
	char line[MAXLINELEN];

	FUNC4(line, MAXLINELEN, "generating %s", cachename);
	FUNC5(line);

	if ((cachef = FUNC1(cachename, "w")) == NULL) {
		FUNC6("%s", cachename);
		goterror = 1;
		return;
	}

	FUNC2(cachef, "# %s - parm cache generated from %s by crunchgen "
	    " %s\n\n",
	    cachename, infilename, CRUNCH_VERSION);

	for (p = progs; p != NULL; p = p->next) {
		FUNC2(cachef, "\n");
		if (p->srcdir)
			FUNC2(cachef, "special %s srcdir %s\n",
			    p->name, p->srcdir);
		if (p->objdir)
			FUNC2(cachef, "special %s objdir %s\n",
			    p->name, p->objdir);
		if (p->objs) {
			FUNC2(cachef, "special %s objs", p->name);
			FUNC3(cachef, p->objs);
		}
		if (p->objpaths) {
			FUNC2(cachef, "special %s objpaths", p->name);
			FUNC3(cachef, p->objpaths);
		}
	}
	FUNC0(cachef);
}
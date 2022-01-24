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
struct TYPE_3__ {int /*<<< orphan*/ * libs; int /*<<< orphan*/ * buildopts; int /*<<< orphan*/ * objvar; int /*<<< orphan*/ * keeplist; int /*<<< orphan*/ * objpaths; int /*<<< orphan*/ * objs; int /*<<< orphan*/ * objdir; int /*<<< orphan*/ * srcdir; int /*<<< orphan*/ * ident; } ;
typedef  TYPE_1__ prog_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  curfilename ; 
 TYPE_1__* FUNC1 (char*) ; 
 int goterror ; 
 int /*<<< orphan*/  linenum ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ reading_cache ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 void* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

void
FUNC6(int argc, char **argv)
{
	int i;
	prog_t *p = FUNC1(argv[1]);

	if (p == NULL) {
		if (reading_cache)
			return;

		FUNC5("%s:%d: no prog %s previously declared, skipping special",
		    curfilename, linenum, argv[1]);
		goterror = 1;
		return;
	}

	if (!FUNC3(argv[2], "ident")) {
		if (argc != 4)
			goto argcount;
		if ((p->ident = FUNC4(argv[3])) == NULL)
			FUNC2();
	} else if (!FUNC3(argv[2], "srcdir")) {
		if (argc != 4)
			goto argcount;
		if ((p->srcdir = FUNC4(argv[3])) == NULL)
			FUNC2();
	} else if (!FUNC3(argv[2], "objdir")) {
		if(argc != 4)
			goto argcount;
		if((p->objdir = FUNC4(argv[3])) == NULL)
			FUNC2();
	} else if (!FUNC3(argv[2], "objs")) {
		p->objs = NULL;
		for (i = 3; i < argc; i++)
			FUNC0(&p->objs, argv[i]);
	} else if (!FUNC3(argv[2], "objpaths")) {
		p->objpaths = NULL;
		for (i = 3; i < argc; i++)
			FUNC0(&p->objpaths, argv[i]);
	} else if (!FUNC3(argv[2], "keep")) {
		p->keeplist = NULL;
		for(i = 3; i < argc; i++)
			FUNC0(&p->keeplist, argv[i]);
	} else if (!FUNC3(argv[2], "objvar")) {
		if(argc != 4)
			goto argcount;
		if ((p->objvar = FUNC4(argv[3])) == NULL)
			FUNC2();
	} else if (!FUNC3(argv[2], "buildopts")) {
		p->buildopts = NULL;
		for (i = 3; i < argc; i++)
			FUNC0(&p->buildopts, argv[i]);
	} else if (!FUNC3(argv[2], "lib")) {
		for (i = 3; i < argc; i++)
			FUNC0(&p->libs, argv[i]);
	} else {
		FUNC5("%s:%d: bad parameter name `%s', skipping line",
		    curfilename, linenum, argv[2]);
		goterror = 1;
	}
	return;

 argcount:
	FUNC5("%s:%d: too %s arguments, expected \"special %s %s <string>\"",
	    curfilename, linenum, argc < 4? "few" : "many", argv[1], argv[2]);
	goterror = 1;
}
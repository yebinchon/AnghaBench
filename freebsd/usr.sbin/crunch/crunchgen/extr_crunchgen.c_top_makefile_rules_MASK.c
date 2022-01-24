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
struct TYPE_3__ {char* name; char* ident; struct TYPE_3__* next; } ;
typedef  TYPE_1__ prog_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ buildopts ; 
 char* execfname ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ libs ; 
 scalar_t__ libs_so ; 
 scalar_t__ makeobj ; 
 char* objprefix ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__* progs ; 
 scalar_t__ FUNC2 (scalar_t__*,scalar_t__*) ; 

void
FUNC3(FILE *outmk)
{
	prog_t *p;

	FUNC0(outmk, "LD?= ld\n");
	if ( FUNC2(&libs, &libs_so) )
		FUNC0(outmk, "# NOTE: Some LIBS declarations below overridden by LIBS_SO\n");

	FUNC0(outmk, "LIBS+=");
	FUNC1(outmk, libs);

	FUNC0(outmk, "LIBS_SO+=");
	FUNC1(outmk, libs_so);

	if (makeobj) {
		FUNC0(outmk, "MAKEOBJDIRPREFIX?=%s\n", objprefix);
		FUNC0(outmk, "MAKEENV=env MAKEOBJDIRPREFIX=$(MAKEOBJDIRPREFIX)\n");
		FUNC0(outmk, "CRUNCHMAKE=$(MAKEENV) $(MAKE)\n");
	} else {
		FUNC0(outmk, "CRUNCHMAKE=$(MAKE)\n");
	}

	if (buildopts) {
		FUNC0(outmk, "BUILDOPTS+=");
		FUNC1(outmk, buildopts);
	}

	FUNC0(outmk, "CRUNCHED_OBJS=");
	for (p = progs; p != NULL; p = p->next)
		FUNC0(outmk, " %s.lo", p->name);
	FUNC0(outmk, "\n");

	FUNC0(outmk, "SUBMAKE_TARGETS=");
	for (p = progs; p != NULL; p = p->next)
		FUNC0(outmk, " %s_make", p->ident);
	FUNC0(outmk, "\nSUBCLEAN_TARGETS=");
	for (p = progs; p != NULL; p = p->next)
		FUNC0(outmk, " %s_clean", p->ident);
	FUNC0(outmk, "\n\n");

	FUNC0(outmk, "all: objs exe\nobjs: $(SUBMAKE_TARGETS)\n");
	FUNC0(outmk, "exe: %s\n", execfname);
	FUNC0(outmk, "%s: %s.o $(CRUNCHED_OBJS) $(SUBMAKE_TARGETS)\n", execfname, execfname);
	FUNC0(outmk, ".if defined(LIBS_SO) && !empty(LIBS_SO)\n");
	FUNC0(outmk, "\t$(CC) -o %s %s.o $(CRUNCHED_OBJS) \\\n",
	    execfname, execfname);
	FUNC0(outmk, "\t\t-Xlinker -Bstatic $(LIBS) \\\n");
	FUNC0(outmk, "\t\t-Xlinker -Bdynamic $(LIBS_SO)\n");
	FUNC0(outmk, ".else\n");
	FUNC0(outmk, "\t$(CC) -static -o %s %s.o $(CRUNCHED_OBJS) $(LIBS)\n",
	    execfname, execfname);
	FUNC0(outmk, ".endif\n");
	FUNC0(outmk, "realclean: clean subclean\n");
	FUNC0(outmk, "clean:\n\trm -f %s *.lo *.o *_stub.c\n", execfname);
	FUNC0(outmk, "subclean: $(SUBCLEAN_TARGETS)\n");
}
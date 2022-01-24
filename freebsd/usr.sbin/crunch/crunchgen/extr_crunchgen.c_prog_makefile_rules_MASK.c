#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* str; struct TYPE_5__* next; } ;
typedef  TYPE_1__ strlst_t ;
struct TYPE_6__ {char* name; char* ident; char* objdir; char* srcdir; char* realsrcdir; TYPE_1__* keeplist; TYPE_1__* libs; TYPE_1__* buildopts; TYPE_1__* objs; TYPE_1__* objpaths; } ;
typedef  TYPE_2__ prog_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ makeobj ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC2(FILE *outmk, prog_t *p)
{
	strlst_t *lst;

	FUNC0(outmk, "\n# -------- %s\n\n", p->name);

	FUNC0(outmk, "%s_OBJDIR=", p->ident);
	if (p->objdir)
		FUNC0(outmk, "%s", p->objdir);
	else
		FUNC0(outmk, "$(MAKEOBJDIRPREFIX)/$(%s_REALSRCDIR)\n",
		    p->ident);
	FUNC0(outmk, "\n");

	FUNC0(outmk, "%s_OBJPATHS=", p->ident);
	if (p->objpaths)
		FUNC1(outmk, p->objpaths);
	else {
		for (lst = p->objs; lst != NULL; lst = lst->next) {
			FUNC0(outmk, " $(%s_OBJDIR)/%s", p->ident, lst->str);
		}
		FUNC0(outmk, "\n");
	}
	FUNC0(outmk, "$(%s_OBJPATHS): .NOMETA\n", p->ident);

	if (p->srcdir && p->objs) {
		FUNC0(outmk, "%s_SRCDIR=%s\n", p->ident, p->srcdir);
		FUNC0(outmk, "%s_REALSRCDIR=%s\n", p->ident, p->realsrcdir);

		FUNC0(outmk, "%s_OBJS=", p->ident);
		FUNC1(outmk, p->objs);
		if (p->buildopts != NULL) {
			FUNC0(outmk, "%s_OPTS+=", p->ident);
			FUNC1(outmk, p->buildopts);
		}
#if 0
		fprintf(outmk, "$(%s_OBJPATHS): %s_make\n\n", p->ident, p->ident);
#endif
		FUNC0(outmk, "%s_make:\n", p->ident);
		FUNC0(outmk, "\t(cd $(%s_SRCDIR) && ", p->ident);
		if (makeobj)
			FUNC0(outmk, "$(CRUNCHMAKE) obj && ");
		FUNC0(outmk, "\\\n");
		FUNC0(outmk, "\t\t$(CRUNCHMAKE) $(BUILDOPTS) $(%s_OPTS) depend &&",
		    p->ident);
		FUNC0(outmk, "\\\n");
		FUNC0(outmk, "\t\t$(CRUNCHMAKE) $(BUILDOPTS) $(%s_OPTS) "
		    "$(%s_OBJS))",
		    p->ident, p->ident);
		FUNC0(outmk, "\n");
		FUNC0(outmk, "%s_clean:\n", p->ident);
		FUNC0(outmk, "\t(cd $(%s_SRCDIR) && $(CRUNCHMAKE) $(BUILDOPTS) clean cleandepend)\n\n",
		    p->ident);
	} else {
		FUNC0(outmk, "%s_make:\n", p->ident);
		FUNC0(outmk, "\t@echo \"** cannot make objs for %s\"\n\n",
		    p->name);
	}

	if (p->libs) {
		FUNC0(outmk, "%s_LIBS=", p->ident);
		FUNC1(outmk, p->libs);
	}

	FUNC0(outmk, "%s_stub.c:\n", p->name);
	FUNC0(outmk, "\techo \""
	    "extern int main(int argc, char **argv, char **envp); "
	    "int _crunched_%s_stub(int argc, char **argv, char **envp)"
	    "{return main(argc,argv,envp);}\" >%s_stub.c\n",
	    p->ident, p->name);
	FUNC0(outmk, "%s.lo: %s_stub.o $(%s_OBJPATHS)",
	    p->name, p->name, p->ident);
	if (p->libs)
		FUNC0(outmk, " $(%s_LIBS)", p->ident);

	FUNC0(outmk, "\n");
	FUNC0(outmk, "\t$(CC) -nostdlib -Wl,-dc -r -o %s.lo %s_stub.o $(%s_OBJPATHS)",
	    p->name, p->name, p->ident);
	if (p->libs)
		FUNC0(outmk, " $(%s_LIBS)", p->ident);
	FUNC0(outmk, "\n");
	FUNC0(outmk, "\tcrunchide -k _crunched_%s_stub ", p->ident);
	for (lst = p->keeplist; lst != NULL; lst = lst->next)
		FUNC0(outmk, "-k _%s ", lst->str);
	FUNC0(outmk, "%s.lo\n", p->name);
}
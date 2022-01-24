#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* str; struct TYPE_4__* next; } ;
typedef  TYPE_1__ strlst_t ;
struct TYPE_5__ {char* ident; char* name; TYPE_1__* links; struct TYPE_5__* next; } ;
typedef  TYPE_2__ prog_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* CRUNCH_VERSION ; 
 int MAXLINELEN ; 
 char** crunched_skel ; 
 char* execfname ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int goterror ; 
 char* infilename ; 
 char* outcfname ; 
 TYPE_2__* progs ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

void
FUNC6(void)
{
	char **cp;
	FILE *outcf;
	prog_t *p;
	strlst_t *s;
	char line[MAXLINELEN];

	FUNC3(line, MAXLINELEN, "generating %s", outcfname);
	FUNC4(line);

	if((outcf = FUNC1(outcfname, "w")) == NULL) {
		FUNC5("%s", outcfname);
		goterror = 1;
		return;
	}

	FUNC2(outcf,
	    "/* %s - generated from %s by crunchgen %s */\n",
	    outcfname, infilename, CRUNCH_VERSION);

	FUNC2(outcf, "#define EXECNAME \"%s\"\n", execfname);
	for (cp = crunched_skel; *cp != NULL; cp++)
		FUNC2(outcf, "%s\n", *cp);

	for (p = progs; p != NULL; p = p->next)
		FUNC2(outcf, "extern int _crunched_%s_stub();\n", p->ident);

	FUNC2(outcf, "\nstruct stub entry_points[] = {\n");
	for (p = progs; p != NULL; p = p->next) {
		FUNC2(outcf, "\t{ \"%s\", _crunched_%s_stub },\n",
		    p->name, p->ident);
		for (s = p->links; s != NULL; s = s->next)
			FUNC2(outcf, "\t{ \"%s\", _crunched_%s_stub },\n",
			    s->str, p->ident);
	}

	FUNC2(outcf, "\t{ EXECNAME, crunched_main },\n");
	FUNC2(outcf, "\t{ NULL, NULL }\n};\n");
	FUNC0(outcf);
}
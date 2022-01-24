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
struct TYPE_5__ {char* objvar; char* srcdir; char* ident; int /*<<< orphan*/  objs; TYPE_1__* buildopts; } ;
typedef  TYPE_2__ prog_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAXLINELEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ buildopts ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int goterror ; 
 scalar_t__ FUNC6 (unsigned char) ; 
 int FUNC7 (char*) ; 
 char* outhdrname ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* path_make ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char*,char*,char*) ; 
 scalar_t__ FUNC13 (char*,char*,int) ; 
 char* tempfname ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 

void
FUNC17(prog_t *p, char *path)
{
	char *obj, *cp;
	int fd, rc;
	FILE *f;
	char *objvar="OBJS";
	strlst_t *s;
	char line[MAXLINELEN];

	/* discover the objs from the srcdir Makefile */

	if ((fd = FUNC7(tempfname)) == -1) {
		FUNC10(tempfname);
		FUNC1(1);
	}
	if ((f = FUNC3(fd, "w")) == NULL) {
		FUNC15("%s", tempfname);
		goterror = 1;
		return;
	}
	if (p->objvar)
		objvar = p->objvar;

	/*
	* XXX include outhdrname (e.g. to contain Make variables)
	*/
	if (outhdrname[0] != '\0')
		FUNC5(f, ".include \"%s\"\n", outhdrname);
	FUNC5(f, ".include \"%s\"\n", path);
	FUNC5(f, ".POSIX:\n");
	if (buildopts) {
		FUNC5(f, "BUILDOPTS+=");
		FUNC8(f, buildopts);
	}
	FUNC5(f, ".if defined(PROG)\n");
	FUNC5(f, "%s?=${PROG}.o\n", objvar);
	FUNC5(f, ".endif\n");
	FUNC5(f, "loop:\n\t@echo 'OBJS= '${%s}\n", objvar);

	FUNC5(f, "crunchgen_objs:\n"
	    "\t@cd %s && %s -f %s $(BUILDOPTS) $(%s_OPTS)",
	    p->srcdir, path_make, tempfname, p->ident);
	for (s = p->buildopts; s != NULL; s = s->next)
		FUNC5(f, " %s", s->str);
	FUNC5(f, " loop\n");

	FUNC2(f);

	FUNC12(line, MAXLINELEN, "cd %s && %s -f %s -B crunchgen_objs",
	     p->srcdir, path_make, tempfname);
	if ((f = FUNC11(line, "r")) == NULL) {
		FUNC15("submake pipe");
		goterror = 1;
		return;
	}

	while(FUNC4(line, MAXLINELEN, f)) {
		if (FUNC13(line, "OBJS= ", 6)) {
			FUNC16("make error: %s", line);
			goterror = 1;
			continue;
		}

		cp = line + 6;
		while (FUNC6((unsigned char)*cp))
			cp++;

		while(*cp) {
			obj = cp;
			while (*cp && !FUNC6((unsigned char)*cp))
				cp++;
			if (*cp)
				*cp++ = '\0';
			FUNC0(&p->objs, obj);
			while (FUNC6((unsigned char)*cp))
				cp++;
		}
	}

	if ((rc=FUNC9(f)) != 0) {
		FUNC16("make error: make returned %d", rc);
		goterror = 1;
	}

	FUNC14(tempfname);
}
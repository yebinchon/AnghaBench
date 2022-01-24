#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* name; char* srcdir; char* realsrcdir; char* objdir; int goterror; int /*<<< orphan*/  objs; scalar_t__ ident; } ;
typedef  TYPE_1__ prog_t ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAXLINELEN ; 
 int MAXPATHLEN ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  infilename ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  makeobj ; 
 char* objprefix ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 void* FUNC14 (char*) ; 
 scalar_t__ verbose ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,char*,...) ; 

void
FUNC16(prog_t *p)
{
	char path[MAXPATHLEN];
	char line[MAXLINELEN];
	FILE *f;

	FUNC11(line, MAXLINELEN, "filling in parms for %s", p->name);
	FUNC12(line);

	if (!p->ident)
		p->ident = FUNC4(p->name);

	/* look for the source directory if one wasn't specified by a special */
	if (!p->srcdir) {
		p->srcdir = FUNC0(p->name);
	}

	/* Determine the actual srcdir (maybe symlinked). */
	if (p->srcdir) {
		FUNC11(line, MAXLINELEN, "cd %s && echo -n `/bin/pwd`",
		    p->srcdir);
		f = FUNC10(line,"r");
		if (!f)
			FUNC1(1, "Can't execute: %s\n", line);

		path[0] = '\0';
		FUNC2(path, sizeof path, f);
		if (FUNC9(f))
			FUNC1(1, "Can't execute: %s\n", line);

		if (!*path)
			FUNC1(1, "Can't perform pwd on: %s\n", p->srcdir);

		p->realsrcdir = FUNC14(path);
	}

	/* Unless the option to make object files was specified the
	* the objects will be built in the source directory unless
	* an object directory already exists.
	*/
	if (!makeobj && !p->objdir && p->srcdir) {
		char *auto_obj;

		auto_obj = NULL;
		FUNC11(line, sizeof line, "%s/%s", objprefix, p->realsrcdir);
		if (FUNC6(line) ||
		    ((auto_obj = FUNC5("MK_AUTO_OBJ")) != NULL &&
		    FUNC13(auto_obj, "yes") == 0)) {
			if ((p->objdir = FUNC14(line)) == NULL)
			FUNC8();
		} else
			p->objdir = p->realsrcdir;
	}

	/*
	* XXX look for a Makefile.{name} in local directory first.
	* This lets us override the original Makefile.
	*/
	FUNC11(path, sizeof(path), "Makefile.%s", p->name);
	if (FUNC7(path)) {
		FUNC11(line, MAXLINELEN, "Using %s for %s", path, p->name);
		FUNC12(line);
	} else
		if (p->srcdir)
			FUNC11(path, sizeof(path), "%s/Makefile", p->srcdir);
	if (!p->objs && p->srcdir && FUNC7(path))
		FUNC3(p, path);

	if (!p->srcdir && !p->objdir && verbose)
		FUNC15("%s: %s: %s",
		    "warning: could not find source directory",
		    infilename, p->name);
	if (!p->objs && verbose)
		FUNC15("%s: %s: warning: could not find any .o files",
		    infilename, p->name);

	if ((!p->srcdir || !p->objdir) && !p->objs)
		p->goterror = 1;
}
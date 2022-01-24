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
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef  TYPE_1__ prog_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* CRUNCH_VERSION ; 
 int MAXLINELEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int goterror ; 
 char* infilename ; 
 char* outhdrname ; 
 char* outmkname ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* progs ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

void
FUNC8(void)
{
	prog_t *p;
	FILE *outmk;
	char line[MAXLINELEN];

	FUNC4(line, MAXLINELEN, "generating %s", outmkname);
	FUNC5(line);

	if ((outmk = FUNC1(outmkname, "w")) == NULL) {
		FUNC7("%s", outmkname);
		goterror = 1;
		return;
	}

	FUNC2(outmk, "# %s - generated from %s by crunchgen %s\n\n",
	    outmkname, infilename, CRUNCH_VERSION);

	if (outhdrname[0] != '\0')
		FUNC2(outmk, ".include \"%s\"\n", outhdrname);

	FUNC6(outmk);
	for (p = progs; p != NULL; p = p->next)
		FUNC3(outmk, p);

	FUNC2(outmk, "\n# ========\n");
	FUNC0(outmk);
}
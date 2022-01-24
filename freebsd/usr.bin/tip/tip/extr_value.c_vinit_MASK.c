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
struct TYPE_3__ {int v_type; char* v_value; int v_access; int /*<<< orphan*/ * v_name; } ;
typedef  TYPE_1__ value_t ;
typedef  int /*<<< orphan*/  file ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ENVIRON ; 
 size_t EXCEPTIONS ; 
 int FILENAME_MAX ; 
 int /*<<< orphan*/  HOME ; 
 int IREMOTE ; 
 int PUBLIC ; 
 int WRITE ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC9 (char*) ; 
 char* FUNC10 (char*,char) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ vflag ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 TYPE_1__* vtable ; 

void
FUNC13(void)
{
	char file[FILENAME_MAX], *cp;
	value_t *p;
	FILE *fp;

	for (p = vtable; p->v_name != NULL; p++) {
		if (p->v_type&ENVIRON)
			if ((cp = FUNC5(p->v_name)))
				p->v_value = cp;
		if (p->v_type&IREMOTE)
			FUNC7(p->v_value, *FUNC0(p->v_value));
	}
	/*
	 * Read the .tiprc file in the HOME directory
	 *  for sets
	 */
	cp = FUNC11(HOME);
	if (cp == NULL) {
		(void)FUNC4(stderr, 
		    "$HOME not set. Skipping check for ~/.tiprc\n");
	} else if (FUNC9(cp) + sizeof("/.tiprc") > sizeof(file)) {
		(void)FUNC4(stderr, "Home directory path too long: %s\n",
		    FUNC11(HOME));
	} else {
		FUNC8(file, sizeof file, "%s/.tiprc", FUNC11(HOME));
		if ((fp = FUNC3(file, "r")) != NULL) {
			char *tp;

			while (FUNC2(file, sizeof(file)-1, fp) != NULL) {
				if (vflag)
					FUNC6("set %s", file);
				if ((tp = FUNC10(file, '\n')))
					*tp = '\0';
				FUNC12(file);
			}
			FUNC1(fp);
		}
	}
	/*
	 * To allow definition of exception prior to fork
	 */
	vtable[EXCEPTIONS].v_access &= ~(WRITE<<PUBLIC);
}
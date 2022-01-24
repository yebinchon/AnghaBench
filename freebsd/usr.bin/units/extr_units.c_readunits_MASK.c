#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  cap_rights_t ;
struct TYPE_4__ {void* prefixval; void* prefixname; } ;
struct TYPE_3__ {void* uval; void* uname; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FSTAT ; 
 int /*<<< orphan*/  CAP_READ ; 
 size_t MAXPREFIXES ; 
 size_t MAXUNITS ; 
 int /*<<< orphan*/  SEPARATOR ; 
 char* UNITSFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char*) ; 
 char* FUNC10 (char*) ; 
 size_t prefixcount ; 
 TYPE_2__* prefixtable ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (void*,char*) ; 
 int FUNC13 (char*,char*) ; 
 int FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 char* FUNC16 (char*,int /*<<< orphan*/ ) ; 
 size_t unitcount ; 
 TYPE_1__* unittable ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 

__attribute__((used)) static void 
FUNC18(const char *userfile)
{
	FILE *unitfile;
	char line[512], *lineptr;
	int len, linenum, i;
	cap_rights_t unitfilerights;

	unitcount = 0;
	linenum = 0;

	if (userfile) {
		unitfile = FUNC9(userfile, "r");
		if (!unitfile)
			FUNC4(1, "unable to open units file '%s'", userfile);
	}
	else {
		unitfile = FUNC9(UNITSFILE, "r");
		if (!unitfile) {
			char *direc, *env;
			char filename[1000];

			env = FUNC10("PATH");
			if (env) {
				direc = FUNC16(env, SEPARATOR);
				while (direc) {
					FUNC11(filename, sizeof(filename),
					    "%s/%s", direc, UNITSFILE);
					unitfile = FUNC9(filename, "rt");
					if (unitfile)
						break;
					direc = FUNC16(NULL, SEPARATOR);
				}
			}
			if (!unitfile)
				FUNC4(1, "can't find units file '%s'", UNITSFILE);
		}
	}
	FUNC0(&unitfilerights, CAP_READ, CAP_FSTAT);
	if (FUNC1(FUNC8(unitfile), &unitfilerights) < 0)
		FUNC3(1, "cap_rights_limit() failed");
	while (!FUNC6(unitfile)) {
		if (!FUNC7(line, sizeof(line), unitfile))
			break;
		linenum++;
		lineptr = line;
		if (*lineptr == '/' || *lineptr == '#')
			continue;
		lineptr += FUNC15(lineptr, " \n\t");
		len = FUNC13(lineptr, " \n\t");
		lineptr[len] = 0;
		if (!FUNC14(lineptr))
			continue;
		if (lineptr[FUNC14(lineptr) - 1] == '-') { /* it's a prefix */
			if (prefixcount == MAXPREFIXES) {
				FUNC17("memory for prefixes exceeded in line %d", linenum);
				continue;
			}
			lineptr[FUNC14(lineptr) - 1] = 0;
			prefixtable[prefixcount].prefixname = FUNC2(lineptr);
			for (i = 0; i < prefixcount; i++)
				if (!FUNC12(prefixtable[i].prefixname, lineptr)) {
					FUNC17("redefinition of prefix '%s' on line %d ignored",
					    lineptr, linenum);
					continue;
				}
			lineptr += len + 1;
			lineptr += FUNC15(lineptr, " \n\t");
			len = FUNC13(lineptr, "\n\t");
			if (len == 0) {
				FUNC17("unexpected end of prefix on line %d",
				    linenum);
				continue;
			}
			lineptr[len] = 0;
			prefixtable[prefixcount++].prefixval = FUNC2(lineptr);
		}
		else {		/* it's not a prefix */
			if (unitcount == MAXUNITS) {
				FUNC17("memory for units exceeded in line %d", linenum);
				continue;
			}
			unittable[unitcount].uname = FUNC2(lineptr);
			for (i = 0; i < unitcount; i++)
				if (!FUNC12(unittable[i].uname, lineptr)) {
					FUNC17("redefinition of unit '%s' on line %d ignored",
					    lineptr, linenum);
					continue;
				}
			lineptr += len + 1;
			lineptr += FUNC15(lineptr, " \n\t");
			if (!FUNC14(lineptr)) {
				FUNC17("unexpected end of unit on line %d",
				    linenum);
				continue;
			}
			len = FUNC13(lineptr, "\n\t");
			lineptr[len] = 0;
			unittable[unitcount++].uval = FUNC2(lineptr);
		}
	}
	FUNC5(unitfile);
}
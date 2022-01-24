#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 char* appname ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/ * listfile ; 
 char* listfilename ; 
 int /*<<< orphan*/ * ofile ; 
 char* ofilename ; 
 int /*<<< orphan*/  patch_functions ; 
 int /*<<< orphan*/ * regfile ; 
 char* regfilename ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* yyfilename ; 
 int yylineno ; 

void
FUNC6(const char *string, int err_code)
{
	if (string != NULL) {
		FUNC2(stderr, "%s: ", appname);
		if (yyfilename != NULL) {
			FUNC2(stderr, "Stopped at file %s, line %d - ",
				yyfilename, yylineno);
		}
		FUNC2(stderr, "%s\n", string);
	}

	if (ofile != NULL) {
		FUNC1(ofile);
		if (err_code != 0) {
			FUNC2(stderr, "%s: Removing %s due to error\n",
				appname, ofilename);
			FUNC5(ofilename);
		}
	}

	if (regfile != NULL) {
		FUNC1(regfile);
		if (err_code != 0) {
			FUNC2(stderr, "%s: Removing %s due to error\n",
				appname, regfilename);
			FUNC5(regfilename);
		}
	}

	if (listfile != NULL) {
		FUNC1(listfile);
		if (err_code != 0) {
			FUNC2(stderr, "%s: Removing %s due to error\n",
				appname, listfilename);
			FUNC5(listfilename);
		}
	}

	FUNC3(&patch_functions);
	FUNC4();

	FUNC0(err_code);
}
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
typedef  int /*<<< orphan*/  definition ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 char const* FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void
FUNC12(const char *infile, const char *define, int extend, const char *outfile)
{
	definition *def;
	char *include;
	const char *outfilename;
	long tell;
	int has_program = 0;

	FUNC7(infile, define);
	outfilename = extend ? FUNC2(infile, outfile) : outfile;
	FUNC1(infile, outfilename);
	/*
	 * Check if outfile already exists.
	 * if so, print an error message and exit
	 */

	FUNC8(infile, outfilename);
	FUNC0();
	if (infile && (include = FUNC2(infile, ".h"))) {
		FUNC3(fout, "#include \"%s\"\n", include);
		FUNC4(include);
	} else
		FUNC3(fout, "#include <rpc/rpc.h>\n");
	FUNC3(fout, "#include <stdio.h>\n");
	FUNC3(fout, "#include <stdlib.h>\n");
	tell = FUNC5(fout);
	while ( (def = FUNC6()) ) {
		has_program += FUNC10(def);
	}

	if (has_program)
		FUNC11();

	if (extend && tell == FUNC5(fout)) {
		(void) FUNC9(outfilename);
	}
}
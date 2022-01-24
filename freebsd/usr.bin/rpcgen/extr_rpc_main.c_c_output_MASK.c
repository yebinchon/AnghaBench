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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char const* FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 

__attribute__((used)) static void
FUNC11(const char *infile, const char *define, int extend, const char *outfile)
{
	definition *def;
	char *include;
	const char *outfilename;
	long tell;

	FUNC1();
	FUNC8(infile, define);
	outfilename = extend ? FUNC3(infile, outfile) : outfile;
	FUNC9(infile, outfilename);
	FUNC0();
	if (infile && (include = FUNC3(infile, ".h"))) {
		FUNC4(fout, "#include \"%s\"\n", include);
		FUNC5(include);
		/* .h file already contains rpc/rpc.h */
	} else
		FUNC4(fout, "#include <rpc/rpc.h>\n");
	tell = FUNC6(fout);
	while ( (def = FUNC7()) ) {
		FUNC2(def);
	}
	if (extend && tell == FUNC6(fout)) {
		(void) FUNC10(outfilename);
	}
}
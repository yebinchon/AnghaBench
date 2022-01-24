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
struct TYPE_3__ {scalar_t__ def_kind; } ;
typedef  TYPE_1__ definition ;

/* Variables and functions */
 scalar_t__ DEF_PROGRAM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char const* FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  fout ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9(const char *infile, const char *define, int extend, const char *outfile)
{
	char *include;
	definition *def;
	int foundprogram = 0;
	const char *outfilename;

	FUNC5(infile, define);
	outfilename = extend ? FUNC1(infile, outfile) : outfile;
	FUNC6(infile, outfilename);
	FUNC0();
	FUNC2 (fout, "#include <string.h> /* for memset */\n");
	if (infile && (include = FUNC1(infile, ".h"))) {
		FUNC2(fout, "#include \"%s\"\n", include);
		FUNC3(include);
	} else
		FUNC2(fout, "#include <rpc/rpc.h>\n");
	while ( (def = FUNC4()) ) {
		foundprogram |= (def->def_kind == DEF_PROGRAM);
	}
	if (extend && !foundprogram) {
		(void) FUNC7(outfilename);
		return;
	}
	FUNC8();
}
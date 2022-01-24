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
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(const char *infile, const char *define, int extend, const char *outfile)
{
	definition *def;
	int foundprogram = 0;
	const char *outfilename;

	FUNC3(infile, define);
	outfilename = extend ? FUNC1(infile, outfile) : outfile;
	FUNC4(infile, outfilename);
	FUNC0();
	while ( (def = FUNC2()) ) {
		foundprogram |= (def->def_kind == DEF_PROGRAM);
	}
	if (extend && !foundprogram) {
		(void) FUNC5(outfilename);
		return;
	}
	FUNC6();
}
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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/ * fout ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/ * stdout ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static void
FUNC6(const char *infile, const char *outfile)
{

	if (outfile == NULL) {
		fout = stdout;
		return;
	}

	if (infile != NULL && FUNC3(outfile, infile)) {
		FUNC5("%s already exists. No output generated", infile);
		FUNC0();
	}
	fout = FUNC1(outfile, "w");
	if (fout == NULL) {
		FUNC4("unable to open %s", outfile);
		FUNC0();
	}
	FUNC2(outfile);

	return;
}
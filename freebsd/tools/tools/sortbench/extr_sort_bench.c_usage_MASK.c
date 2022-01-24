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
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2(const char *progname)
{
	FUNC1("Usage:\n");
	FUNC1("\t%s: [alg] [test] [runs] [elt_power]\n", progname);
	FUNC1("\n");
	FUNC1("Valid algs:\n");
#ifdef WIKI
	printf("\theap merge quick wiki\n");
#else
	FUNC1("\theap merge quick\n");
#endif
	FUNC1("Valid tests:\n");
	FUNC1("\trand sort part rev\n");
	FUNC1("\trand: Random element array \n");
	FUNC1("\tsort: Increasing order array \n");
	FUNC1("\tpart: Partially ordered array\n");
	FUNC1("\trev: Decreasing order array\n");
	FUNC1("Run the algorithm [runs] times with 2^[elt_power] elements\n");
	FUNC0(EX_USAGE);
}
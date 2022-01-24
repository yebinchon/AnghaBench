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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(const char *progname)
{

	FUNC1(stderr, "usage: %s [-d] [-t] [-h] [-v] [-f dsdt_input] "
			"[-o dsdt_output]\n", progname);
	FUNC1(stderr, "To send ASL:\n\t%s -dt | gzip -c9 > foo.asl.gz\n",
	    progname);
	FUNC0(1);
}
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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC2(void)
{
	/* Print usage and exit. */
    FUNC1(stderr, "usage: at [-q x] [-f file] [-m] time\n"
		    "       at -c job [job ...]\n"
		    "       at [-f file] -t [[CC]YY]MMDDhhmm[.SS]\n"
		    "       at -r job [job ...]\n"
		    "       at -l -q queuename\n"
		    "       at -l [job ...]\n"
		    "       atq [-q x] [-v]\n"
		    "       atrm job [job ...]\n"
		    "       batch [-f file] [-m]\n");
    FUNC0(EXIT_FAILURE);
}
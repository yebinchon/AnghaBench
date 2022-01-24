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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_MOUNTTAB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,long,char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(char *hostp, char *dirp)
{
	FILE *mtabfile;

	if ((mtabfile = FUNC1(PATH_MOUNTTAB, "a")) == NULL)
		return (0);
	else {
		FUNC2(mtabfile, "%ld\t%s\t%s\n",
		    (long)FUNC3(NULL), hostp, dirp);
		FUNC0(mtabfile);
		return (1);
	}
}
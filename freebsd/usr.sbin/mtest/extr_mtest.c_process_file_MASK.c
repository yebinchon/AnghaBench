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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(char *fname, int s, int s6)
{
	char line[80];
	FILE *fp;
	char *lineptr;

	fp = FUNC2(fname, "r");
	if (fp == NULL) {
		FUNC5("fopen");
		return;
	}

	/* Skip comments and empty lines. */
	while (FUNC1(line, sizeof(line), fp) != NULL) {
		lineptr = line;
		while (FUNC3(*lineptr))
			lineptr++;
		if (*lineptr != '#' && *lineptr != '\n')
			FUNC4(lineptr, s, s6, fp);
	}

	FUNC0(fp);
}
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
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 char* FUNC6 (char*,size_t) ; 

void
FUNC7(char *file)
{
	FILE *fp;
	char *buf, *pattern;
	size_t len;

	if (FUNC5(file, "-") == 0)
		fp = stdin;
	else if ((fp = FUNC3(file, "r")) == NULL)
		FUNC0(2, "%s", file);
	while ((buf = FUNC2(fp, &len)) != NULL) {
		if (buf[len - 1] == '\n')
			len--;
		if ((pattern = FUNC6(buf, len)) == NULL)
			FUNC0(2, "xstrndup");
		FUNC4(pattern);
	}
	if (FUNC5(file, "-") != 0)
		FUNC1(fp);
}
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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (unsigned char) ; 
 unsigned char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void
FUNC9(const char *name)
{
	unsigned char *p;
	FILE *fp;
	int ch;
	char buf[2048 + 1];

	if ((fp = FUNC4(name, "r")) == NULL)
		FUNC1(1, "%s", name);
	while (FUNC3(buf, sizeof(buf), fp)) {
		if (!(p = FUNC7(buf, '\n'))) {
			FUNC8("line too long");
			while ((ch = FUNC5()) != '\n' && ch != EOF);
			continue;
		}
		*p = '\0';
		for (p = buf; *p && FUNC6(*p); ++p);
		if (!*p || *p == '#')
			continue;
		FUNC0(p);
	}
	(void)FUNC2(fp);
}
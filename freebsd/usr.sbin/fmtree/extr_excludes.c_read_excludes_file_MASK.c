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
struct exclude {char* glob; int pathname; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct exclude*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  excludes ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  link ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 scalar_t__ FUNC8 (char*,char) ; 

void
FUNC9(const char *name)
{
	FILE *fp;
	char *line, *str;
	struct exclude *e;
	size_t len;

	fp = FUNC5(name, "r");
	if (fp == NULL)
		FUNC1(1, "%s", name);

	while ((line = FUNC4(fp, &len)) != NULL) {
		if (line[len - 1] == '\n')
			len--;
		if (len == 0)
			continue;

		str = FUNC6(len + 1);
		e = FUNC6(sizeof *e);
		if (str == NULL || e == NULL)
			FUNC2(1, "memory allocation error");
		e->glob = str;
		FUNC7(str, line, len);
		str[len] = '\0';
		if (FUNC8(str, '/'))
			e->pathname = 1;
		else
			e->pathname = 0;
		FUNC0(&excludes, e, link);
	}
	FUNC3(fp);
}
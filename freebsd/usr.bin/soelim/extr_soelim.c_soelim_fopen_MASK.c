#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  path ;
struct TYPE_2__ {size_t sl_cur; char** sl_str; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/ * FUNC0 (char const*,char*) ; 
 TYPE_1__* includes ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char const*) ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static FILE *
FUNC4(const char *name)
{
	FILE *f;
	char path[PATH_MAX];
	size_t i;

	if (FUNC2(name, "-") == 0)
		return (stdin);

	if ((f = FUNC0(name, "r")) != NULL)
		return (f);

	if (*name == '/') {
		FUNC3("can't open '%s'", name);
		return (NULL);
	}

	for (i = 0; i < includes->sl_cur; i++) {
		FUNC1(path, sizeof(path), "%s/%s", includes->sl_str[i],
		    name);
		if ((f = FUNC0(path, "r")) != NULL)
			return (f);
	}

	FUNC3("can't open '%s'", name);

	return (f);
}
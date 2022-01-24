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
 char* CPP ; 
 char* CPPFLAGS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 char* FUNC3 (char**,char*) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(void)
{
	int idx = 1;
	const char *var;
	char *dupvar, *s, *t;

	if (CPP != NULL)
		FUNC2(0, CPP);
	else if ((var = FUNC1("RPCGEN_CPP")) == NULL)
		FUNC2(0, "/usr/bin/cpp");
	else {
		/* Parse command line in a rudimentary way */
		dupvar = FUNC4(var);
		for (s = dupvar, idx = 0; (t = FUNC3(&s, " \t")) != NULL; ) {
			if (t[0])
				FUNC2(idx++, t);
		}
		FUNC0(dupvar);
	}

	FUNC2(idx, CPPFLAGS);
}
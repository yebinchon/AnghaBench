#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* t; int (* f ) (int,char**) ;scalar_t__ works; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (int,char**) ; 
 int FUNC4 (int,char**) ; 
 TYPE_1__* tab ; 
 int FUNC5 (int,char**) ; 

int FUNC6(int argc, char *argv[])
{
	int i;

	if (argc == 2 && FUNC2(argv[1], "-a") == 0) {
#if 1
		FUNC0(stderr,
			"-a should but doesn't really work"
			" (my notes say \"because things detach\");\n"
			"meanwhile do these individual tests and look"
			" for a non-zero exit code:\n");
		for (i = 0; i < FUNC1(tab); i++)
			if (tab[i].works)
				FUNC0(stderr, "p1003_1b %s\n", tab[i].t);
		return -1;
#else
		{
			int r;
			for (i = 0; i < nitems(tab); i++) {
				if (tab[i].works) {
					if ( (r =
					(*tab[i].f)(argc - 1, argv + 1)) ) {
						fprintf(stderr,
						"%s failed\n", tab[i].t);
						return r;
					}
				}
			}
			return 0;
		}
#endif
	}
	
	if (argc > 1) {
		for (i = 0; i < FUNC1(tab); i++)
			if (FUNC2(tab[i].t, argv[1]) == 0)
				return (*tab[i].f)(argc - 1, argv + 1);
	}

	return FUNC5(argc, argv);
}
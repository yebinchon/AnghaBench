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
 int FUNC0 (int,char**) ; 
 int /*<<< orphan*/  controller_print ; 
 int FUNC1 (char*) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  (*) (int,int*),int*) ; 
 int optind ; 
 int optreset ; 
 int /*<<< orphan*/  FUNC5 (int,int*) ; 
 int status_result ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static int
FUNC7(int argc, char *argv[])
{
    int		ch, verbosity = 1, i, unit;

    optreset = 1;
    optind = 1;
    while ((ch = FUNC2(argc, argv, "qv")) != -1)
	switch(ch) {
	case 'q':
	    verbosity = 0;
	    break;
	case 'v':
	    verbosity = 2;
	    break;
	default:
	    return(FUNC0(argc, argv));
	}
    argc -= optind;
    argv += optind;

    if (argc < 1) {
	FUNC3(controller_print, &verbosity);
	FUNC4(status_print, &verbosity);
    } else {
	for (i = 0; i < argc; i++) {
	    if ((unit = FUNC1(argv[i])) == -1) {
		FUNC6("'%s' is not a valid drive", argv[i]);
	    } else {
		FUNC5(unit, &verbosity);
	    }
	}
    }
    return(status_result);
}
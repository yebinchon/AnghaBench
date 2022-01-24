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
 int FUNC1 (char*) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (int,int /*<<< orphan*/ *),int /*<<< orphan*/ *) ; 
 int optind ; 
 int optreset ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int
FUNC6(int argc, char *argv[]) 
{
    int		all = 0, i, ch, unit;

    optreset = 1;
    optind = 1;
    while ((ch = FUNC2(argc, argv, "a")) != -1)
	switch(ch) {
	case 'a':
	    all = 1;
	    break;
	default:
	    return(FUNC0(argc, argv));
	}
    argc -= optind;
    argv += optind;

    if (all) {
	FUNC3(rescan_ctrlr, NULL);
    } else {
	for (i = 0; i < argc; i++) {
	    if ((unit = FUNC1(argv[i])) == -1) {
		FUNC5("'%s' is not a valid controller", argv[i]);
	    } else {
		FUNC4(unit, NULL);
	    }
	}
    }
    return(0);
}
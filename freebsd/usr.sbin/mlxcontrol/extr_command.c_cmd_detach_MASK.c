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
struct mlxd_foreach_action {int* arg; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int FUNC0 (int,char**) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  detach_drive ; 
 int FUNC2 (char*) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct mlxd_foreach_action*) ; 
 int optind ; 
 int optreset ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static int
FUNC7(int argc, char *argv[]) 
{
    struct mlxd_foreach_action	ma;
    int				all = 0, i, ch, unit;

    optreset = 1;
    optind = 1;
    while ((ch = FUNC3(argc, argv, "a")) != -1)
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
	ma.func = detach_drive;
	ma.arg = &unit;
	for (i = 0; i < argc; i++) {
	    if ((unit = FUNC1(argv[i])) == -1) {
		FUNC6("'%s' is not a valid controller", argv[i]);
	    } else {
		FUNC5(unit, &ma);
	    }
	}
    } else {
	for (i = 0; i < argc; i++) {
	    if ((unit = FUNC2(argv[i])) == -1) {
		FUNC6("'%s' is not a valid drive", argv[i]);
	    } else {
		/* run across all controllers to find this drive */
		FUNC4(detach_drive, &unit);
	    }
	}
    }
    return(0);
}
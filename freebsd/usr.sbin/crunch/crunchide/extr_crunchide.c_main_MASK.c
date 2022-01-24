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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char**,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 char* pname ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int verbose ; 

int
FUNC5(int argc, char **argv)
{
    int ch, errors;

    if(argc > 0) pname = argv[0];

    while ((ch = FUNC2(argc, argv, "k:f:v")) != -1)
	switch(ch) {
	case 'k':
	    FUNC1(optarg);
	    break;
	case 'f':
	    FUNC0(optarg);
	    break;
	case 'v':
	    verbose = 1;
	    break;
	default:
	    FUNC4();
	}

    argc -= optind;
    argv += optind;

    if(argc == 0) FUNC4();

    errors = 0;
    while(argc) {
	if (FUNC3(*argv))
		errors = 1;
	argc--, argv++;
    }

    return errors;
}
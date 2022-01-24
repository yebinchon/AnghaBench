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
 int BTX_MAXCWR ; 
 int Eflag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* bname ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* centry ; 
 int /*<<< orphan*/  cleanup ; 
 int /*<<< orphan*/  format ; 
 int FUNC2 (int,char**,char*) ; 
 void* lentry ; 
 void* lname ; 
 void* oname ; 
 void* FUNC3 (void*) ; 
 void* optarg ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 scalar_t__ optind ; 
 void* FUNC5 (void*,int) ; 
 void* ppage ; 
 int quiet ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int verbose ; 
 void* wpage ; 

int
FUNC7(int argc, char *argv[])
{
    int c;

    while ((c = FUNC2(argc, argv, "qvb:E:e:f:l:o:P:W:")) != -1)
	switch (c) {
	case 'q':
	    quiet = 1;
	    break;
	case 'v':
	    verbose = 1;
	    break;
	case 'b':
	    bname = optarg;
	    break;
	case 'E':
	    centry = FUNC3(optarg);
	    Eflag = 1;
	    break;
	case 'e':
	    lentry = FUNC3(optarg);
	    break;
	case 'f':
	    format = FUNC4(optarg);
	    break;
	case 'l':
	    lname = optarg;
	    break;
	case 'o':
	    oname = optarg;
	    break;
	case 'P':
	    ppage = FUNC5(optarg, 1);
	    break;
	case 'W':
	    wpage = FUNC5(optarg, BTX_MAXCWR);
	    break;
	default:
	    FUNC6();
	}
    argc -= optind;
    argv += optind;
    if (argc != 1)
	FUNC6();
    FUNC0(cleanup);
    FUNC1(*argv);
    return 0;
}
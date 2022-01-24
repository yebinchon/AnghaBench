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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  void* u_int ;

/* Variables and functions */
 int /*<<< orphan*/  EX_USAGE ; 
 void* addr ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 void* fib ; 
 int FUNC1 (int,char**,char*) ; 
 int nostart ; 
 void* optarg ; 
 char* optopt ; 
 int /*<<< orphan*/  port ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 void* reflectfib ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 long long FUNC5 (void*,char**,int) ; 
 int /*<<< orphan*/ * testcase ; 

int
FUNC6(int argc, char *argv[])
{
	long long l;
	char *dummy, *afname;
	int ch, rc;

	afname = NULL;
	while ((ch = FUNC1(argc, argv, "A:dF:f:Np:t:T:")) != -1) {
		switch (ch) {
		case 'A':
			addr = optarg;
			break;
		case 'd':
			debug++;
			break;
		case 'F':
			l = FUNC5(optarg, &dummy, 10);
			if (*dummy != '\0' || l < 0)
				FUNC0(EX_USAGE, "Invalid FIB number");
			fib = (u_int)l;
			break;
		case 'f':
			l = FUNC5(optarg, &dummy, 10);
			if (*dummy != '\0' || l < 0)
				FUNC0(EX_USAGE, "Invalid FIB number");
			reflectfib = (u_int)l;
			break;
		case 'N':
			nostart=1;
			break;
		case 'p':
			l = FUNC5(optarg, &dummy, 10);
			if (*dummy != '\0' || l < 0)
				FUNC0(EX_USAGE, "Invalid port number");
			port = (uint16_t)l;
			break;
		case 't':
			testcase = optarg;
			break;
		case 'T':
			afname = optarg;
			break;
		case '?':
		default:
			FUNC0(EX_USAGE, "Unknown command line option at '%c'",
			    optopt);
			/* NOTREACHED */
		}
	}

	if (testcase == NULL)
		FUNC0(EX_USAGE, "Mandatory option -t <testcase> not given");
	if (afname == NULL)
		FUNC0(EX_USAGE, "Mandatory option -T <afname> not given");

	if (FUNC4(afname, "TCP6") == 0)
		rc = FUNC2();
	else if (FUNC4(afname, "UDP6") == 0)
		rc = FUNC3();
	else
		FUNC0(EX_USAGE, "Mandatory option -T %s not a valid option",
		    afname);

	return (rc);
}
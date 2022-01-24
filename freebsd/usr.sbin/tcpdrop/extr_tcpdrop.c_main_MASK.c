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
typedef  int /*<<< orphan*/  stack ;

/* Variables and functions */
 int TCPS_CLOSED ; 
 int TCPS_LISTEN ; 
 int TCP_FUNCTION_NAME_LEN_MAX ; 
 int TCP_NSTATES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int tcpdrop_list_commands ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/ * tcpstates ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(int argc, char *argv[])
{
	char stack[TCP_FUNCTION_NAME_LEN_MAX];
	char *lport, *fport;
	bool dropall, dropallstack;
	int ch, state;

	dropall = false;
	dropallstack = false;
	stack[0] = '\0';
	state = -1;

	while ((ch = FUNC2(argc, argv, "alS:s:")) != -1) {
		switch (ch) {
		case 'a':
			dropall = true;
			break;
		case 'l':
			tcpdrop_list_commands = true;
			break;
		case 'S':
			dropallstack = true;
			FUNC4(stack, optarg, sizeof(stack));
			break;
		case 's':
			dropallstack = true;
			for (state = 0; state < TCP_NSTATES; state++) {
				if (FUNC3(tcpstates[state], optarg) == 0)
					break;
			}
			break;
		default:
			FUNC7();
		}
	}
	argc -= optind;
	argv += optind;

	if (state == TCP_NSTATES ||
	    state == TCPS_CLOSED ||
	    state == TCPS_LISTEN)
		FUNC7();
	if (dropall && dropallstack)
		FUNC7();
	if (dropall || dropallstack) {
		if (argc != 0)
			FUNC7();
		if (!FUNC5(stack, state))
			FUNC0(1);
		FUNC0(0);
	}

	if ((argc != 2 && argc != 4) || tcpdrop_list_commands)
		FUNC7();

	if (argc == 2) {
		lport = FUNC1(argv[0]);
		fport = FUNC1(argv[1]);
		if (lport == NULL || lport[1] == '\0' || fport == NULL ||
		    fport[1] == '\0')
			FUNC7();
		*lport++ = '\0';
		*fport++ = '\0';
		if (!FUNC6(argv[0], lport, argv[1], fport))
			FUNC0(1);
	} else if (!FUNC6(argv[0], argv[1], argv[2], argv[3]))
		FUNC0(1);

	FUNC0(0);
}
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
 int IFNET_TLS ; 
 int SW_TLS ; 
 int TCP_FUNCTION_NAME_LEN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int tcpswitch_list_commands ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int
FUNC7(int argc, char *argv[])
{
	char stack[TCP_FUNCTION_NAME_LEN_MAX];
	char *lport, *fport;
	bool switchall, switchallstack;
	int ch, mode;

	switchall = false;
	switchallstack = false;
	stack[0] = '\0';
	mode = SW_TLS;

	while ((ch = FUNC2(argc, argv, "ailS:s")) != -1) {
		switch (ch) {
		case 'a':
			switchall = true;
			break;
		case 'i':
			mode = IFNET_TLS;
			break;
		case 'l':
			tcpswitch_list_commands = true;
			break;
		case 'S':
			switchallstack = true;
			FUNC3(stack, optarg, sizeof(stack));
			break;
		case 's':
			mode = SW_TLS;
			break;
		default:
			FUNC6();
		}
	}
	argc -= optind;
	argv += optind;

	if (switchall && switchallstack)
		FUNC6();
	if (switchall || switchallstack) {
		if (argc != 0)
			FUNC6();
		if (!FUNC4(stack, mode))
			FUNC0(1);
		FUNC0(0);
	}

	if ((argc != 2 && argc != 4) || tcpswitch_list_commands)
		FUNC6();

	if (argc == 2) {
		lport = FUNC1(argv[0]);
		fport = FUNC1(argv[1]);
		if (lport == NULL || lport[1] == '\0' || fport == NULL ||
		    fport[1] == '\0')
			FUNC6();
		*lport++ = '\0';
		*fport++ = '\0';
		if (!FUNC5(argv[0], lport, argv[1], fport, mode))
			FUNC0(1);
	} else if (!FUNC5(argv[0], argv[1], argv[2], argv[3], mode))
		FUNC0(1);

	FUNC0(0);
}
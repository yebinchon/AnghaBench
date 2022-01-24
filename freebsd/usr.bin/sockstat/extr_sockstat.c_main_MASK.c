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
 scalar_t__ IPPROTO_SCTP ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_SEQPACKET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int,char**,char*) ; 
 int /*<<< orphan*/  jail_errmsg ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int opt_4 ; 
 int opt_6 ; 
 int opt_L ; 
 int opt_S ; 
 int opt_U ; 
 int opt_c ; 
 int opt_j ; 
 int opt_l ; 
 int opt_q ; 
 int opt_s ; 
 int opt_u ; 
 int /*<<< orphan*/  opt_v ; 
 int opt_w ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__* protos ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

int
FUNC13(int argc, char *argv[])
{
	int protos_defined = -1;
	int o, i;

	opt_j = -1;
	while ((o = FUNC7(argc, argv, "46cj:Llp:P:qSsUuvw")) != -1)
		switch (o) {
		case '4':
			opt_4 = 1;
			break;
		case '6':
			opt_6 = 1;
			break;
		case 'c':
			opt_c = 1;
			break;
		case 'j':
			opt_j = FUNC8(optarg);
			if (opt_j < 0)
				FUNC1(1, "%s", jail_errmsg);
			break;
		case 'L':
			opt_L = 1;
			break;
		case 'l':
			opt_l = 1;
			break;
		case 'p':
			FUNC9(optarg);
			break;
		case 'P':
			protos_defined = FUNC10(optarg);
			break;
		case 'q':
			opt_q = 1;
			break;
		case 'S':
			opt_S = 1;
			break;
		case 's':
			opt_s = 1;
			break;
		case 'U':
			opt_U = 1;
			break;
		case 'u':
			opt_u = 1;
			break;
		case 'v':
			++opt_v;
			break;
		case 'w':
			opt_w = 1;
			break;
		default:
			FUNC12();
		}

	argc -= optind;
	argv += optind;

	if (argc > 0)
		FUNC12();

	if ((!opt_4 && !opt_6) && protos_defined != -1)
		opt_4 = opt_6 = 1;
	if (!opt_4 && !opt_6 && !opt_u)
		opt_4 = opt_6 = opt_u = 1;
	if ((opt_4 || opt_6) && protos_defined == -1)
		protos_defined = FUNC11();
	if (!opt_c && !opt_l)
		opt_c = opt_l = 1;

	if (opt_4 || opt_6) {
		for (i = 0; i < protos_defined; i++)
			if (protos[i] == IPPROTO_SCTP)
				FUNC4();
			else
				FUNC3(protos[i]);
	}

	if (opt_u || (protos_defined == -1 && !opt_4 && !opt_6)) {
		FUNC5(SOCK_STREAM);
		FUNC5(SOCK_DGRAM);
		FUNC5(SOCK_SEQPACKET);
	}
	FUNC6();
	FUNC0();
	FUNC2(0);
}
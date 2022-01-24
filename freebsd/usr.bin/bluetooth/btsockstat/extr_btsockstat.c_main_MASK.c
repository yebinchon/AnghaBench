#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kvm_t ;
struct TYPE_2__ {int /*<<< orphan*/  n_value; } ;

/* Variables and functions */
#define  N_HCI_RAW 132 
#define  N_L2CAP 131 
#define  N_L2CAP_RAW 130 
 size_t N_L2CAP_RAW_RT ; 
 size_t N_L2CAP_RT ; 
#define  N_RFCOMM 129 
#define  N_RFCOMM_S 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* nl ; 
 int numeric_bdaddr ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 

int
FUNC14(int argc, char *argv[])
{
	int	 opt, proto = -1, route = 0;
	kvm_t	*kvmd = NULL;
	char	*memf = NULL;

	while ((opt = FUNC2(argc, argv, "hnM:p:r")) != -1) {
		switch (opt) {
		case 'n':
			numeric_bdaddr = 1;
			break;

		case 'M':
			memf = optarg;
			break;

		case 'p':
			if (FUNC12(optarg, "hci_raw") == 0)
				proto = N_HCI_RAW;
			else if (FUNC12(optarg, "l2cap_raw") == 0)
				proto = N_L2CAP_RAW;
			else if (FUNC12(optarg, "l2cap") == 0)
				proto = N_L2CAP;
			else if (FUNC12(optarg, "rfcomm") == 0)
				proto = N_RFCOMM;
			else if (FUNC12(optarg, "rfcomm_s") == 0)
				proto = N_RFCOMM_S; 
			else
				FUNC13();
				/* NOT REACHED */
			break;

		case 'r':
			route = 1;
			break;

		case 'h':
		default:
			FUNC13();
			/* NOT REACHED */
		}
	}

	if ((proto == N_HCI_RAW || proto == N_RFCOMM || proto == N_RFCOMM_S) && route)
		FUNC13();
		/* NOT REACHED */

	/*
	 * Discard setgid privileges if not the running kernel so that
	 * bad guys can't print interesting stuff from kernel memory.
	 */
	if (memf != NULL)
		if (FUNC11(FUNC1()) != 0)
			FUNC0(1, "setgid");

	kvmd = FUNC4(memf);
	if (kvmd == NULL)
		return (1);

	switch (proto) {
	case N_HCI_RAW:
		FUNC3(kvmd, nl[N_HCI_RAW].n_value);
		break;

	case N_L2CAP_RAW:
		if (route)
			FUNC8(kvmd, nl[N_L2CAP_RAW_RT].n_value);
		else
			FUNC7(kvmd, nl[N_L2CAP_RAW].n_value);
		break;

	case N_L2CAP:
		if (route) 
			FUNC8(kvmd, nl[N_L2CAP_RT].n_value);
		else
			FUNC6(kvmd, nl[N_L2CAP].n_value);
		break;

	case N_RFCOMM:
		FUNC9(kvmd, nl[N_RFCOMM].n_value);
		break;

	case N_RFCOMM_S:
		FUNC10(kvmd, nl[N_RFCOMM_S].n_value);
		break;

	default:
		if (route) {
			FUNC8(kvmd, nl[N_L2CAP_RAW_RT].n_value);
			FUNC8(kvmd, nl[N_L2CAP_RT].n_value);
		} else {
			FUNC3(kvmd, nl[N_HCI_RAW].n_value);
			FUNC7(kvmd, nl[N_L2CAP_RAW].n_value);
			FUNC6(kvmd, nl[N_L2CAP].n_value);
			FUNC10(kvmd, nl[N_RFCOMM_S].n_value);
			FUNC9(kvmd, nl[N_RFCOMM].n_value);
		}
		break;
	}

	return (FUNC5(kvmd));
}
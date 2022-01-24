#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  rp ;
struct TYPE_3__ {int status; } ;
typedef  TYPE_1__ ng_hci_write_con_accept_timo_rp ;
struct TYPE_4__ {int /*<<< orphan*/  timeout; } ;
typedef  TYPE_2__ ng_hci_write_con_accept_timo_cp ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 scalar_t__ ERROR ; 
 int FAILED ; 
 int /*<<< orphan*/  NG_HCI_OCF_WRITE_CON_ACCEPT_TIMO ; 
 int /*<<< orphan*/  NG_HCI_OGF_HC_BASEBAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OK ; 
 int USAGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,char const*,int,char*,int*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,char*,int*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC6(int s, int argc, char **argv)
{
	ng_hci_write_con_accept_timo_cp	cp;
	ng_hci_write_con_accept_timo_rp	rp;
	int				n;

	/* parse command parameters */
	switch (argc) {
	case 1:
		if (FUNC5(argv[0], "%d", &n) != 1 || n < 1 || n > 0xb540)
			return (USAGE);

		cp.timeout = (uint16_t) n;
		cp.timeout = FUNC4(cp.timeout);
		break;

	default:
		return (USAGE);
	}

	/* send command */
	n = sizeof(rp);
	if (FUNC2(s, FUNC0(NG_HCI_OGF_HC_BASEBAND, 
			NG_HCI_OCF_WRITE_CON_ACCEPT_TIMO),
			(char const *) &cp, sizeof(cp), 
			(char *) &rp, &n) == ERROR)
		return (ERROR);

	if (rp.status != 0x00) {
		FUNC1(stdout, "Status: %s [%#02x]\n",
			FUNC3(rp.status), rp.status);
		return (FAILED);
	}

	return (OK);
}
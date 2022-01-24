#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hostent {int /*<<< orphan*/  h_addr; } ;
struct TYPE_5__ {scalar_t__ event; } ;
typedef  TYPE_1__ ng_hci_event_pkt_t ;
struct TYPE_6__ {int pkt_type; int page_scan_rep_mode; int page_scan_mode; int clock_offset; int accept_role_switch; int /*<<< orphan*/  bdaddr; } ;
typedef  TYPE_2__ ng_hci_create_con_cp ;
struct TYPE_7__ {int status; int encryption_mode; int /*<<< orphan*/  con_handle; int /*<<< orphan*/  bdaddr; } ;
typedef  TYPE_3__ ng_hci_con_compl_ep ;
typedef  int /*<<< orphan*/  cp ;
typedef  int /*<<< orphan*/  b ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ ERROR ; 
 int FAILED ; 
 scalar_t__ NG_HCI_EVENT_CON_COMPL ; 
 int NG_HCI_MANDATORY_PAGE_SCAN_MODE ; 
 int /*<<< orphan*/  NG_HCI_OCF_CREATE_CON ; 
 int /*<<< orphan*/  NG_HCI_OGF_LINK_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NG_HCI_PKT_DH1 ; 
 int NG_HCI_PKT_DH3 ; 
 int NG_HCI_PKT_DM1 ; 
 int NG_HCI_PKT_DM3 ; 
 int NG_HCI_PKT_DM5 ; 
 int NG_HCI_SCAN_REP_MODE0 ; 
 int OK ; 
 int USAGE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 struct hostent* FUNC2 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,char*,int*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,char const*,int,char*,int*) ; 
 char* FUNC8 (int) ; 
 void* FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (char*,char*,int*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC14(int s, int argc, char **argv)
{
	int			 n0;
	char			 b[512];
	ng_hci_create_con_cp	 cp;
	ng_hci_event_pkt_t	*e = (ng_hci_event_pkt_t *) b; 

	/* Set defaults */
	FUNC12(&cp, 0, sizeof(cp));
	cp.pkt_type = FUNC9(	NG_HCI_PKT_DM1 | NG_HCI_PKT_DH1 |
				NG_HCI_PKT_DM3 | NG_HCI_PKT_DH3 |
				NG_HCI_PKT_DM5);
	cp.page_scan_rep_mode = NG_HCI_SCAN_REP_MODE0;
	cp.page_scan_mode = NG_HCI_MANDATORY_PAGE_SCAN_MODE;
	cp.clock_offset = 0;
	cp.accept_role_switch = 1;

	/* parse command parameters */
	switch (argc) {
	case 6:
		/* accept role switch */
		if (FUNC13(argv[5], "%d", &n0) != 1)
			return (USAGE);

		cp.accept_role_switch = n0 ? 1 : 0;

	case 5:
		/* clock offset */
		if (FUNC13(argv[4], "%d", &n0) != 1)
			return (USAGE);

		cp.clock_offset = (n0 & 0xffff);
		cp.clock_offset = FUNC9(cp.clock_offset);

	case 4:
		/* page scan mode */
		if (FUNC13(argv[3], "%d", &n0) != 1 || n0 < 0 || n0 > 3)
			return (USAGE);

		cp.page_scan_mode = (n0 & 0xff);

	case 3:
		/* page scan rep mode */
		if (FUNC13(argv[2], "%d", &n0) != 1 || n0 < 0 || n0 > 2)
			return (USAGE);

		cp.page_scan_rep_mode = (n0 & 0xff);

	case 2:
		/* packet type */
		if (FUNC13(argv[1], "%x", &n0) != 1)
			return (USAGE);

		n0 &= (	NG_HCI_PKT_DM1 | NG_HCI_PKT_DH1 |
			NG_HCI_PKT_DM3 | NG_HCI_PKT_DH3 |
			NG_HCI_PKT_DM5);
		if (n0 == 0)
			return (USAGE);

		cp.pkt_type = (n0 & 0xffff);
		cp.pkt_type = FUNC9(cp.pkt_type);

	case 1:
		/* BD_ADDR */
		if (!FUNC1(argv[0], &cp.bdaddr)) {
			struct hostent	*he = NULL;

			if ((he = FUNC2(argv[0])) == NULL)
				return (USAGE);

			FUNC11(&cp.bdaddr, he->h_addr, sizeof(cp.bdaddr));
		}
		break;

	default:
		return (USAGE);
	}

	/* send request and expect status response */
	n0 = sizeof(b);
	if (FUNC7(s, FUNC0(NG_HCI_OGF_LINK_CONTROL,
			NG_HCI_OCF_CREATE_CON),
			(char const *) &cp, sizeof(cp), b, &n0) == ERROR)
		return (ERROR);

	if (*b != 0x00)
		return (FAILED);

	/* wait for event */
again:
	n0 = sizeof(b);
	if (FUNC6(s, b, &n0) == ERROR)
		return (ERROR);
	if (n0 < sizeof(*e)) {
		errno = EIO;
		return (ERROR);
	}

	if (e->event == NG_HCI_EVENT_CON_COMPL) {
		ng_hci_con_compl_ep	*ep = (ng_hci_con_compl_ep *)(e + 1);

		if (ep->status != 0x00) {
			FUNC3(stdout, "Status: %s [%#02x]\n", 
				FUNC8(ep->status), ep->status);
			return (FAILED);
		}

		FUNC3(stdout, "BD_ADDR: %s\n", FUNC4(&ep->bdaddr));
		FUNC3(stdout, "Connection handle: %d\n",
			FUNC10(ep->con_handle));
		FUNC3(stdout, "Encryption mode: %s [%d]\n",
			FUNC5(ep->encryption_mode, 0),
			ep->encryption_mode);
	} else
		goto again;

	return (OK);
}
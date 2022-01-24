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
typedef  void* uint16_t ;
struct TYPE_5__ {scalar_t__ event; } ;
typedef  TYPE_1__ ng_hci_event_pkt_t ;
struct TYPE_6__ {int status; int encryption_mode; int /*<<< orphan*/  con_handle; int /*<<< orphan*/  bdaddr; } ;
typedef  TYPE_2__ ng_hci_con_compl_ep ;
struct TYPE_7__ {int pkt_type; int con_handle; } ;
typedef  TYPE_3__ ng_hci_add_sco_con_cp ;
typedef  int /*<<< orphan*/  cp ;
typedef  int /*<<< orphan*/  b ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ ERROR ; 
 int FAILED ; 
 scalar_t__ NG_HCI_EVENT_CON_COMPL ; 
 int /*<<< orphan*/  NG_HCI_OCF_ADD_SCO_CON ; 
 int /*<<< orphan*/  NG_HCI_OGF_LINK_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NG_HCI_PKT_HV1 ; 
 int NG_HCI_PKT_HV2 ; 
 int NG_HCI_PKT_HV3 ; 
 int OK ; 
 int USAGE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,char*,int*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,char const*,int,char*,int*) ; 
 char* FUNC6 (int) ; 
 void* FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (char*,char*,int*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC11(int s, int argc, char **argv)
{
	int			 n;
	char			 b[512];
	ng_hci_add_sco_con_cp	 cp;
	ng_hci_event_pkt_t	*e = (ng_hci_event_pkt_t *) b; 

	/* Set defaults */
	FUNC9(&cp, 0, sizeof(cp));
	cp.pkt_type = FUNC7(NG_HCI_PKT_HV1 | NG_HCI_PKT_HV2 | NG_HCI_PKT_HV3);

	/* parse command parameters */
	switch (argc) {
	case 2:
		/* packet type */
		if (FUNC10(argv[1], "%x", &n) != 1)
			return (USAGE);

		n &= (NG_HCI_PKT_HV1 | NG_HCI_PKT_HV2 | NG_HCI_PKT_HV3);
		if (n == 0)
			return (USAGE);

		cp.pkt_type = (uint16_t) (n & 0x0fff);
		cp.pkt_type = FUNC7(cp.pkt_type);

	case 1:
		/* acl connection handle */
		if (FUNC10(argv[0], "%d", &n) != 1 || n <= 0 || n > 0x0eff)
			return (USAGE);

		cp.con_handle = (uint16_t) (n & 0x0fff);
		cp.con_handle = FUNC7(cp.con_handle);
		break;

	default:
		return (USAGE);
	}

	/* send request and expect status response */
	n = sizeof(b);
	if (FUNC5(s, FUNC0(NG_HCI_OGF_LINK_CONTROL,
			NG_HCI_OCF_ADD_SCO_CON),
			(char const *) &cp, sizeof(cp), b, &n) == ERROR)
		return (ERROR);

	if (*b != 0x00)
		return (FAILED);

	/* wait for event */
again:
	n = sizeof(b);
	if (FUNC4(s, b, &n) == ERROR)
		return (ERROR);
	if (n < sizeof(*e)) {
		errno = EIO;
		return (ERROR);
	}

	if (e->event == NG_HCI_EVENT_CON_COMPL) {
		ng_hci_con_compl_ep	*ep = (ng_hci_con_compl_ep *)(e + 1);

		if (ep->status != 0x00) {
			FUNC1(stdout, "Status: %s [%#02x]\n", 
				FUNC6(ep->status), ep->status);
			return (FAILED);
		}

		FUNC1(stdout, "BD_ADDR: %s\n", FUNC2(&ep->bdaddr));
		FUNC1(stdout, "Connection handle: %d\n",
			FUNC8(ep->con_handle));
		FUNC1(stdout, "Encryption mode: %s [%d]\n",
			FUNC3(ep->encryption_mode, 0),
			ep->encryption_mode);
	} else
		goto again;

	return (OK);
}
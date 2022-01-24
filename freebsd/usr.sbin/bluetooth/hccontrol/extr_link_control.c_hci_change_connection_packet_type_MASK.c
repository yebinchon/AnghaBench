#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint16_t ;
struct TYPE_4__ {scalar_t__ event; } ;
typedef  TYPE_1__ ng_hci_event_pkt_t ;
struct TYPE_5__ {int status; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  con_handle; } ;
typedef  TYPE_2__ ng_hci_con_pkt_type_changed_ep ;
struct TYPE_6__ {void* pkt_type; void* con_handle; } ;
typedef  TYPE_3__ ng_hci_change_con_pkt_type_cp ;
typedef  int /*<<< orphan*/  cp ;
typedef  int /*<<< orphan*/  b ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ ERROR ; 
 int FAILED ; 
 scalar_t__ NG_HCI_EVENT_CON_PKT_TYPE_CHANGED ; 
 int /*<<< orphan*/  NG_HCI_OCF_CHANGE_CON_PKT_TYPE ; 
 int /*<<< orphan*/  NG_HCI_OGF_LINK_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OK ; 
 int USAGE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (int,char*,int*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,char const*,int,char*,int*) ; 
 char* FUNC4 (int) ; 
 void* FUNC5 (void*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,char*,int*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC8(int s, int argc, char **argv)
{
	int				 n;
	char				 b[512];
	ng_hci_change_con_pkt_type_cp	 cp;
	ng_hci_event_pkt_t		*e = (ng_hci_event_pkt_t *) b; 

	switch (argc) {
	case 2:
		/* connection handle */
		if (FUNC7(argv[0], "%d", &n) != 1 || n <= 0 || n > 0x0eff)
			return (USAGE);

		cp.con_handle = (uint16_t) (n & 0x0fff);
		cp.con_handle = FUNC5(cp.con_handle);

		/* packet type */
		if (FUNC7(argv[1], "%x", &n) != 1)
			return (USAGE);

		cp.pkt_type = (uint16_t) (n & 0xffff);
		cp.pkt_type = FUNC5(cp.pkt_type);
		break;

	default:
		return (USAGE);
	}

	/* send request and expect status response */
	n = sizeof(b);
	if (FUNC3(s, FUNC0(NG_HCI_OGF_LINK_CONTROL,
			NG_HCI_OCF_CHANGE_CON_PKT_TYPE),
			(char const *) &cp, sizeof(cp), b, &n) == ERROR)
		return (ERROR);

	if (*b != 0x00)
		return (FAILED);

	/* wait for event */
again:
	n = sizeof(b);
	if (FUNC2(s, b, &n) == ERROR)
		return (ERROR);
	if (n < sizeof(*e)) {
		errno = EIO;
		return (ERROR);
	}

	if (e->event == NG_HCI_EVENT_CON_PKT_TYPE_CHANGED) {
		ng_hci_con_pkt_type_changed_ep	*ep = 
				(ng_hci_con_pkt_type_changed_ep *)(e + 1);

		if (ep->status != 0x00) {
			FUNC1(stdout, "Status: %s [%#02x]\n", 
				FUNC4(ep->status), ep->status);
			return (FAILED);
		}

		FUNC1(stdout, "Connection handle: %d\n",
			FUNC6(ep->con_handle));
		FUNC1(stdout, "Packet type: %#04x\n",
			FUNC6(ep->pkt_type));
	} else
		goto again;

	return (OK);
}
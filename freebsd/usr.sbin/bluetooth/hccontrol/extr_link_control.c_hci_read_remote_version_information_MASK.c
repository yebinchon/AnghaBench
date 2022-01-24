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
struct TYPE_4__ {int con_handle; } ;
typedef  TYPE_1__ ng_hci_read_remote_ver_info_cp ;
struct TYPE_5__ {int status; int manufacturer; int con_handle; int lmp_version; int lmp_subversion; } ;
typedef  TYPE_2__ ng_hci_read_remote_ver_info_compl_ep ;
struct TYPE_6__ {scalar_t__ event; } ;
typedef  TYPE_3__ ng_hci_event_pkt_t ;
typedef  int /*<<< orphan*/  cp ;
typedef  int /*<<< orphan*/  b ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ ERROR ; 
 int FAILED ; 
 scalar_t__ NG_HCI_EVENT_READ_REMOTE_VER_INFO_COMPL ; 
 int /*<<< orphan*/  NG_HCI_OCF_READ_REMOTE_VER_INFO ; 
 int /*<<< orphan*/  NG_HCI_OGF_LINK_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OK ; 
 int USAGE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,char*,int*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,char const*,int,char*,int*) ; 
 char* FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (char*,char*,int*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC10(int s, int argc, char **argv)
{
	int				 n;
	char				 b[512];
	ng_hci_read_remote_ver_info_cp	 cp;
	ng_hci_event_pkt_t		*e = (ng_hci_event_pkt_t *) b; 

	/* parse command parameters */
	switch (argc) {
	case 1:
		/* connecton handle */
		if (FUNC9(argv[0], "%d", &n) != 1 || n < 0 || n > 0x0eff)
			return (USAGE);

		cp.con_handle = (n & 0x0fff);
		cp.con_handle = FUNC7(cp.con_handle);
		break;

	default:
		return (USAGE);
	}

	/* send request and expect status response */
	n = sizeof(b);
	if (FUNC5(s, FUNC0(NG_HCI_OGF_LINK_CONTROL,
			NG_HCI_OCF_READ_REMOTE_VER_INFO), 
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

	if (e->event == NG_HCI_EVENT_READ_REMOTE_VER_INFO_COMPL) {
		ng_hci_read_remote_ver_info_compl_ep	*ep = 
				(ng_hci_read_remote_ver_info_compl_ep *)(e + 1);

		if (ep->status != 0x00) {
			FUNC1(stdout, "Status: %s [%#02x]\n", 
				FUNC6(ep->status), ep->status);
			return (FAILED);
		}

		ep->manufacturer = FUNC8(ep->manufacturer);

		FUNC1(stdout, "Connection handle: %d\n",
			FUNC8(ep->con_handle));
		FUNC1(stdout, "LMP version: %s [%#02x]\n",
			FUNC2(ep->lmp_version), ep->lmp_version);
		FUNC1(stdout, "LMP sub-version: %#04x\n",
			FUNC8(ep->lmp_subversion));
		FUNC1(stdout, "Manufacturer: %s [%#04x]\n",
			FUNC3(ep->manufacturer),
			ep->manufacturer);
	} else
		goto again;

	return (OK);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hostent {int /*<<< orphan*/  h_addr; } ;
struct TYPE_4__ {int status; int num_keys_deleted; } ;
typedef  TYPE_1__ ng_hci_delete_stored_link_key_rp ;
struct TYPE_5__ {int delete_all; int /*<<< orphan*/  bdaddr; } ;
typedef  TYPE_2__ ng_hci_delete_stored_link_key_cp ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 scalar_t__ ERROR ; 
 int FAILED ; 
 int /*<<< orphan*/  NG_HCI_OCF_DELETE_STORED_LINK_KEY ; 
 int /*<<< orphan*/  NG_HCI_OGF_HC_BASEBAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OK ; 
 int USAGE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 struct hostent* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,char const*,int,char*,int*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC8(int s, int argc, char **argv)
{
	ng_hci_delete_stored_link_key_cp	cp;
	ng_hci_delete_stored_link_key_rp	rp;
	int32_t					n;

	FUNC7(&cp, 0, sizeof(cp));

	switch (argc) {
	case 1:
		/* parse BD_ADDR */
		if (!FUNC1(argv[0], &cp.bdaddr)) {
			struct hostent	*he = NULL;

			if ((he = FUNC2(argv[0])) == NULL)
				return (USAGE);

			FUNC6(&cp.bdaddr, he->h_addr, sizeof(cp.bdaddr));
		}
		break;

	default:
		cp.delete_all = 1;
		break;
	}

	/* send command */
	n = sizeof(cp);
	if (FUNC4(s, FUNC0(NG_HCI_OGF_HC_BASEBAND, 
			NG_HCI_OCF_DELETE_STORED_LINK_KEY),
			(char const *) &cp, sizeof(cp),
			(char *) &rp, &n) == ERROR)
		return (ERROR);

	if (rp.status != 0x00) {
		FUNC3(stdout, "Status: %s [%#02x]\n", 
			FUNC5(rp.status), rp.status);
		return (FAILED);
	}

	FUNC3(stdout, "Number of keys deleted: %d\n", rp.num_keys_deleted);

	return (OK);
}
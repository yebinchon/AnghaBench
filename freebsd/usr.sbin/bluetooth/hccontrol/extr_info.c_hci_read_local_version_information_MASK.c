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
typedef  int /*<<< orphan*/  rp ;
struct TYPE_2__ {int status; int manufacturer; int hci_version; int hci_revision; int lmp_version; int lmp_subversion; } ;
typedef  TYPE_1__ ng_hci_read_local_ver_rp ;

/* Variables and functions */
 scalar_t__ ERROR ; 
 int FAILED ; 
 int /*<<< orphan*/  NG_HCI_OCF_READ_LOCAL_VER ; 
 int /*<<< orphan*/  NG_HCI_OGF_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,char*,int*) ; 
 char* FUNC5 (int) ; 
 char* FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC8(int s, int argc, char **argv)
{
	ng_hci_read_local_ver_rp	rp;
	int				n;

	n = sizeof(rp);
	if (FUNC4(s, FUNC0(NG_HCI_OGF_INFO,
			NG_HCI_OCF_READ_LOCAL_VER), (char *) &rp, &n) == ERROR)
		return (ERROR);

	if (rp.status != 0x00) {
		FUNC1(stdout, "Status: %s [%#02x]\n", 
			FUNC5(rp.status), rp.status);
		return (FAILED);
	}

	rp.manufacturer = FUNC7(rp.manufacturer);

	FUNC1(stdout, "HCI version: %s [%#02x]\n",
		FUNC6(rp.hci_version), rp.hci_version);
	FUNC1(stdout, "HCI revision: %#04x\n",
		FUNC7(rp.hci_revision));
	FUNC1(stdout, "LMP version: %s [%#02x]\n",
		FUNC2(rp.lmp_version), rp.lmp_version);
	FUNC1(stdout, "LMP sub-version: %#04x\n", 
		FUNC7(rp.lmp_subversion));
	FUNC1(stdout, "Manufacturer: %s [%#04x]\n", 
		FUNC3(rp.manufacturer), rp.manufacturer);

	return (OK);
}
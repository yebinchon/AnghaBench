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
struct TYPE_2__ {int status; int /*<<< orphan*/  bdaddr; } ;
typedef  TYPE_1__ ng_hci_read_bdaddr_rp ;

/* Variables and functions */
 scalar_t__ ERROR ; 
 int FAILED ; 
 int /*<<< orphan*/  NG_HCI_OCF_READ_BDADDR ; 
 int /*<<< orphan*/  NG_HCI_OGF_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OK ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,char*,int*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC5(int s, int argc, char **argv)
{
	ng_hci_read_bdaddr_rp	rp;
	int			n;

	n = sizeof(rp);
	if (FUNC3(s, FUNC0(NG_HCI_OGF_INFO,
			NG_HCI_OCF_READ_BDADDR), (char *) &rp, &n) == ERROR)
		return (ERROR);

	if (rp.status != 0x00) {
		FUNC2(stdout, "Status: %s [%#02x]\n", 
			FUNC4(rp.status), rp.status);
		return (FAILED);
	}

	FUNC2(stdout, "BD_ADDR: %s\n", FUNC1(&rp.bdaddr, NULL));

	return (OK);
}
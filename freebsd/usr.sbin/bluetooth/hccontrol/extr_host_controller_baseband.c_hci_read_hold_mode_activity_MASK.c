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
struct TYPE_2__ {int status; int hold_mode_activity; } ;
typedef  TYPE_1__ ng_hci_read_hold_mode_activity_rp ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 scalar_t__ ERROR ; 
 int FAILED ; 
 int /*<<< orphan*/  NG_HCI_OCF_READ_HOLD_MODE_ACTIVITY ; 
 int /*<<< orphan*/  NG_HCI_OGF_HC_BASEBAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,char*,int*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC5(int s, int argc, char **argv)
{
	ng_hci_read_hold_mode_activity_rp	rp;
	int					n;
	char					buffer[1024];

	n = sizeof(rp);
	if (FUNC3(s, FUNC0(NG_HCI_OGF_HC_BASEBAND,
			NG_HCI_OCF_READ_HOLD_MODE_ACTIVITY),
			(char *) &rp, &n) == ERROR)
		return (ERROR);

	if (rp.status != 0x00) {
		FUNC1(stdout, "Status: %s [%#02x]\n", 
			FUNC4(rp.status), rp.status);
		return (FAILED);
	}

	FUNC1(stdout, "Hold Mode Activities: %#02x\n", rp.hold_mode_activity);
	if (rp.hold_mode_activity == 0)
		FUNC1(stdout, "Maintain current Power State");
	else
		FUNC1(stdout, "%s", FUNC2(rp.hold_mode_activity,
				buffer, sizeof(buffer)));

	FUNC1(stdout, "\n");

	return (OK);
}
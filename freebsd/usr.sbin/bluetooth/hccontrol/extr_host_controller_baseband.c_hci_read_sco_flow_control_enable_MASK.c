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
struct TYPE_2__ {int status; int flow_control; } ;
typedef  TYPE_1__ ng_hci_read_sco_flow_control_rp ;

/* Variables and functions */
 scalar_t__ ERROR ; 
 int FAILED ; 
 int /*<<< orphan*/  NG_HCI_OCF_READ_SCO_FLOW_CONTROL ; 
 int /*<<< orphan*/  NG_HCI_OGF_HC_BASEBAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,char*,int*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC4(int s, int argc, char **argv)
{
	ng_hci_read_sco_flow_control_rp	rp;
	int				n;

	n = sizeof(rp);
	if (FUNC2(s, FUNC0(NG_HCI_OGF_HC_BASEBAND,
			NG_HCI_OCF_READ_SCO_FLOW_CONTROL),
			(char *) &rp, &n) == ERROR)
		return (ERROR);

	if (rp.status != 0x00) {
		FUNC1(stdout, "Status: %s [%#02x]\n", 
			FUNC3(rp.status), rp.status);
		return (FAILED);
	}

	FUNC1(stdout, "SCO flow control %s [%d]\n",
		rp.flow_control? "enabled" : "disabled", rp.flow_control);

	return (OK);
}
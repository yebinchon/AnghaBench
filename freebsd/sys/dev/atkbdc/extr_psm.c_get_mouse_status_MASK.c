#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEBUG ; 
 int PSMC_SEND_DEV_DATA ; 
 int PSMC_SEND_DEV_STATUS ; 
 int PSM_ACK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(KBDC kbdc, int *status, int flag, int len)
{
	int cmd;
	int res;
	int i;

	switch (flag) {
	case 0:
	default:
		cmd = PSMC_SEND_DEV_STATUS;
		break;
	case 1:
		cmd = PSMC_SEND_DEV_DATA;
		break;
	}
	FUNC1(kbdc, 5);
	res = FUNC3(kbdc, cmd);
	FUNC0(2, (LOG_DEBUG, "psm: SEND_AUX_DEV_%s return code:%04x\n",
	    (flag == 1) ? "DATA" : "STATUS", res));
	if (res != PSM_ACK)
		return (0);

	for (i = 0; i < len; ++i) {
		status[i] = FUNC2(kbdc);
		if (status[i] < 0)
			break;
	}
	if (len >= 3) {
		for (; i < 3; ++i)
			status[i] = 0;
		FUNC0(1, (LOG_DEBUG, "psm: %s %02x %02x %02x\n",
		    (flag == 1) ? "data" : "status", status[0], status[1], status[2]));
	}

	return (i);
}
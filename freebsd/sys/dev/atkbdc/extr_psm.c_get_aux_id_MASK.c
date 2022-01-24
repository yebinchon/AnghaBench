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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  PSMC_SEND_DEV_ID ; 
 int PSM_ACK ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(KBDC kbdc)
{
	int res;
	int id;

	FUNC2(kbdc, 5);
	res = FUNC4(kbdc, PSMC_SEND_DEV_ID);
	FUNC1(2, (LOG_DEBUG, "psm: SEND_DEV_ID return code:%04x\n", res));
	if (res != PSM_ACK)
		return (-1);

	/* 10ms delay */
	FUNC0(10000);

	id = FUNC3(kbdc);
	FUNC1(2, (LOG_DEBUG, "psm: device ID: %04x\n", id));

	return (id);
}
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
 int PSMC_SET_SCALING11 ; 
 int PSMC_SET_SCALING21 ; 
 int PSM_ACK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(KBDC kbdc, int scale)
{
	int res;

	switch (scale) {
	case 1:
	default:
		scale = PSMC_SET_SCALING11;
		break;
	case 2:
		scale = PSMC_SET_SCALING21;
		break;
	}
	res = FUNC1(kbdc, scale);
	FUNC0(2, (LOG_DEBUG, "psm: SET_SCALING%s return code:%04x\n",
	    (scale == PSMC_SET_SCALING21) ? "21" : "11", res));

	return (res == PSM_ACK);
}
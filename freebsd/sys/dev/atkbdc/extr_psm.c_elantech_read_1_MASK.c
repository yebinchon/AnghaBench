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
 int ELANTECH_CUSTOM_CMD ; 
 int ELANTECH_REG_RDWR ; 
 int ELANTECH_REG_READ ; 
 scalar_t__ PSM_ACK ; 
 int FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(KBDC kbdc, int hwversion, int reg, int *val)
{
	int res, readcmd, retidx;
	int resp[3];

	readcmd = hwversion == 2 ? ELANTECH_REG_READ : ELANTECH_REG_RDWR;
	retidx = hwversion == 4 ? 1 : 0;

	res = FUNC1(kbdc, ELANTECH_CUSTOM_CMD) != PSM_ACK;
	res |= FUNC1(kbdc, readcmd) != PSM_ACK;
	res |= FUNC1(kbdc, ELANTECH_CUSTOM_CMD) != PSM_ACK;
	res |= FUNC1(kbdc, reg) != PSM_ACK;
	res |= FUNC0(kbdc, resp, 0, 3) != 3;

	if (res == 0)
		*val = resp[retidx];

	return (res);
}
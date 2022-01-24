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
 scalar_t__ PSM_ACK ; 
 int FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(KBDC kbdc, int hwversion, int cmd, int *resp)
{
	int res;

	if (hwversion == 2) {
		res = FUNC3(kbdc, 1) == 0;
		res |= FUNC1(kbdc, cmd) == 0;
	} else {
		res = FUNC2(kbdc, ELANTECH_CUSTOM_CMD) != PSM_ACK;
		res |= FUNC2(kbdc, cmd) != PSM_ACK;
	}
	res |= FUNC0(kbdc, resp, 0, 3) != 3;

	return (res);
}
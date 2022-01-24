#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int hwversion; int fwversion; } ;
typedef  TYPE_1__ elantechhw_t ;
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(KBDC kbdc, elantechhw_t *elanhw)
{
	int i, val, res, hwversion, reg10;

	/* set absolute mode */
	hwversion = elanhw->hwversion;
	reg10 = -1;
	switch (hwversion) {
	case 2:
		reg10 = elanhw->fwversion == 0x020030 ? 0x54 : 0xc4;
		res = FUNC2(kbdc, hwversion, 0x10, reg10);
		if (res)
			break;
		res = FUNC2(kbdc, hwversion, 0x11, 0x8A);
		break;
	case 3:
		reg10 = 0x0b;
		res = FUNC2(kbdc, hwversion, 0x10, reg10);
		break;
	case 4:
		res = FUNC2(kbdc, hwversion, 0x07, 0x01);
		break;
	default:
		res = 1;
	}

	/* Read back reg 0x10 to ensure hardware is ready. */
	if (res == 0 && reg10 >= 0) {
		for (i = 0; i < 5; i++) {
			if (FUNC1(kbdc, hwversion, 0x10, &val) == 0)
				break;
			FUNC0(2000);
		}
		if (i == 5)
			res = 1;
	}

	if (res)
		FUNC3("couldn't set absolute mode\n");

	return (res);
}
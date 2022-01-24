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
typedef  unsigned int uint32_t ;
typedef  int /*<<< orphan*/  ispsoftc_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIU2400_FLASH_ADDR ; 
 int /*<<< orphan*/  BIU2400_FLASH_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(ispsoftc_t *isp, uint32_t addr, uint32_t *rp)
{
	int loops = 0;
	uint32_t base = 0x7ffe0000;
	uint32_t tmp = 0;

	if (FUNC5(isp)) {
		base = 0x7fe7c000;	/* XXX: Observation, may be wrong. */
	} else if (FUNC4(isp)) {
		base = 0x7ff00000 | 0x48000;
	}
	FUNC3(isp, BIU2400_FLASH_ADDR, base | addr);
	for (loops = 0; loops < 5000; loops++) {
		FUNC0(10);
		tmp = FUNC1(isp, BIU2400_FLASH_ADDR);
		if ((tmp & (1U << 31)) != 0) {
			break;
		}
	}
	if (tmp & (1U << 31)) {
		*rp = FUNC1(isp, BIU2400_FLASH_DATA);
		FUNC2(isp, rp);
	} else {
		*rp = 0xffffffff;
	}
}
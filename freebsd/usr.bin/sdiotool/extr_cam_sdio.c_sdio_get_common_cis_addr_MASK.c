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
typedef  int uint32_t ;
struct cam_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ SD_IO_CCCR_CISPTR ; 
 int SD_IO_CIS_SIZE ; 
 int SD_IO_CIS_START ; 
 int FUNC0 (struct cam_device*,int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

uint32_t
FUNC2(struct cam_device *dev) {
	uint32_t addr;
	int ret;

	addr =  FUNC0(dev, 0, SD_IO_CCCR_CISPTR, &ret);
	addr |= FUNC0(dev, 0, SD_IO_CCCR_CISPTR + 1, &ret) << 8;
	addr |= FUNC0(dev, 0, SD_IO_CCCR_CISPTR + 2, &ret) << 16;

	if (addr < SD_IO_CIS_START || addr > SD_IO_CIS_START + SD_IO_CIS_SIZE) {
		FUNC1("Bad CIS address: %04X\n", addr);
		addr = 0;
	}

	return addr;
}
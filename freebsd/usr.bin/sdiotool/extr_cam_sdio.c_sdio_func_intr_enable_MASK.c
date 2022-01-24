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
typedef  int /*<<< orphan*/  uint8_t ;
struct cam_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SD_IO_CCCR_INT_ENABLE ; 
 int FUNC0 (struct cam_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC1(struct cam_device *dev, uint8_t func_number, int enable) {
	return FUNC0(dev, SD_IO_CCCR_INT_ENABLE, func_number, enable);
}
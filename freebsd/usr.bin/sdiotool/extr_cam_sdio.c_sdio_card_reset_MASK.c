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
 int /*<<< orphan*/  CCCR_CTL_RES ; 
 int /*<<< orphan*/  SD_IO_CCCR_CTL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct cam_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct cam_device *dev) {
	int ret;
	uint8_t ctl_val;
	ret = FUNC1(dev, 0, SD_IO_CCCR_CTL, 0, NULL, &ctl_val);
	if (ret < 0)
		FUNC0(1, "Error getting CCCR_CTL value");
	ctl_val |= CCCR_CTL_RES;
	ret = FUNC1(dev, 0, SD_IO_CCCR_CTL, 1, &ctl_val, &ctl_val);
	if (ret < 0)
		FUNC0(1, "Error setting CCCR_CTL value");
}
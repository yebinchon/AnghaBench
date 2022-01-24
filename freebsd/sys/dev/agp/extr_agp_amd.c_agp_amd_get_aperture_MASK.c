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
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_AMD751_APCTRL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u_int32_t
FUNC1(device_t dev)
{
	int vas;

	/*
	 * The aperture size is equal to 32M<<vas.
	 */
	vas = (FUNC0(dev, AGP_AMD751_APCTRL, 1) & 0x06) >> 1;
	return (32*1024*1024) << vas;
}
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
 int /*<<< orphan*/  AGP_SIS_WINCTRL ; 
 int EINVAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev, u_int32_t aperture)
{
	int gws;

	/*
	 * Check for a power of two and make sure its within the
	 * programmable range.
	 */
	if (aperture & (aperture - 1)
	    || aperture < 4*1024*1024
	    || aperture > 256*1024*1024)
		return EINVAL;

	gws = FUNC0(aperture / 4*1024*1024) - 1;
	
	FUNC2(dev, AGP_SIS_WINCTRL,
			 ((FUNC1(dev, AGP_SIS_WINCTRL, 1) & ~0x70)
			  | gws << 4), 1);

	return 0;
}
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
 int /*<<< orphan*/  AGP_NVIDIA_0_APSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u_int32_t
FUNC2(device_t dev)
{
	switch (FUNC1(dev, AGP_NVIDIA_0_APSIZE, 1) & 0x0f) {
	case 0: return (512 * 1024 * 1024);
	case 8: return (256 * 1024 * 1024);
	case 12: return (128 * 1024 * 1024);
	case 14: return (64 * 1024 * 1024);
	case 15: return (32 * 1024 * 1024);
	default:
		FUNC0(dev, "Invalid aperture setting 0x%x\n",
		    FUNC1(dev, AGP_NVIDIA_0_APSIZE, 1));
		return 0;
	}
}
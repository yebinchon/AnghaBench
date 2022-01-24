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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_I830_GCC1 ; 
 int AGP_I830_GCC1_DEV2 ; 
 int AGP_I830_GCC1_DEV2_DISABLED ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC1(device_t bridge_dev)
{
	int gcc1;

	gcc1 = FUNC0(bridge_dev, AGP_I830_GCC1, 1);
	if ((gcc1 & AGP_I830_GCC1_DEV2) == AGP_I830_GCC1_DEV2_DISABLED)
		return (ENXIO);
	return (0);
}
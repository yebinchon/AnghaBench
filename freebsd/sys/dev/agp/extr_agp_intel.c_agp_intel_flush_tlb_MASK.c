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
 int /*<<< orphan*/  AGP_INTEL_AGPCTRL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC2(device_t dev)
{
	u_int32_t val;

	val = FUNC0(dev, AGP_INTEL_AGPCTRL, 4);
	FUNC1(dev, AGP_INTEL_AGPCTRL, val & ~(1 << 7), 4);
	FUNC1(dev, AGP_INTEL_AGPCTRL, val, 4);
}
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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ PCI_DEVICE_XILINX_HDSPE ; 
#define  PCI_REVISION_AIO 129 
#define  PCI_REVISION_RAYDAT 128 
 scalar_t__ PCI_VENDOR_XILINX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	uint32_t rev;

	if (FUNC3(dev) == PCI_VENDOR_XILINX &&
	    FUNC1(dev) == PCI_DEVICE_XILINX_HDSPE) {
		rev = FUNC2(dev);
		switch (rev) {
		case PCI_REVISION_AIO:
			FUNC0(dev, "RME HDSPe AIO");
			return (0);
		case PCI_REVISION_RAYDAT:
			FUNC0(dev, "RME HDSPe RayDAT");
			return (0);
		}
	}

	return (ENXIO);
}
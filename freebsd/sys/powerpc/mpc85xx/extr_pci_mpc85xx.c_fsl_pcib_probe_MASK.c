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
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{

	if (FUNC1(dev) == NULL ||
	    FUNC3(FUNC1(dev), "pci") != 0)
		return (ENXIO);

	if (!(FUNC2(dev, "fsl,mpc8540-pci") ||
	    FUNC2(dev, "fsl,mpc8540-pcie") ||
	    FUNC2(dev, "fsl,mpc8548-pcie") ||
	    FUNC2(dev, "fsl,p5020-pcie") ||
	    FUNC2(dev, "fsl,qoriq-pcie-v2.2") ||
	    FUNC2(dev, "fsl,qoriq-pcie")))
		return (ENXIO);

	FUNC0(dev, "Freescale Integrated PCI/PCI-E Controller");
	return (BUS_PROBE_DEFAULT);
}
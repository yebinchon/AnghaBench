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
struct ata_pci_controller {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_LOW_PRIORITY ; 
 int ENXIO ; 
 struct ata_pci_controller* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct ata_pci_controller *ctrl;

	if (!FUNC3(dev))
		return (ENXIO);

	if (!FUNC2(dev, "fsl,imx51-ata") &&
	    !FUNC2(dev, "fsl,imx53-ata"))
		return (ENXIO);

	ctrl = FUNC0(dev);

	FUNC1(dev, "Freescale Integrated PATA Controller");
	return (BUS_PROBE_LOW_PRIORITY);
}
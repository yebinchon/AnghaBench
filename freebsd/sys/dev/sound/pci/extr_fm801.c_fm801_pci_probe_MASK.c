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
 int PCI_DEVICE_FORTEMEDIA1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2( device_t dev )
{
	int id;

	if ((id = FUNC1(dev)) == PCI_DEVICE_FORTEMEDIA1 ) {
		FUNC0(dev, "Forte Media FM801 Audio Controller");
		return BUS_PROBE_DEFAULT;
	}
/*
	if ((id = pci_get_devid(dev)) == PCI_DEVICE_FORTEMEDIA2 ) {
		device_set_desc(dev, "Forte Media FM801 Joystick (Not Supported)");
		return ENXIO;
	}
*/
	return ENXIO;
}
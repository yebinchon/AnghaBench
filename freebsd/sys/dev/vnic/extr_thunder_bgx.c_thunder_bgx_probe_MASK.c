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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ PCI_DEVICE_ID_THUNDER_BGX ; 
 scalar_t__ PCI_VENDOR_ID_CAVIUM ; 
 int /*<<< orphan*/  THUNDER_BGX_DEVSTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	uint16_t vendor_id;
	uint16_t device_id;

	vendor_id = FUNC2(dev);
	device_id = FUNC1(dev);

	if (vendor_id == PCI_VENDOR_ID_CAVIUM &&
	    device_id == PCI_DEVICE_ID_THUNDER_BGX) {
		FUNC0(dev, THUNDER_BGX_DEVSTR);
		return (BUS_PROBE_DEFAULT);
	}

	return (ENXIO);
}
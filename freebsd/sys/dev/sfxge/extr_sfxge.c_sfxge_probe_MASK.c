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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int efx_family_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int EFX_FAMILY_HUNTINGTON ; 
 int EFX_FAMILY_MEDFORD ; 
 int EFX_FAMILY_MEDFORD2 ; 
 int EFX_FAMILY_SIENA ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	uint16_t pci_vendor_id;
	uint16_t pci_device_id;
	efx_family_t family;
	unsigned int mem_bar;
	int rc;

	pci_vendor_id = FUNC4(dev);
	pci_device_id = FUNC3(dev);

	FUNC0(dev, "PCI ID %04x:%04x", pci_vendor_id, pci_device_id);
	rc = FUNC2(pci_vendor_id, pci_device_id, &family, &mem_bar);
	if (rc != 0) {
		FUNC0(dev, "efx_family fail %d", rc);
		return (ENXIO);
	}

	if (family == EFX_FAMILY_SIENA) {
		FUNC1(dev, "Solarflare SFC9000 family");
		return (0);
	}

	if (family == EFX_FAMILY_HUNTINGTON) {
		FUNC1(dev, "Solarflare SFC9100 family");
		return (0);
	}

	if (family == EFX_FAMILY_MEDFORD) {
		FUNC1(dev, "Solarflare SFC9200 family");
		return (0);
	}

	if (family == EFX_FAMILY_MEDFORD2) {
		FUNC1(dev, "Solarflare SFC9250 family");
		return (0);
	}

	FUNC0(dev, "impossible controller family %d", family);
	return (ENXIO);
}
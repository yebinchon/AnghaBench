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
#define  ALI_PCI_ID 131 
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
#define  SPA_PCI_ID 130 
#define  TDX_PCI_ID 129 
#define  TNX_PCI_ID 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	switch (FUNC1(dev)) {
		case SPA_PCI_ID:
			FUNC0(dev, "SiS 7018");
			return BUS_PROBE_DEFAULT;
		case ALI_PCI_ID:
			FUNC0(dev, "Acer Labs M5451");
			return BUS_PROBE_DEFAULT;
		case TDX_PCI_ID:
			FUNC0(dev, "Trident 4DWave DX");
			return BUS_PROBE_DEFAULT;
		case TNX_PCI_ID:
			FUNC0(dev, "Trident 4DWave NX");
			return BUS_PROBE_DEFAULT;
	}

	return ENXIO;
}
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
 int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
#define  PCI_PRODUCT_BROOKTREE_BT848 131 
#define  PCI_PRODUCT_BROOKTREE_BT849 130 
#define  PCI_PRODUCT_BROOKTREE_BT878 129 
#define  PCI_PRODUCT_BROOKTREE_BT879 128 
 scalar_t__ PCI_VENDOR_BROOKTREE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5( device_t dev )
{
	unsigned int type = FUNC3(dev);
        unsigned int rev  = FUNC4(dev);

	if (FUNC1(type) == PCI_VENDOR_BROOKTREE)
	{
		switch (FUNC0(type)) {
		case PCI_PRODUCT_BROOKTREE_BT848:
			if (rev == 0x12)
				FUNC2(dev, "BrookTree 848A");
			else
				FUNC2(dev, "BrookTree 848");
			return BUS_PROBE_DEFAULT;
		case PCI_PRODUCT_BROOKTREE_BT849:
			FUNC2(dev, "BrookTree 849A");
			return BUS_PROBE_DEFAULT;
		case PCI_PRODUCT_BROOKTREE_BT878:
			FUNC2(dev, "BrookTree 878");
			return BUS_PROBE_DEFAULT;
		case PCI_PRODUCT_BROOKTREE_BT879:
			FUNC2(dev, "BrookTree 879");
			return BUS_PROBE_DEFAULT;
		}
	}

        return ENXIO;
}
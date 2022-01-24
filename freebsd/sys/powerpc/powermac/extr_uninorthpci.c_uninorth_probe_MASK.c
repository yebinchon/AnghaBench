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
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	const char	*type, *compatible;

	type = FUNC2(dev);
	compatible = FUNC1(dev);

	if (type == NULL || compatible == NULL)
		return (ENXIO);

	if (FUNC3(type, "pci") != 0)
		return (ENXIO);

	if (FUNC3(compatible, "uni-north") == 0) {
		FUNC0(dev, "Apple UniNorth Host-PCI bridge");
		return (0);
	} else if (FUNC3(compatible, "u3-agp") == 0) {
		FUNC0(dev, "Apple U3 Host-AGP bridge");
		return (0);
	} else if (FUNC3(compatible, "u4-pcie") == 0) {
		FUNC0(dev, "IBM CPC945 PCI Express Root");
		return (0);
	}
	
	return (ENXIO);
}
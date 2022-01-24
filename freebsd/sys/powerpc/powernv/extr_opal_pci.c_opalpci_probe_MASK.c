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
 int BUS_PROBE_GENERIC ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	const char	*type;

	if (FUNC4() != 0)
		return (ENXIO);

	type = FUNC3(dev);

	if (type == NULL || (FUNC5(type, "pci") != 0 &&
	    FUNC5(type, "pciex") != 0))
		return (ENXIO);

	if (!FUNC0(FUNC2(dev), "ibm,opal-phbid"))
		return (ENXIO); 

	FUNC1(dev, "OPAL Host-PCI bridge");
	return (BUS_PROBE_GENERIC);
}
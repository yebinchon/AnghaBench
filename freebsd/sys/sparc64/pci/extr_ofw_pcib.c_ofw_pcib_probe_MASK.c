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
typedef  int /*<<< orphan*/  desc ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OFW_TYPE_PCIE ; 
 scalar_t__ PCIC_BRIDGE ; 
 scalar_t__ PCIS_BRIDGE_PCI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	char desc[sizeof("OFW PCIe-PCIe bridge")];
	const char *dtype, *pbdtype;

#define	ISDTYPE(dtype, type)						\
	(((dtype) != NULL) && strcmp((dtype), (type)) == 0)

	if ((FUNC5(dev) == PCIC_BRIDGE) &&
	    (FUNC6(dev) == PCIS_BRIDGE_PCI) &&
	    FUNC3(dev) != 0) {
		dtype = FUNC4(dev);
		pbdtype = FUNC4(FUNC1(
		    FUNC1(dev)));
		FUNC7(desc, sizeof(desc), "OFW PCI%s-PCI%s bridge",
		    ISDTYPE(pbdtype, OFW_TYPE_PCIE) ? "e" : "",
		    ISDTYPE(dtype, OFW_TYPE_PCIE) ? "e" : "");
		FUNC2(dev, desc);
		return (BUS_PROBE_DEFAULT);
	}

#undef ISDTYPE

	return (ENXIO);
}
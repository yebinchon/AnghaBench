#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct acpi_pci_link_softc {int pl_num_links; TYPE_1__* pl_links; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ l_routed; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct acpi_pci_link_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_link ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct acpi_pci_link_softc *sc;
	ACPI_STATUS status;
	int i, routed;

	/*
	 * If all of our links are routed, then restore the link via _SRS,
	 * otherwise, disable the link via _DIS.
	 */
	FUNC1(pci_link);
	sc = FUNC6(dev);
	routed = 0;
	for (i = 0; i < sc->pl_num_links; i++)
		if (sc->pl_links[i].l_routed)
			routed++;
	if (routed == sc->pl_num_links)
		status = FUNC5(dev);
	else {
		FUNC3(FUNC4(dev), "_DIS", NULL, NULL);
		status = AE_OK;
	}
	FUNC2(pci_link);
	if (FUNC0(status))
		return (ENXIO);
	else
		return (0);
}
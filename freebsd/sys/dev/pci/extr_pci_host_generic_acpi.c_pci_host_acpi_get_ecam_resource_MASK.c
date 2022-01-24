#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource_list {int dummy; } ;
struct TYPE_5__ {scalar_t__ ecam; int bus_start; int bus_end; } ;
struct generic_pcie_acpi_softc {TYPE_1__ base; } ;
struct acpi_device {struct resource_list ad_rl; } ;
typedef  int rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_7__ {scalar_t__ PciSegment; int StartBusNumber; int EndBusNumber; int Address; } ;
struct TYPE_6__ {int Length; } ;
typedef  int /*<<< orphan*/  ACPI_TABLE_MCFG ;
typedef  TYPE_2__ ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_3__ ACPI_MCFG_ALLOCATION ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_SIG_MCFG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,TYPE_2__**) ; 
 int ENXIO ; 
 int FALSE ; 
 int PCIE_BUS_SHIFT ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 struct acpi_device* FUNC4 (int /*<<< orphan*/ ) ; 
 struct generic_pcie_acpi_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct generic_pcie_acpi_softc *sc;
	struct acpi_device *ad;
	struct resource_list *rl;
	ACPI_TABLE_HEADER *hdr;
	ACPI_MCFG_ALLOCATION *mcfg_entry, *mcfg_end;
	ACPI_HANDLE handle;
	ACPI_STATUS status;
	rman_res_t base, start, end;
	int found, val;

	sc = FUNC5(dev);
	handle = FUNC3(dev);

	/* Try MCFG first */
	status = FUNC1(ACPI_SIG_MCFG, 1, &hdr);
	if (FUNC0(status)) {
		found = FALSE;
		mcfg_end = (ACPI_MCFG_ALLOCATION *)((char *)hdr + hdr->Length);
		mcfg_entry = (ACPI_MCFG_ALLOCATION *)((ACPI_TABLE_MCFG *)hdr + 1);
		while (mcfg_entry < mcfg_end && !found) {
			if (mcfg_entry->PciSegment == sc->base.ecam &&
			    mcfg_entry->StartBusNumber <= sc->base.bus_start &&
			    mcfg_entry->EndBusNumber >= sc->base.bus_start)
				found = TRUE;
			else
				mcfg_entry++;
		}
		if (found) {
			sc->base.bus_end = mcfg_entry->EndBusNumber;
			base = mcfg_entry->Address;
		} else {
			FUNC6(dev, "MCFG exists, but does not have bus %d-%d\n",
			    sc->base.bus_start, sc->base.bus_end);
			return (ENXIO);
		}
	} else {
		status = FUNC2(handle, "_CBA", &val);
		if (FUNC0(status)) {
			base = val;
			sc->base.bus_end = 255;
		} else
			return (ENXIO);
	}

	/* add as MEM rid 0 */
	ad = FUNC4(dev);
	rl = &ad->ad_rl;
	start = base + (sc->base.bus_start << PCIE_BUS_SHIFT);
	end = base + ((sc->base.bus_end + 1) << PCIE_BUS_SHIFT) - 1;
	FUNC7(rl, SYS_RES_MEMORY, 0, start, end, end - start + 1);
	if (bootverbose)
		FUNC6(dev, "ECAM for bus %d-%d at mem %jx-%jx\n",
		    sc->base.bus_start, sc->base.bus_end, start, end);
	return (0);
}
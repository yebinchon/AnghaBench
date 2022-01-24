#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
struct TYPE_3__ {int pcie_link_speed; int pcie_link_width; int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__* POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  OCE_FLAGS_MSIX_CAPABLE ; 
 int /*<<< orphan*/  OCE_FLAGS_MSI_CAPABLE ; 
 int /*<<< orphan*/  OCE_FLAGS_PCIE ; 
 int /*<<< orphan*/  OCE_FLAGS_PCIX ; 
 int /*<<< orphan*/  PCIY_EXPRESS ; 
 int /*<<< orphan*/  PCIY_MSI ; 
 int /*<<< orphan*/  PCIY_MSIX ; 
 int /*<<< orphan*/  PCIY_PCIX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static
void FUNC3(POCE_SOFTC sc)
{
	uint32_t val;

#if __FreeBSD_version >= 1000000
	#define pci_find_extcap pci_find_cap
#endif

	if (FUNC0(sc->dev, PCIY_PCIX, &val) == 0) {
		if (val != 0) 
			sc->flags |= OCE_FLAGS_PCIX;
	}

	if (FUNC0(sc->dev, PCIY_EXPRESS, &val) == 0) {
		if (val != 0) {
			uint16_t link_status =
			    FUNC2(sc->dev, val + 0x12, 2);

			sc->flags |= OCE_FLAGS_PCIE;
			sc->pcie_link_speed = link_status & 0xf;
			sc->pcie_link_width = (link_status >> 4) & 0x3f;
		}
	}

	if (FUNC0(sc->dev, PCIY_MSI, &val) == 0) {
		if (val != 0)
			sc->flags |= OCE_FLAGS_MSI_CAPABLE;
	}

	if (FUNC0(sc->dev, PCIY_MSIX, &val) == 0) {
		if (val != 0) {
			val = FUNC1(sc->dev);
			sc->flags |= OCE_FLAGS_MSIX_CAPABLE;
		}
	}
}
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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct pci_dw_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct pci_dw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dw_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  DW_IATU_CTRL1 ; 
 int /*<<< orphan*/  DW_IATU_CTRL2 ; 
 int /*<<< orphan*/  DW_IATU_LIMIT_ADDR ; 
 int /*<<< orphan*/  DW_IATU_LWR_BASE_ADDR ; 
 int /*<<< orphan*/  DW_IATU_LWR_TARGET_ADDR ; 
 int /*<<< orphan*/  DW_IATU_UPPER_BASE_ADDR ; 
 int /*<<< orphan*/  DW_IATU_UPPER_TARGET_ADDR ; 
 int /*<<< orphan*/  DW_IATU_VIEWPORT ; 
 int ETIMEDOUT ; 
 int FUNC3 (int) ; 
 int IATU_CTRL2_REGION_EN ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC6(struct pci_dw_softc *sc, int idx, int type,
    uint64_t pa, uint64_t pci_addr, uint32_t size)
{
	uint32_t reg;
	int i;

	if (size == 0)
		return (0);

	FUNC1(sc, DW_IATU_VIEWPORT, FUNC4(idx));
	FUNC1(sc, DW_IATU_LWR_BASE_ADDR, pa & 0xFFFFFFFF);
	FUNC1(sc, DW_IATU_UPPER_BASE_ADDR, (pa >> 32) & 0xFFFFFFFF);
	FUNC1(sc, DW_IATU_LIMIT_ADDR, (pa + size - 1) & 0xFFFFFFFF);
	FUNC1(sc, DW_IATU_LWR_TARGET_ADDR, pci_addr & 0xFFFFFFFF);
	FUNC1(sc, DW_IATU_UPPER_TARGET_ADDR, (pci_addr  >> 32) & 0xFFFFFFFF);
	FUNC1(sc, DW_IATU_CTRL1, FUNC3(type));
	FUNC1(sc, DW_IATU_CTRL2, IATU_CTRL2_REGION_EN);

	/* Wait until setup becomes valid */
	for (i = 10; i > 0; i--) {
		reg = FUNC0(sc, DW_IATU_CTRL2);
		if (reg & IATU_CTRL2_REGION_EN)
			return (0);
		FUNC2(5);
	}
	FUNC5(sc->dev,
	    "Cannot map outbound region(%d) in iATU\n", idx);
	return (ETIMEDOUT);
}
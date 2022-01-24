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
struct mtk_pci_softc {int pcie_link_status; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct mtk_pci_softc* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC1(device_t dev, int slot)
{
	struct mtk_pci_softc *sc = FUNC0(dev);

	return !!(sc->pcie_link_status & (1<<slot));
}
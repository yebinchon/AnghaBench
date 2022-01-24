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
typedef  int /*<<< orphan*/  uint32_t ;
struct pci_xhci_softc {int dboff; int /*<<< orphan*/ * portregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct pci_xhci_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_xhci_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_xhci_softc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct pci_xhci_softc *sc, uint64_t offset,
    uint64_t value)
{

	offset = (offset - sc->dboff) / sizeof(uint32_t);

	FUNC0(("pci_xhci: doorbell write offset 0x%lx: 0x%lx\r\n",
	        offset, value));

	if (FUNC3(sc)) {
		FUNC0(("pci_xhci: controller halted\r\n"));
		return;
	}

	if (offset == 0)
		FUNC4(sc);
	else if (sc->portregs != NULL)
		FUNC5(sc, offset,
		   FUNC2(value), FUNC1(value));
}
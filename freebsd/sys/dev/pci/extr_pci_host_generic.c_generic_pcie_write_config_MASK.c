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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ u_int ;
struct generic_pcie_core_softc {scalar_t__ bus_start; scalar_t__ bus_end; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ PCIE_REGMAX ; 
 scalar_t__ PCI_FUNCMAX ; 
 scalar_t__ PCI_SLOTMAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct generic_pcie_core_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(device_t dev, u_int bus, u_int slot,
    u_int func, u_int reg, uint32_t val, int bytes)
{
	struct generic_pcie_core_softc *sc;
	bus_space_handle_t h;
	bus_space_tag_t t;
	uint64_t offset;

	sc = FUNC4(dev);
	if ((bus < sc->bus_start) || (bus > sc->bus_end))
		return;
	if ((slot > PCI_SLOTMAX) || (func > PCI_FUNCMAX) ||
	    (reg > PCIE_REGMAX))
		return;

	offset = FUNC0(bus - sc->bus_start, slot, func, reg);

	t = sc->bst;
	h = sc->bsh;

	switch (bytes) {
	case 1:
		FUNC1(t, h, offset, val);
		break;
	case 2:
		FUNC2(t, h, offset, FUNC5(val));
		break;
	case 4:
		FUNC3(t, h, offset, FUNC6(val));
		break;
	default:
		return;
	}
}
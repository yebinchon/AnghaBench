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
struct octopci_softc {int /*<<< orphan*/  sc_domain; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCTEON_FEATURE_PCIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct octopci_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static uint32_t
FUNC11(device_t dev, u_int bus, u_int slot, u_int func, u_int reg,
    int bytes)
{
	struct octopci_softc *sc;
	uint64_t addr;
	uint32_t data;

	sc = FUNC6(dev);

	if (FUNC9(OCTEON_FEATURE_PCIE)) {
		if (bus == 0 && slot == 0 && func == 0)
			return ((uint32_t)-1);

		switch (bytes) {
		case 4:
			return (FUNC1(sc->sc_domain, bus, slot, func, reg));
		case 2:
			return (FUNC0(sc->sc_domain, bus, slot, func, reg));
		case 1:
			return (FUNC2(sc->sc_domain, bus, slot, func, reg));
		default:
			return ((uint32_t)-1);
		}
	}

	addr = FUNC10(bus, slot, func, reg);

	switch (bytes) {
	case 4:
		data = FUNC8(FUNC4(addr));
		return (data);
	case 2:
		data = FUNC7(FUNC3(addr));
		return (data);
	case 1:
		data = FUNC5(addr);
		return (data);
	default:
		return ((uint32_t)-1);
	}
}
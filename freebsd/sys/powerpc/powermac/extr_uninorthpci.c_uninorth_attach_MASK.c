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
typedef  void* vm_offset_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct uninorth_softc {int sc_ver; int sc_skipslot; int /*<<< orphan*/  sc_cfg_mtx; void* sc_data; void* sc_addr; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int cell_t ;
typedef  int /*<<< orphan*/  acells ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 struct uninorth_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char const*,int,char*,int*) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct		uninorth_softc *sc;
	const char	*compatible;
	const char	*name;
	phandle_t	node;
	uint32_t	reg[3];
	uint64_t	regbase;
	cell_t		acells;
	int		unit;

	node = FUNC7(dev);
	sc = FUNC3(dev);
	name = FUNC2(dev);
	unit = FUNC4(dev);

	if (FUNC0(node, "reg", reg, sizeof(reg)) < 8)
		return (ENXIO);

	sc->sc_ver = 0;
	compatible = FUNC6(dev);
	if (FUNC11(compatible, "u3-agp") == 0)
		sc->sc_ver = 3;
	if (FUNC11(compatible, "u4-pcie") == 0)
		sc->sc_ver = 4;

	acells = 1;
	FUNC0(FUNC1(node), "#address-cells", &acells, sizeof(acells));

	regbase = reg[0];
	if (acells == 2) {
		regbase <<= 32;
		regbase |= reg[1];
	}

	sc->sc_addr = (vm_offset_t)FUNC9(regbase + 0x800000, PAGE_SIZE);
	sc->sc_data = (vm_offset_t)FUNC9(regbase + 0xc00000, PAGE_SIZE);

	if (FUNC10(name, unit, "skipslot", &sc->sc_skipslot) != 0)
		sc->sc_skipslot = -1;

	FUNC5(&sc->sc_cfg_mtx, "uninorth pcicfg", NULL, MTX_SPIN);

	return (FUNC8(dev));
}
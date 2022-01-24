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
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct powermac_nvram_softc {TYPE_1__* sc_cdev; scalar_t__ sc_data; scalar_t__ sc_bank; scalar_t__ sc_bank1; scalar_t__ sc_bank0; int /*<<< orphan*/  sc_type; int /*<<< orphan*/  sc_node; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct powermac_nvram_softc* si_drv1; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FLASH_TYPE_AMD ; 
 int /*<<< orphan*/  FLASH_TYPE_SM ; 
 int NVRAM_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 
 struct powermac_nvram_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  powermac_nvram_cdevsw ; 
 int FUNC9 (void*) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct powermac_nvram_softc *sc;
	const char	*compatible;
	phandle_t node;
	u_int32_t reg[3];
	int gen0, gen1, i;

	node = FUNC6(dev);
	sc = FUNC2(dev);

	if ((i = FUNC0(node, "reg", reg, sizeof(reg))) < 8)
		return ENXIO;

	sc->sc_dev = dev;
	sc->sc_node = node;

	compatible = FUNC5(dev);
	if (FUNC10(compatible, "amd-0137") == 0)
		sc->sc_type = FLASH_TYPE_AMD;
	else
		sc->sc_type = FLASH_TYPE_SM;

	/*
	 * Find which byte of reg corresponds to the 32-bit physical address.
	 * We should probably read #address-cells from /chosen instead.
	 */
	i = (i/4) - 2;

	sc->sc_bank0 = (vm_offset_t)FUNC7(reg[i], NVRAM_SIZE * 2);
	sc->sc_bank1 = sc->sc_bank0 + NVRAM_SIZE;

	gen0 = FUNC9((void *)sc->sc_bank0);
	gen1 = FUNC9((void *)sc->sc_bank1);

	if (gen0 == -1 && gen1 == -1) {
		if ((void *)sc->sc_bank0 != NULL)
			FUNC8(sc->sc_bank0, NVRAM_SIZE * 2);
		FUNC3(dev, "both banks appear to be corrupt\n");
		return ENXIO;
	}
	FUNC3(dev, "bank0 generation %d, bank1 generation %d\n",
	    gen0, gen1);

	sc->sc_bank = (gen0 > gen1) ? sc->sc_bank0 : sc->sc_bank1;
	FUNC1((void *)sc->sc_bank, (void *)sc->sc_data, NVRAM_SIZE);

	sc->sc_cdev = FUNC4(&powermac_nvram_cdevsw, 0, 0, 0, 0600,
	    "powermac_nvram");
	sc->sc_cdev->si_drv1 = sc;

	return 0;
}
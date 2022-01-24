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
typedef  int u_int ;
struct TYPE_2__ {scalar_t__ nvram_src; int /*<<< orphan*/  flash_type; int /*<<< orphan*/  num_uarts; scalar_t__ pwr_ctrl; int /*<<< orphan*/  aob; scalar_t__ pmu; } ;
struct chipc_softc {int /*<<< orphan*/  dev; TYPE_1__ caps; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 scalar_t__ BHND_ATTACH_NATIVE ; 
 scalar_t__ BHND_NVRAM_SRC_OTP ; 
 scalar_t__ BHND_NVRAM_SRC_SPROM ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  CHIPC_SFLASH_BASE ; 
 int /*<<< orphan*/  CHIPC_SFLASH_SIZE ; 
 int /*<<< orphan*/  CHIPC_SPROM_OTP ; 
 int /*<<< orphan*/  CHIPC_SPROM_OTP_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CHIPC_UART_MAX ; 
 int /*<<< orphan*/  CHIPC_UART_SIZE ; 
 int ENXIO ; 
 int /*<<< orphan*/  RM_MAX_END ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct chipc_softc*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct chipc_softc*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct chipc_softc *sc)
{
	device_t	 child;
	const char	*flash_bus;
	int		 error;

	/* SPROM/OTP */
	if (sc->caps.nvram_src == BHND_NVRAM_SRC_SPROM ||
	    sc->caps.nvram_src == BHND_NVRAM_SRC_OTP)
	{
		child = FUNC0(sc->dev, 0, "bhnd_nvram", -1);
		if (child == NULL) {
			FUNC6(sc->dev, "failed to add nvram device\n");
			return (ENXIO);
		}

		/* Both OTP and external SPROM are mapped at CHIPC_SPROM_OTP */
		error = FUNC5(sc, child, 0, CHIPC_SPROM_OTP,
		    CHIPC_SPROM_OTP_SIZE, 0, 0);
		if (error) {
			FUNC6(sc->dev, "failed to set OTP memory "
			    "resource: %d\n", error);
			return (error);
		}
	}

	/*
	 * PMU/PWR_CTRL
	 * 
	 * On AOB ("Always on Bus") devices, the PMU core (if it exists) is
	 * attached directly to the bhnd(4) bus -- not chipc.
	 */
	if (sc->caps.pmu && !sc->caps.aob) {
		child = FUNC0(sc->dev, 0, "bhnd_pmu", -1);
		if (child == NULL) {
			FUNC6(sc->dev, "failed to add pmu\n");
			return (ENXIO);
		}
	} else if (sc->caps.pwr_ctrl) {
		child = FUNC0(sc->dev, 0, "bhnd_pwrctl", -1);
		if (child == NULL) {
			FUNC6(sc->dev, "failed to add pwrctl\n");
			return (ENXIO);
		}
	}

	/* GPIO */
	child = FUNC0(sc->dev, 0, "gpio", -1);
	if (child == NULL) {
		FUNC6(sc->dev, "failed to add gpio\n");
		return (ENXIO);
	}

	error = FUNC5(sc, child, 0, 0, RM_MAX_END, 0, 0);
	if (error) {
		FUNC6(sc->dev, "failed to set gpio memory resource: "
		    "%d\n", error);
		return (error);
	}

	/* All remaining devices are SoC-only */
	if (FUNC2(sc->dev) != BHND_ATTACH_NATIVE)
		return (0);

	/* UARTs */
	for (u_int i = 0; i < FUNC7(sc->caps.num_uarts, CHIPC_UART_MAX); i++) {
		int irq_rid, mem_rid;

		irq_rid = 0;
		mem_rid = 0;

		child = FUNC0(sc->dev, 0, "uart", -1);
		if (child == NULL) {
			FUNC6(sc->dev, "failed to add uart%u\n", i);
			return (ENXIO);
		}

		/* Shared IRQ */
		error = FUNC4(sc, child, irq_rid, 0);
		if (error) {
			FUNC6(sc->dev, "failed to set uart%u irq %u\n",
			    i, 0);
			return (error);
		}

		/* UART registers are mapped sequentially */
		error = FUNC5(sc, child, mem_rid,
		    FUNC1(i), CHIPC_UART_SIZE, 0, 0);
		if (error) {
			FUNC6(sc->dev, "failed to set uart%u memory "
			    "resource: %d\n", i, error);
			return (error);
		}
	}

	/* Flash */
	flash_bus = FUNC3(sc->caps.flash_type);
	if (flash_bus != NULL) {
		int rid;

		child = FUNC0(sc->dev, 0, flash_bus, -1);
		if (child == NULL) {
			FUNC6(sc->dev, "failed to add %s device\n",
			    flash_bus);
			return (ENXIO);
		}

		/* flash memory mapping */
		rid = 0;
		error = FUNC5(sc, child, rid, 0, RM_MAX_END, 1,
		    1);
		if (error) {
			FUNC6(sc->dev, "failed to set flash memory "
			    "resource %d: %d\n", rid, error);
			return (error);
		}

		/* flashctrl registers */
		rid++;
		error = FUNC5(sc, child, rid,
		    CHIPC_SFLASH_BASE, CHIPC_SFLASH_SIZE, 0, 0);
		if (error) {
			FUNC6(sc->dev, "failed to set flash memory "
			    "resource %d: %d\n", rid, error);
			return (error);
		}
	}

	return (0);
}
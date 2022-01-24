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
struct chvgpio_softc {scalar_t__* sc_pins; int /*<<< orphan*/ * sc_irq_res; scalar_t__ sc_irq_rid; int /*<<< orphan*/ * sc_mem_res; scalar_t__ sc_mem_rid; int /*<<< orphan*/ * sc_busdev; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  intr_handle; int /*<<< orphan*/  sc_ngroups; int /*<<< orphan*/  sc_npins; int /*<<< orphan*/  sc_pin_names; int /*<<< orphan*/  sc_bank_prefix; int /*<<< orphan*/  sc_handle; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHVGPIO_INTERRUPT_MASK ; 
 int /*<<< orphan*/  CHVGPIO_INTERRUPT_STATUS ; 
 int /*<<< orphan*/  FUNC1 (struct chvgpio_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct chvgpio_softc*) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  E_BANK_PREFIX ; 
#define  E_UID 131 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  N_BANK_PREFIX ; 
#define  N_UID 130 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SE_BANK_PREFIX ; 
#define  SE_UID 129 
 int /*<<< orphan*/  SW_BANK_PREFIX ; 
#define  SW_UID 128 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct chvgpio_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  chv_east_pin_names ; 
 scalar_t__* chv_east_pins ; 
 int /*<<< orphan*/  chv_north_pin_names ; 
 scalar_t__* chv_north_pins ; 
 int /*<<< orphan*/  chv_southeast_pin_names ; 
 scalar_t__* chv_southeast_pins ; 
 int /*<<< orphan*/  chv_southwest_pin_names ; 
 scalar_t__* chv_southwest_pins ; 
 int /*<<< orphan*/  chvgpio_intr ; 
 struct chvgpio_softc* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct chvgpio_softc *sc;
	ACPI_STATUS status;
	int uid;
	int i;
	int error;

	sc = FUNC9(dev);
	sc->sc_dev = dev;
	sc->sc_handle = FUNC4(dev);

	status = FUNC3(sc->sc_handle, "_UID", &uid);
	if (FUNC0(status)) {
		FUNC10(dev, "failed to read _UID\n");
		return (ENXIO);
	}

	FUNC2(sc);

	switch (uid) {
	case SW_UID:
		sc->sc_bank_prefix = SW_BANK_PREFIX;
		sc->sc_pins = chv_southwest_pins;
		sc->sc_pin_names = chv_southwest_pin_names;
		break;
	case N_UID:
		sc->sc_bank_prefix = N_BANK_PREFIX;
		sc->sc_pins = chv_north_pins;
		sc->sc_pin_names = chv_north_pin_names;
		break;
	case E_UID:
		sc->sc_bank_prefix = E_BANK_PREFIX;
		sc->sc_pins = chv_east_pins;
		sc->sc_pin_names = chv_east_pin_names;
		break;
	case SE_UID:
		sc->sc_bank_prefix = SE_BANK_PREFIX;
		sc->sc_pins = chv_southeast_pins;
		sc->sc_pin_names = chv_southeast_pin_names;
		break;
	default:
		FUNC10(dev, "invalid _UID value: %d\n", uid);
		return (ENXIO);
	}

	for (i = 0; sc->sc_pins[i] >= 0; i++) {
		sc->sc_npins += sc->sc_pins[i];
		sc->sc_ngroups++;
	}

	sc->sc_mem_rid = 0;
	sc->sc_mem_res = FUNC5(sc->sc_dev, SYS_RES_MEMORY,
		&sc->sc_mem_rid, RF_ACTIVE);
	if (sc->sc_mem_res == NULL) {
		FUNC1(sc);
		FUNC10(dev, "can't allocate memory resource\n");
		return (ENOMEM);
	}

	sc->sc_irq_res = FUNC5(dev, SYS_RES_IRQ,
		&sc->sc_irq_rid, RF_ACTIVE);

	if (!sc->sc_irq_res) {
		FUNC1(sc);
		FUNC6(dev, SYS_RES_MEMORY,
			sc->sc_mem_rid, sc->sc_mem_res);
		FUNC10(dev, "can't allocate irq resource\n");
		return (ENOMEM);
	}

	error = FUNC7(sc->sc_dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
		NULL, chvgpio_intr, sc, &sc->intr_handle);


	if (error) {
		FUNC10(sc->sc_dev, "unable to setup irq: error %d\n", error);
		FUNC1(sc);
		FUNC6(dev, SYS_RES_MEMORY,
			sc->sc_mem_rid, sc->sc_mem_res);
		FUNC6(dev, SYS_RES_IRQ,
			sc->sc_irq_rid, sc->sc_irq_res);
		return (ENXIO);
	}

	/* Mask and ack all interrupts. */
	FUNC8(sc->sc_mem_res, CHVGPIO_INTERRUPT_MASK, 0);
	FUNC8(sc->sc_mem_res, CHVGPIO_INTERRUPT_STATUS, 0xffff);

	sc->sc_busdev = FUNC11(dev);
	if (sc->sc_busdev == NULL) {
		FUNC1(sc);
		FUNC6(dev, SYS_RES_MEMORY,
			sc->sc_mem_rid, sc->sc_mem_res);
		FUNC6(dev, SYS_RES_IRQ,
			sc->sc_irq_rid, sc->sc_irq_res);
		return (ENXIO);
	}

	return (0);
}
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
struct TYPE_3__ {char* rm_descr; void* rm_type; } ;
struct obio_softc {int oba_addr; int oba_size; TYPE_1__ oba_irq_rman; TYPE_1__ oba_rman; int /*<<< orphan*/  oba_st; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int MALTA_PCIMEM3_SIZE ; 
 int /*<<< orphan*/  MALTA_UART0ADR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* RMAN_ARRAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct obio_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mips_bus_space_generic ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int,int) ; 

int
FUNC8(device_t dev)
{
	struct obio_softc *sc = FUNC4(dev);

	sc->oba_st = mips_bus_space_generic;
	sc->oba_addr = FUNC0(MALTA_UART0ADR);
	sc->oba_size = MALTA_PCIMEM3_SIZE;
	sc->oba_rman.rm_type = RMAN_ARRAY;
	sc->oba_rman.rm_descr = "OBIO I/O";
	if (FUNC6(&sc->oba_rman) != 0 ||
	    FUNC7(&sc->oba_rman,
	    sc->oba_addr, sc->oba_addr + sc->oba_size) != 0)
		FUNC5("obio_attach: failed to set up I/O rman");
	sc->oba_irq_rman.rm_type = RMAN_ARRAY;
	sc->oba_irq_rman.rm_descr = "OBIO IRQ";

	/* 
	 * This module is intended for UART purposes only and
	 * it's IRQ is 4
	 */
	if (FUNC6(&sc->oba_irq_rman) != 0 ||
	    FUNC7(&sc->oba_irq_rman, 4, 4) != 0)
		FUNC5("obio_attach: failed to set up IRQ rman");

	FUNC3(dev, "uart", 0);
	FUNC2(dev);
	FUNC1(dev);

	return (0);
}
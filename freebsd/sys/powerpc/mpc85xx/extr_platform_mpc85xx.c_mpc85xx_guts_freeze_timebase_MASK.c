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
typedef  int uint32_t ;
struct mpc85xx_guts_softc {int /*<<< orphan*/  sc_mem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int DEVDISR_TB0 ; 
 int DEVDISR_TB1 ; 
 int /*<<< orphan*/  GUTS_DEVDISR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mpc85xx_guts_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev, bool freeze)
{
	struct mpc85xx_guts_softc *sc;
	uint32_t devdisr;

	sc = FUNC2(dev);
	
	devdisr = FUNC0(sc->sc_mem, GUTS_DEVDISR);
	if (freeze)
		FUNC1(sc->sc_mem, GUTS_DEVDISR,
		    devdisr | (DEVDISR_TB0 | DEVDISR_TB1));
	else
		FUNC1(sc->sc_mem, GUTS_DEVDISR,
		    devdisr & ~(DEVDISR_TB0 | DEVDISR_TB1));
}
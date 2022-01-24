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
struct mpc85xx_rcpm_softc {int /*<<< orphan*/  sc_mem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  RCPM_CTBENR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mpc85xx_rcpm_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int maxcpu ; 

__attribute__((used)) static void
FUNC2(device_t dev, bool freeze)
{
	struct mpc85xx_rcpm_softc *sc;

	sc = FUNC1(dev);
	
	if (freeze)
		FUNC0(sc->sc_mem, RCPM_CTBENR, 0);
	else
		FUNC0(sc->sc_mem, RCPM_CTBENR, (1 << maxcpu) - 1);
}
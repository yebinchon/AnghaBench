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
struct fxp_softc {int /*<<< orphan*/ * ih; int /*<<< orphan*/ * fxp_res; int /*<<< orphan*/  dev; int /*<<< orphan*/  ifp; int /*<<< orphan*/  stat_ch; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fxp_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FXP_CSR_SCB_INTRCNTL ; 
 int /*<<< orphan*/  FUNC1 (struct fxp_softc*) ; 
 int /*<<< orphan*/  FXP_SCB_INTR_DISABLE ; 
 int /*<<< orphan*/  FUNC2 (struct fxp_softc*) ; 
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct fxp_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fxp_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct fxp_softc*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct fxp_softc *sc = FUNC5(dev);

#ifdef DEVICE_POLLING
	if (if_getcapenable(sc->ifp) & IFCAP_POLLING)
		ether_poll_deregister(sc->ifp);
#endif

	FUNC1(sc);
	/*
	 * Stop DMA and drop transmit queue, but disable interrupts first.
	 */
	FUNC0(sc, FXP_CSR_SCB_INTRCNTL, FXP_SCB_INTR_DISABLE);
	FUNC9(sc);
	FUNC2(sc);
	FUNC4(&sc->stat_ch);

	/*
	 * Close down routes etc.
	 */
	FUNC6(sc->ifp);

	/*
	 * Unhook interrupt before dropping lock. This is to prevent
	 * races with fxp_intr().
	 */
	FUNC3(sc->dev, sc->fxp_res[1], sc->ih);
	sc->ih = NULL;

	/* Release our allocated resources. */
	FUNC8(sc);
	return (0);
}
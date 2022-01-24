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
typedef  int uint32_t ;
struct TYPE_2__ {int es_nports; } ;
struct arswitch_softc {TYPE_1__ info; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int AR8327_FWD_CTRL0_CPU_PORT_EN ; 
 int AR8327_FWD_CTRL0_MIRROR_PORT ; 
 int AR8327_FWD_CTRL1_BC_FLOOD_S ; 
 int AR8327_FWD_CTRL1_MC_FLOOD_S ; 
 int AR8327_FWD_CTRL1_UC_FLOOD_S ; 
 int AR8327_MAX_FRAME_SIZE_MTU ; 
 int AR8327_MODULE_EN_MIB ; 
 int AR8327_PORTS_ALL ; 
 int /*<<< orphan*/  AR8327_REG_EEE_CTRL ; 
 int /*<<< orphan*/  AR8327_REG_FWD_CTRL0 ; 
 int /*<<< orphan*/  AR8327_REG_FWD_CTRL1 ; 
 int /*<<< orphan*/  AR8327_REG_MAX_FRAME_SIZE ; 
 int /*<<< orphan*/  AR8327_REG_MODULE_EN ; 
 int /*<<< orphan*/  FUNC1 (struct arswitch_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct arswitch_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct arswitch_softc *sc)
{
	uint32_t t;

	FUNC1(sc);

	/* enable CPU port and disable mirror port */
	t = AR8327_FWD_CTRL0_CPU_PORT_EN |
	    AR8327_FWD_CTRL0_MIRROR_PORT;
	FUNC5(sc->sc_dev, AR8327_REG_FWD_CTRL0, t);

	/* forward multicast and broadcast frames to CPU */
	t = (AR8327_PORTS_ALL << AR8327_FWD_CTRL1_UC_FLOOD_S) |
	    (AR8327_PORTS_ALL << AR8327_FWD_CTRL1_MC_FLOOD_S) |
	    (AR8327_PORTS_ALL << AR8327_FWD_CTRL1_BC_FLOOD_S);
	FUNC5(sc->sc_dev, AR8327_REG_FWD_CTRL1, t);

	/* enable jumbo frames */
	/* XXX need to macro-shift the value! */
	FUNC3(sc->sc_dev, AR8327_REG_MAX_FRAME_SIZE,
	    AR8327_MAX_FRAME_SIZE_MTU, 9018 + 8 + 2);

	/* Enable MIB counters */
	FUNC3(sc->sc_dev, AR8327_REG_MODULE_EN,
	    AR8327_MODULE_EN_MIB, AR8327_MODULE_EN_MIB);

	/* Disable EEE on all ports due to stability issues */
	t = FUNC4(sc->sc_dev, AR8327_REG_EEE_CTRL);
	t |= FUNC0(0) |
	    FUNC0(1) |
	    FUNC0(2) |
	    FUNC0(3) |
	    FUNC0(4);
	FUNC5(sc->sc_dev, AR8327_REG_EEE_CTRL, t);

	/* Set the right number of ports */
	/* GMAC0 (CPU), GMAC1..5 (PHYs), GMAC6 (CPU) */
	sc->info.es_nports = 7;

	FUNC2(sc);
	return (0);
}
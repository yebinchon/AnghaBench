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
struct arswitch_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR7240_GLOBAL_CTRL_MTU_MASK ; 
 int AR8X16_CPU_MIRROR_DIS ; 
 int AR8X16_CPU_PORT_EN ; 
 int AR8X16_FLOOD_MASK_BCAST_TO_CPU ; 
 int /*<<< orphan*/  AR8X16_REG_CPU_PORT ; 
 int /*<<< orphan*/  AR8X16_REG_FLOOD_MASK ; 
 int /*<<< orphan*/  AR8X16_REG_GLOBAL_CTRL ; 
 int /*<<< orphan*/  AR8X16_REG_SERVICE_TAG ; 
 int /*<<< orphan*/  AR8X16_REG_TAG_PRIO ; 
 int /*<<< orphan*/  AR8X16_SERVICE_TAG_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct arswitch_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct arswitch_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct arswitch_softc *sc)
{

	FUNC0(sc);

	/* Enable CPU port; disable mirror port */
	FUNC4(sc->sc_dev, AR8X16_REG_CPU_PORT,
	    AR8X16_CPU_PORT_EN | AR8X16_CPU_MIRROR_DIS);

	/* Setup TAG priority mapping */
	FUNC4(sc->sc_dev, AR8X16_REG_TAG_PRIO, 0xfa50);

	/* Enable broadcast frames transmitted to the CPU */
	FUNC4(sc->sc_dev, AR8X16_REG_FLOOD_MASK,
	    AR8X16_FLOOD_MASK_BCAST_TO_CPU | 0x003f003f);

	/* Setup MTU */
	FUNC3(sc->sc_dev, AR8X16_REG_GLOBAL_CTRL,
	    AR7240_GLOBAL_CTRL_MTU_MASK,
	    FUNC2(1536, AR7240_GLOBAL_CTRL_MTU_MASK));

	/* Service Tag */
	FUNC3(sc->sc_dev, AR8X16_REG_SERVICE_TAG,
	    AR8X16_SERVICE_TAG_MASK, 0);

	FUNC1(sc);

	return (0);
}
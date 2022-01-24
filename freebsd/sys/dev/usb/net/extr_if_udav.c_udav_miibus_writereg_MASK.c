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
typedef  int uint8_t ;
struct udav_softc {int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct udav_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UDAV_EPAR ; 
 int UDAV_EPAR_EROA_MASK ; 
 int UDAV_EPAR_PHY_ADR0 ; 
 int /*<<< orphan*/  UDAV_EPCR ; 
 int UDAV_EPCR_EPOS ; 
 int UDAV_EPCR_ERPRW ; 
 int /*<<< orphan*/  UDAV_EPDRL ; 
 int /*<<< orphan*/  FUNC1 (struct udav_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct udav_softc*) ; 
 struct udav_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct udav_softc*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct udav_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev, int phy, int reg, int data)
{
	struct udav_softc *sc = FUNC3(dev);
	uint8_t val[2];
	int locked;

	/* XXX: one PHY only for the internal PHY */
	if (phy != 0)
		return (0);

	locked = FUNC4(&sc->sc_mtx);
	if (!locked)
		FUNC1(sc);

	/* select internal PHY and set PHY register address */
	FUNC6(sc, UDAV_EPAR,
	    UDAV_EPAR_PHY_ADR0 | (reg & UDAV_EPAR_EROA_MASK));

	/* put the value to the data registers */
	val[0] = (data & 0xff);
	val[1] = (data >> 8) & 0xff;
	FUNC5(sc, UDAV_EPDRL, val, 2);

	/* select PHY operation and start write command */
	FUNC6(sc, UDAV_EPCR, UDAV_EPCR_EPOS | UDAV_EPCR_ERPRW);

	/* XXX: should we wait? */

	/* end write command */
	FUNC0(sc, UDAV_EPCR, UDAV_EPCR_ERPRW);

	if (!locked)
		FUNC2(sc);
	return (0);
}
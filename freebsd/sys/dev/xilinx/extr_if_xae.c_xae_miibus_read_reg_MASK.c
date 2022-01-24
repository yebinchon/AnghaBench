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
struct xae_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int MDIO_CTRL_INITIATE ; 
 int MDIO_CTRL_TX_OP_READ ; 
 int MDIO_TX_PHYAD_S ; 
 int MDIO_TX_REGAD_S ; 
 int FUNC0 (struct xae_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xae_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  XAE_MDIO_CTRL ; 
 int /*<<< orphan*/  XAE_MDIO_READ ; 
 struct xae_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct xae_softc*) ; 

__attribute__((used)) static int
FUNC4(device_t dev, int phy, int reg)
{
	struct xae_softc *sc;
	uint32_t mii;
	int rv;

	sc = FUNC2(dev);

	if (FUNC3(sc))
		return (0);

	mii = MDIO_CTRL_TX_OP_READ | MDIO_CTRL_INITIATE;
	mii |= (reg << MDIO_TX_REGAD_S);
	mii |= (phy << MDIO_TX_PHYAD_S);

	FUNC1(sc, XAE_MDIO_CTRL, mii);

	if (FUNC3(sc))
		return (0);

	rv = FUNC0(sc, XAE_MDIO_READ);

	return (rv);
}
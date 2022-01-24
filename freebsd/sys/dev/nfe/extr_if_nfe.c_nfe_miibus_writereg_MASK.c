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
struct nfe_softc {int /*<<< orphan*/  nfe_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NFE_PHYADD_SHIFT ; 
 int NFE_PHY_BUSY ; 
 int /*<<< orphan*/  NFE_PHY_CTL ; 
 int /*<<< orphan*/  NFE_PHY_DATA ; 
 int /*<<< orphan*/  NFE_PHY_STATUS ; 
 int NFE_PHY_WRITE ; 
 int FUNC1 (struct nfe_softc*,int /*<<< orphan*/ ) ; 
 int NFE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct nfe_softc*,int /*<<< orphan*/ ,int) ; 
 struct nfe_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int nfedebug ; 

__attribute__((used)) static int
FUNC5(device_t dev, int phy, int reg, int val)
{
	struct nfe_softc *sc = FUNC3(dev);
	uint32_t ctl;
	int ntries;

	FUNC2(sc, NFE_PHY_STATUS, 0xf);

	if (FUNC1(sc, NFE_PHY_CTL) & NFE_PHY_BUSY) {
		FUNC2(sc, NFE_PHY_CTL, NFE_PHY_BUSY);
		FUNC0(100);
	}

	FUNC2(sc, NFE_PHY_DATA, val);
	ctl = NFE_PHY_WRITE | (phy << NFE_PHYADD_SHIFT) | reg;
	FUNC2(sc, NFE_PHY_CTL, ctl);

	for (ntries = 0; ntries < NFE_TIMEOUT; ntries++) {
		FUNC0(100);
		if (!(FUNC1(sc, NFE_PHY_CTL) & NFE_PHY_BUSY))
			break;
	}
#ifdef NFE_DEBUG
	if (nfedebug >= 2 && ntries == NFE_TIMEOUT)
		device_printf(sc->nfe_dev, "could not write to PHY\n");
#endif
	return (0);
}
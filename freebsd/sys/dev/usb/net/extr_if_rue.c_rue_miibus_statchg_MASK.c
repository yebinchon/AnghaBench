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
typedef  int /*<<< orphan*/  uint16_t ;
struct rue_softc {int /*<<< orphan*/  sc_mtx; } ;
struct mii_data {int mii_media_active; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct mii_data* FUNC0 (struct rue_softc*) ; 
 scalar_t__ IFM_100_TX ; 
 int IFM_FDX ; 
 int IFM_GMASK ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  RUE_BMCR ; 
 int /*<<< orphan*/  RUE_BMCR_DUPLEX ; 
 int /*<<< orphan*/  RUE_BMCR_SPD_SET ; 
 int /*<<< orphan*/  FUNC2 (struct rue_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RUE_CR ; 
 int RUE_CR_RE ; 
 int RUE_CR_TE ; 
 int /*<<< orphan*/  FUNC3 (struct rue_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rue_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rue_softc*) ; 
 struct rue_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct rue_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rue_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(device_t dev)
{
	/*
	 * When the code below is enabled the card starts doing weird
	 * things after link going from UP to DOWN and back UP.
	 *
	 * Looks like some of register writes below messes up PHY
	 * interface.
	 *
	 * No visible regressions were found after commenting this code
	 * out, so that disable it for good.
	 */
#if 0
	struct rue_softc *sc = device_get_softc(dev);
	struct mii_data *mii = GET_MII(sc);
	uint16_t bmcr;
	int locked;

	locked = mtx_owned(&sc->sc_mtx);
	if (!locked)
		RUE_LOCK(sc);

	RUE_CLRBIT(sc, RUE_CR, (RUE_CR_RE | RUE_CR_TE));

	bmcr = rue_csr_read_2(sc, RUE_BMCR);

	if (IFM_SUBTYPE(mii->mii_media_active) == IFM_100_TX)
		bmcr |= RUE_BMCR_SPD_SET;
	else
		bmcr &= ~RUE_BMCR_SPD_SET;

	if ((mii->mii_media_active & IFM_GMASK) == IFM_FDX)
		bmcr |= RUE_BMCR_DUPLEX;
	else
		bmcr &= ~RUE_BMCR_DUPLEX;

	rue_csr_write_2(sc, RUE_BMCR, bmcr);

	RUE_SETBIT(sc, RUE_CR, (RUE_CR_RE | RUE_CR_TE));

	if (!locked)
		RUE_UNLOCK(sc);
#endif
}
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
typedef  int uint16_t ;
struct mii_data {int mii_media_active; } ;
struct aue_softc {int sc_flags; int /*<<< orphan*/  sc_mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aue_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  AUE_CTL0 ; 
 int AUE_CTL0_RX_ENB ; 
 int AUE_CTL0_TX_ENB ; 
 int /*<<< orphan*/  AUE_CTL1 ; 
 int AUE_CTL1_DUPLEX ; 
 int AUE_CTL1_SPEEDSEL ; 
 int AUE_FLAG_LSYS ; 
 int /*<<< orphan*/  FUNC1 (struct aue_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct aue_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct aue_softc*) ; 
 struct mii_data* FUNC4 (struct aue_softc*) ; 
 scalar_t__ IFM_100_TX ; 
 int IFM_FDX ; 
 int IFM_GMASK ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct aue_softc* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(device_t dev)
{
	struct aue_softc *sc = FUNC8(dev);
	struct mii_data *mii = FUNC4(sc);
	int locked;

	locked = FUNC9(&sc->sc_mtx);
	if (!locked)
		FUNC1(sc);

	FUNC0(sc, AUE_CTL0, AUE_CTL0_RX_ENB | AUE_CTL0_TX_ENB);
	if (FUNC5(mii->mii_media_active) == IFM_100_TX)
		FUNC2(sc, AUE_CTL1, AUE_CTL1_SPEEDSEL);
	else
		FUNC0(sc, AUE_CTL1, AUE_CTL1_SPEEDSEL);

	if ((mii->mii_media_active & IFM_GMASK) == IFM_FDX)
		FUNC2(sc, AUE_CTL1, AUE_CTL1_DUPLEX);
	else
		FUNC0(sc, AUE_CTL1, AUE_CTL1_DUPLEX);

	FUNC2(sc, AUE_CTL0, AUE_CTL0_RX_ENB | AUE_CTL0_TX_ENB);

	/*
	 * Set the LED modes on the LinkSys adapter.
	 * This turns on the 'dual link LED' bin in the auxmode
	 * register of the Broadcom PHY.
	 */
	if (sc->sc_flags & AUE_FLAG_LSYS) {
		uint16_t auxmode;

		auxmode = FUNC6(dev, 0, 0x1b);
		FUNC7(dev, 0, 0x1b, auxmode | 0x04);
	}
	if (!locked)
		FUNC3(sc);
}
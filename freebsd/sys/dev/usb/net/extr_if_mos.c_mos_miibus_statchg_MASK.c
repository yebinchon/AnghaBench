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
struct mos_softc {int /*<<< orphan*/  sc_mtx; } ;
struct mii_data {int mii_media_active; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct mii_data* FUNC0 (struct mos_softc*) ; 
#define  IFM_100_TX 129 
#define  IFM_10_T 128 
 int IFM_FDX ; 
 int IFM_GMASK ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  MOS_CTL ; 
 int MOS_CTL_FDX_ENB ; 
 int MOS_CTL_RX_ENB ; 
 int MOS_CTL_SPEEDSEL ; 
 int MOS_CTL_TX_ENB ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  MOS_FRAME_DROP_CNT ; 
 int /*<<< orphan*/  FUNC3 (struct mos_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mos_softc*) ; 
 struct mos_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mos_softc*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mos_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(device_t dev)
{
	struct mos_softc *sc = FUNC5(dev);
	struct mii_data *mii = FUNC0(sc);
	int val, err, locked;

	locked = FUNC8(&sc->sc_mtx);
	if (!locked)
		FUNC3(sc);

	/* disable RX, TX prior to changing FDX, SPEEDSEL */
	val = FUNC6(sc, MOS_CTL);
	val &= ~(MOS_CTL_TX_ENB | MOS_CTL_RX_ENB);
	FUNC7(sc, MOS_CTL, val);

	/* reset register which counts dropped frames */
	FUNC7(sc, MOS_FRAME_DROP_CNT, 0);

	if ((mii->mii_media_active & IFM_GMASK) == IFM_FDX)
		val |= MOS_CTL_FDX_ENB;
	else
		val &= ~(MOS_CTL_FDX_ENB);

	switch (FUNC1(mii->mii_media_active)) {
	case IFM_100_TX:
		val |= MOS_CTL_SPEEDSEL;
		break;
	case IFM_10_T:
		val &= ~(MOS_CTL_SPEEDSEL);
		break;
	}

	/* re-enable TX, RX */
	val |= (MOS_CTL_TX_ENB | MOS_CTL_RX_ENB);
	err = FUNC7(sc, MOS_CTL, val);

	if (err)
		FUNC2("media change failed");

	if (!locked)
		FUNC4(sc);
}
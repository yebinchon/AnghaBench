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
struct tsec_softc {int tsec_link; struct mii_data* tsec_mii; } ;
struct mii_data {int mii_media_status; int mii_media_active; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  IFM_1000_SX 132 
#define  IFM_1000_T 131 
#define  IFM_100_TX 130 
#define  IFM_10_T 129 
 int IFM_ACTIVE ; 
 int IFM_FDX ; 
 int IFM_GMASK ; 
#define  IFM_NONE 128 
 int FUNC0 (int) ; 
 int TSEC_ECNTRL_R100M ; 
 int TSEC_MACCFG2_FULLDUPLEX ; 
 int TSEC_MACCFG2_GMII ; 
 int TSEC_MACCFG2_IF ; 
 int TSEC_MACCFG2_MII ; 
 int FUNC1 (struct tsec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSEC_REG_ECNTRL ; 
 int /*<<< orphan*/  TSEC_REG_ID2 ; 
 int /*<<< orphan*/  TSEC_REG_MACCFG2 ; 
 int /*<<< orphan*/  FUNC2 (struct tsec_softc*,int /*<<< orphan*/ ,int) ; 
 struct tsec_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

void
FUNC5(device_t dev)
{
	struct tsec_softc *sc;
	struct mii_data *mii;
	uint32_t ecntrl, id, tmp;
	int link;

	sc = FUNC3(dev);
	mii = sc->tsec_mii;
	link = ((mii->mii_media_status & IFM_ACTIVE) ? 1 : 0);

	tmp = FUNC1(sc, TSEC_REG_MACCFG2) & ~TSEC_MACCFG2_IF;

	if ((mii->mii_media_active & IFM_GMASK) == IFM_FDX)
		tmp |= TSEC_MACCFG2_FULLDUPLEX;
	else
		tmp &= ~TSEC_MACCFG2_FULLDUPLEX;

	switch (FUNC0(mii->mii_media_active)) {
	case IFM_1000_T:
	case IFM_1000_SX:
		tmp |= TSEC_MACCFG2_GMII;
		sc->tsec_link = link;
		break;
	case IFM_100_TX:
	case IFM_10_T:
		tmp |= TSEC_MACCFG2_MII;
		sc->tsec_link = link;
		break;
	case IFM_NONE:
		if (link)
			FUNC4(dev, "No speed selected but link "
			    "active!\n");
		sc->tsec_link = 0;
		return;
	default:
		sc->tsec_link = 0;
		FUNC4(dev, "Unknown speed (%d), link %s!\n",
		    FUNC0(mii->mii_media_active),
		        ((link) ? "up" : "down"));
		return;
	}
	FUNC2(sc, TSEC_REG_MACCFG2, tmp);

	/* XXX kludge - use circumstantial evidence for reduced mode. */
	id = FUNC1(sc, TSEC_REG_ID2);
	if (id & 0xffff) {
		ecntrl = FUNC1(sc, TSEC_REG_ECNTRL) & ~TSEC_ECNTRL_R100M;
		ecntrl |= (tmp & TSEC_MACCFG2_MII) ? TSEC_ECNTRL_R100M : 0;
		FUNC2(sc, TSEC_REG_ECNTRL, ecntrl);
	}
}
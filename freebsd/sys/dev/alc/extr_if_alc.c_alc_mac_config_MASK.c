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
struct mii_data {int /*<<< orphan*/  mii_media_active; } ;
struct alc_softc {int alc_flags; TYPE_1__* alc_ident; int /*<<< orphan*/  alc_miibus; } ;
struct TYPE_2__ {scalar_t__ deviceid; } ;

/* Variables and functions */
 int ALC_FLAG_AR816X_FAMILY ; 
 int /*<<< orphan*/  FUNC0 (struct alc_softc*) ; 
 int /*<<< orphan*/  ALC_MAC_CFG ; 
 int FUNC1 (struct alc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct alc_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ DEVICEID_ATHEROS_AR8151 ; 
 scalar_t__ DEVICEID_ATHEROS_AR8151_V2 ; 
 scalar_t__ DEVICEID_ATHEROS_AR8152_B2 ; 
#define  IFM_1000_T 130 
#define  IFM_100_TX 129 
#define  IFM_10_T 128 
 int IFM_ETH_RXPAUSE ; 
 int IFM_ETH_TXPAUSE ; 
 int IFM_FDX ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int MAC_CFG_FULL_DUPLEX ; 
 int MAC_CFG_HASH_ALG_CRC32 ; 
 int MAC_CFG_RX_FC ; 
 int MAC_CFG_SPEED_1000 ; 
 int MAC_CFG_SPEED_10_100 ; 
 int MAC_CFG_SPEED_MASK ; 
 int MAC_CFG_SPEED_MODE_SW ; 
 int MAC_CFG_TX_FC ; 
 struct mii_data* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct alc_softc *sc)
{
	struct mii_data *mii;
	uint32_t reg;

	FUNC0(sc);

	mii = FUNC5(sc->alc_miibus);
	reg = FUNC1(sc, ALC_MAC_CFG);
	reg &= ~(MAC_CFG_FULL_DUPLEX | MAC_CFG_TX_FC | MAC_CFG_RX_FC |
	    MAC_CFG_SPEED_MASK);
	if ((sc->alc_flags & ALC_FLAG_AR816X_FAMILY) != 0 ||
	    sc->alc_ident->deviceid == DEVICEID_ATHEROS_AR8151 ||
	    sc->alc_ident->deviceid == DEVICEID_ATHEROS_AR8151_V2 ||
	    sc->alc_ident->deviceid == DEVICEID_ATHEROS_AR8152_B2)
		reg |= MAC_CFG_HASH_ALG_CRC32 | MAC_CFG_SPEED_MODE_SW;
	/* Reprogram MAC with resolved speed/duplex. */
	switch (FUNC4(mii->mii_media_active)) {
	case IFM_10_T:
	case IFM_100_TX:
		reg |= MAC_CFG_SPEED_10_100;
		break;
	case IFM_1000_T:
		reg |= MAC_CFG_SPEED_1000;
		break;
	}
	if ((FUNC3(mii->mii_media_active) & IFM_FDX) != 0) {
		reg |= MAC_CFG_FULL_DUPLEX;
		if ((FUNC3(mii->mii_media_active) & IFM_ETH_TXPAUSE) != 0)
			reg |= MAC_CFG_TX_FC;
		if ((FUNC3(mii->mii_media_active) & IFM_ETH_RXPAUSE) != 0)
			reg |= MAC_CFG_RX_FC;
	}
	FUNC2(sc, ALC_MAC_CFG, reg);
}
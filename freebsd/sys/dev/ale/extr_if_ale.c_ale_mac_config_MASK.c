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
struct mii_data {int /*<<< orphan*/  mii_media_active; } ;
struct ale_softc {int /*<<< orphan*/  ale_miibus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ale_softc*) ; 
 int /*<<< orphan*/  ALE_MAC_CFG ; 
 int FUNC1 (struct ale_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ale_softc*,int /*<<< orphan*/ ,int) ; 
#define  IFM_1000_T 130 
#define  IFM_100_TX 129 
#define  IFM_10_T 128 
 int IFM_ETH_RXPAUSE ; 
 int IFM_ETH_TXPAUSE ; 
 int IFM_FDX ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int MAC_CFG_FULL_DUPLEX ; 
 int MAC_CFG_RX_FC ; 
 int MAC_CFG_SPEED_1000 ; 
 int MAC_CFG_SPEED_10_100 ; 
 int MAC_CFG_SPEED_MASK ; 
 int MAC_CFG_TX_FC ; 
 struct mii_data* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct ale_softc *sc)
{
	struct mii_data *mii;
	uint32_t reg;

	FUNC0(sc);

	mii = FUNC5(sc->ale_miibus);
	reg = FUNC1(sc, ALE_MAC_CFG);
	reg &= ~(MAC_CFG_FULL_DUPLEX | MAC_CFG_TX_FC | MAC_CFG_RX_FC |
	    MAC_CFG_SPEED_MASK);
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
	FUNC2(sc, ALE_MAC_CFG, reg);
}
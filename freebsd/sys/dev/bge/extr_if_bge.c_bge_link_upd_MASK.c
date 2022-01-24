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
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct bge_softc {scalar_t__ bge_asicrev; scalar_t__ bge_chipid; int bge_link; int bge_flags; int bge_mi_mode; int /*<<< orphan*/  bge_dev; int /*<<< orphan*/  bge_miibus; int /*<<< orphan*/  bge_ifp; int /*<<< orphan*/  bge_phy_addr; scalar_t__ bge_link_evt; } ;

/* Variables and functions */
 scalar_t__ BGE_ASICREV_BCM5700 ; 
 scalar_t__ BGE_ASICREV_BCM5704 ; 
 scalar_t__ BGE_CHIPID_BCM5700_B2 ; 
 int /*<<< orphan*/  FUNC0 (struct bge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BGE_EVTENB_MI_INTERRUPT ; 
 int BGE_FLAG_TBI ; 
 int /*<<< orphan*/  FUNC1 (struct bge_softc*) ; 
 int /*<<< orphan*/  BGE_MACMODE_TBI_SEND_CFGS ; 
 int BGE_MACSTAT_CFG_CHANGED ; 
 int BGE_MACSTAT_LINK_CHANGED ; 
 int BGE_MACSTAT_MI_COMPLETE ; 
 int BGE_MACSTAT_MI_INTERRUPT ; 
 int BGE_MACSTAT_SYNC_CHANGED ; 
 int BGE_MACSTAT_TBI_PCS_SYNCHED ; 
 int /*<<< orphan*/  BGE_MAC_EVT_ENB ; 
 int /*<<< orphan*/  BGE_MAC_MODE ; 
 int /*<<< orphan*/  BGE_MAC_STS ; 
 int BGE_MIMODE_AUTOPOLL ; 
 int BGE_MISTS_LINK ; 
 int /*<<< orphan*/  BGE_MI_STS ; 
 int /*<<< orphan*/  BRGPHY_INTRS ; 
 int /*<<< orphan*/  BRGPHY_MII_IMR ; 
 int /*<<< orphan*/  BRGPHY_MII_ISR ; 
 int FUNC2 (struct bge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int IFM_ACTIVE ; 
 scalar_t__ IFM_NONE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 struct mii_data* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC13(struct bge_softc *sc)
{
	struct mii_data *mii;
	uint32_t link, status;

	FUNC1(sc);

	/* Clear 'pending link event' flag. */
	sc->bge_link_evt = 0;

	/*
	 * Process link state changes.
	 * Grrr. The link status word in the status block does
	 * not work correctly on the BCM5700 rev AX and BX chips,
	 * according to all available information. Hence, we have
	 * to enable MII interrupts in order to properly obtain
	 * async link changes. Unfortunately, this also means that
	 * we have to read the MAC status register to detect link
	 * changes, thereby adding an additional register access to
	 * the interrupt handler.
	 *
	 * XXX: perhaps link state detection procedure used for
	 * BGE_CHIPID_BCM5700_B2 can be used for others BCM5700 revisions.
	 */

	if (sc->bge_asicrev == BGE_ASICREV_BCM5700 &&
	    sc->bge_chipid != BGE_CHIPID_BCM5700_B2) {
		status = FUNC2(sc, BGE_MAC_STS);
		if (status & BGE_MACSTAT_MI_INTERRUPT) {
			mii = FUNC9(sc->bge_miibus);
			FUNC12(mii);
			if (!sc->bge_link &&
			    mii->mii_media_status & IFM_ACTIVE &&
			    FUNC5(mii->mii_media_active) != IFM_NONE) {
				sc->bge_link++;
				if (bootverbose)
					FUNC11(sc->bge_ifp, "link UP\n");
			} else if (sc->bge_link &&
			    (!(mii->mii_media_status & IFM_ACTIVE) ||
			    FUNC5(mii->mii_media_active) == IFM_NONE)) {
				sc->bge_link = 0;
				if (bootverbose)
					FUNC11(sc->bge_ifp, "link DOWN\n");
			}

			/* Clear the interrupt. */
			FUNC3(sc, BGE_MAC_EVT_ENB,
			    BGE_EVTENB_MI_INTERRUPT);
			FUNC6(sc->bge_dev, sc->bge_phy_addr,
			    BRGPHY_MII_ISR);
			FUNC8(sc->bge_dev, sc->bge_phy_addr,
			    BRGPHY_MII_IMR, BRGPHY_INTRS);
		}
		return;
	}

	if (sc->bge_flags & BGE_FLAG_TBI) {
		status = FUNC2(sc, BGE_MAC_STS);
		if (status & BGE_MACSTAT_TBI_PCS_SYNCHED) {
			if (!sc->bge_link) {
				sc->bge_link++;
				if (sc->bge_asicrev == BGE_ASICREV_BCM5704) {
					FUNC0(sc, BGE_MAC_MODE,
					    BGE_MACMODE_TBI_SEND_CFGS);
					FUNC4(40);
				}
				FUNC3(sc, BGE_MAC_STS, 0xFFFFFFFF);
				if (bootverbose)
					FUNC11(sc->bge_ifp, "link UP\n");
				FUNC10(sc->bge_ifp,
				    LINK_STATE_UP);
			}
		} else if (sc->bge_link) {
			sc->bge_link = 0;
			if (bootverbose)
				FUNC11(sc->bge_ifp, "link DOWN\n");
			FUNC10(sc->bge_ifp, LINK_STATE_DOWN);
		}
	} else if ((sc->bge_mi_mode & BGE_MIMODE_AUTOPOLL) != 0) {
		/*
		 * Some broken BCM chips have BGE_STATFLAG_LINKSTATE_CHANGED bit
		 * in status word always set. Workaround this bug by reading
		 * PHY link status directly.
		 */
		link = (FUNC2(sc, BGE_MI_STS) & BGE_MISTS_LINK) ? 1 : 0;

		if (link != sc->bge_link ||
		    sc->bge_asicrev == BGE_ASICREV_BCM5700) {
			mii = FUNC9(sc->bge_miibus);
			FUNC12(mii);
			if (!sc->bge_link &&
			    mii->mii_media_status & IFM_ACTIVE &&
			    FUNC5(mii->mii_media_active) != IFM_NONE) {
				sc->bge_link++;
				if (bootverbose)
					FUNC11(sc->bge_ifp, "link UP\n");
			} else if (sc->bge_link &&
			    (!(mii->mii_media_status & IFM_ACTIVE) ||
			    FUNC5(mii->mii_media_active) == IFM_NONE)) {
				sc->bge_link = 0;
				if (bootverbose)
					FUNC11(sc->bge_ifp, "link DOWN\n");
			}
		}
	} else {
		/*
		 * For controllers that call mii_tick, we have to poll
		 * link status.
		 */
		mii = FUNC9(sc->bge_miibus);
		FUNC12(mii);
		FUNC7(sc->bge_dev);
	}

	/* Disable MAC attention when link is up. */
	FUNC3(sc, BGE_MAC_STS, BGE_MACSTAT_SYNC_CHANGED |
	    BGE_MACSTAT_CFG_CHANGED | BGE_MACSTAT_MI_COMPLETE |
	    BGE_MACSTAT_LINK_CHANGED);
}
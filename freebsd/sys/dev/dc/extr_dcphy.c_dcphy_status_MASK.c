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
struct mii_softc {int mii_capabilities; struct mii_data* mii_pdata; } ;
struct mii_data {int mii_media_active; int /*<<< orphan*/  mii_media_status; int /*<<< orphan*/  mii_ifp; } ;
struct dc_softc {int dummy; } ;

/* Variables and functions */
 int ANLPAR_10 ; 
 int ANLPAR_10_FD ; 
 int ANLPAR_T4 ; 
 int ANLPAR_TX ; 
 int ANLPAR_TX_FD ; 
 int BMSR_100T4 ; 
 int BMSR_100TXFDX ; 
 int BMSR_100TXHDX ; 
 int FUNC0 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_10BTCTRL ; 
 int /*<<< orphan*/  DC_10BTSTAT ; 
 int DC_ASTAT_AUTONEGCMP ; 
 int DC_ASTAT_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct dc_softc*) ; 
 scalar_t__ FUNC3 (struct dc_softc*) ; 
 scalar_t__ FUNC4 (struct dc_softc*) ; 
 int /*<<< orphan*/  DC_NETCFG ; 
 int DC_NETCFG_FULLDUPLEX ; 
 int DC_NETCFG_SPEEDSEL ; 
 int DC_TCTL_AUTONEGENBL ; 
 int DC_TSTAT_ANEGSTAT ; 
 int DC_TSTAT_LP_CAN_NWAY ; 
 int DC_TSTAT_LS10 ; 
 int DC_TSTAT_LS100 ; 
 int IFF_UP ; 
 int IFM_100_T4 ; 
 int IFM_100_TX ; 
 int IFM_10_T ; 
 int /*<<< orphan*/  IFM_ACTIVE ; 
 int /*<<< orphan*/  IFM_AVALID ; 
 int IFM_ETHER ; 
 int IFM_FDX ; 
 int IFM_HDX ; 
 int IFM_NONE ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct dc_softc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct mii_softc *sc)
{
	struct mii_data *mii = sc->mii_pdata;
	int anlpar, tstat;
	struct dc_softc		*dc_sc;

	dc_sc = FUNC6(mii->mii_ifp);

	mii->mii_media_status = IFM_AVALID;
	mii->mii_media_active = IFM_ETHER;

	if ((FUNC5(mii->mii_ifp) & IFF_UP) == 0)
		return;

	tstat = FUNC0(dc_sc, DC_10BTSTAT);
	if (!(tstat & DC_TSTAT_LS10) || !(tstat & DC_TSTAT_LS100))
		mii->mii_media_status |= IFM_ACTIVE;

	if (FUNC0(dc_sc, DC_10BTCTRL) & DC_TCTL_AUTONEGENBL) {
		/* Erg, still trying, I guess... */
		if ((tstat & DC_TSTAT_ANEGSTAT) != DC_ASTAT_AUTONEGCMP) {
			if ((FUNC3(dc_sc) || FUNC4(dc_sc)) &&
			    (tstat & DC_TSTAT_ANEGSTAT) == DC_ASTAT_DISABLE)
				goto skip;
			mii->mii_media_active |= IFM_NONE;
			return;
		}

		if (tstat & DC_TSTAT_LP_CAN_NWAY) {
			anlpar = tstat >> 16;
			if (anlpar & ANLPAR_TX_FD &&
			    sc->mii_capabilities & BMSR_100TXFDX)
				mii->mii_media_active |= IFM_100_TX | IFM_FDX;
			else if (anlpar & ANLPAR_T4 &&
			    sc->mii_capabilities & BMSR_100T4)
				mii->mii_media_active |= IFM_100_T4 | IFM_HDX;
			else if (anlpar & ANLPAR_TX &&
			    sc->mii_capabilities & BMSR_100TXHDX)
				mii->mii_media_active |= IFM_100_TX | IFM_HDX;
			else if (anlpar & ANLPAR_10_FD)
				mii->mii_media_active |= IFM_10_T | IFM_FDX;
			else if (anlpar & ANLPAR_10)
				mii->mii_media_active |= IFM_10_T | IFM_HDX;
			else
				mii->mii_media_active |= IFM_NONE;
			if (FUNC2(dc_sc))
				FUNC1(dc_sc, DC_10BTCTRL,
				    DC_TCTL_AUTONEGENBL);
			return;
		}

		/*
		 * If the other side doesn't support NWAY, then the
		 * best we can do is determine if we have a 10Mbps or
		 * 100Mbps link.  There's no way to know if the link
		 * is full or half duplex, so we default to half duplex
		 * and hope that the user is clever enough to manually
		 * change the media settings if we're wrong.
		 */
		if (!(tstat & DC_TSTAT_LS100))
			mii->mii_media_active |= IFM_100_TX | IFM_HDX;
		else if (!(tstat & DC_TSTAT_LS10))
			mii->mii_media_active |= IFM_10_T | IFM_HDX;
		else
			mii->mii_media_active |= IFM_NONE;
		if (FUNC2(dc_sc))
			FUNC1(dc_sc, DC_10BTCTRL, DC_TCTL_AUTONEGENBL);
		return;
	}

skip:
	if (FUNC0(dc_sc, DC_NETCFG) & DC_NETCFG_SPEEDSEL)
		mii->mii_media_active |= IFM_10_T;
	else
		mii->mii_media_active |= IFM_100_TX;
	if (FUNC0(dc_sc, DC_NETCFG) & DC_NETCFG_FULLDUPLEX)
		mii->mii_media_active |= IFM_FDX;
	else
		mii->mii_media_active |= IFM_HDX;
}
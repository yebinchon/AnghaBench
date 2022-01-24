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
struct sfxge_softc {int /*<<< orphan*/  enp; int /*<<< orphan*/  media; } ;
typedef  size_t efx_phy_media_type_t ;
typedef  int efx_phy_cap_type_t ;
typedef  size_t efx_link_mode_t ;

/* Variables and functions */
 size_t EFX_LINK_10HDX ; 
 size_t EFX_LINK_NMODES ; 
 int EFX_PHY_CAP_AN ; 
 int EFX_PHY_CAP_INVALID ; 
 int /*<<< orphan*/  EFX_PHY_CAP_PERM ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int IFM_ETH_RXPAUSE ; 
 int IFM_ETH_TXPAUSE ; 
 int /*<<< orphan*/  IFM_IMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int** sfxge_link_mode ; 
 int FUNC9 (size_t) ; 
 int /*<<< orphan*/  sfxge_media_change ; 
 int /*<<< orphan*/  sfxge_media_status ; 

int FUNC10(struct sfxge_softc *sc)
{
	efx_phy_media_type_t medium_type;
	uint32_t cap_mask, mode_cap_mask;
	efx_link_mode_t mode;
	efx_phy_cap_type_t phy_cap;
	int mode_ifm, best_mode_ifm = 0;
	int rc;

	/*
	 * We need port state to initialise the ifmedia list.
	 * It requires initialized NIC what is already done in
	 * sfxge_create() when resources are estimated.
	 */
	if ((rc = FUNC1(sc->enp)) != 0)
		goto out1;
	if ((rc = FUNC5(sc->enp)) != 0)
		goto out2;

	/*
	 * Register ifconfig callbacks for querying and setting the
	 * link mode and link status.
	 */
	FUNC7(&sc->media, IFM_IMASK, sfxge_media_change,
	    sfxge_media_status);

	/*
	 * Map firmware medium type and capabilities to ifmedia types.
	 * ifmedia does not distinguish between forcing the link mode
	 * and disabling auto-negotiation.  1000BASE-T and 10GBASE-T
	 * require AN even if only one link mode is enabled, and for
	 * 100BASE-TX it is useful even if the link mode is forced.
	 * Therefore we never disable auto-negotiation.
	 *
	 * Also enable and advertise flow control by default.
	 */

	FUNC3(sc->enp, &medium_type);
	FUNC2(sc->enp, EFX_PHY_CAP_PERM, &cap_mask);

	for (mode = EFX_LINK_10HDX; mode < EFX_LINK_NMODES; mode++) {
		phy_cap = FUNC9(mode);
		if (phy_cap == EFX_PHY_CAP_INVALID)
			continue;

		mode_cap_mask = (1 << phy_cap);
		mode_ifm = sfxge_link_mode[medium_type][mode];

		if ((cap_mask & mode_cap_mask) && mode_ifm) {
			/* No flow-control */
			FUNC6(&sc->media, mode_ifm, 0, NULL);

#ifdef SFXGE_HAVE_PAUSE_MEDIAOPTS
			/* Respond-only.  If using AN, we implicitly
			 * offer symmetric as well, but that doesn't
			 * mean we *have* to generate pause frames.
			 */
			mode_ifm |= IFM_ETH_RXPAUSE;
			ifmedia_add(&sc->media, mode_ifm, 0, NULL);

			/* Symmetric */
			mode_ifm |= IFM_ETH_TXPAUSE;
			ifmedia_add(&sc->media, mode_ifm, 0, NULL);
#endif

			/* Link modes are numbered in order of speed,
			 * so assume the last one available is the best.
			 */
			best_mode_ifm = mode_ifm;
		}
	}

	if (cap_mask & (1 << EFX_PHY_CAP_AN)) {
		/* Add autoselect mode. */
		mode_ifm = IFM_ETHER | IFM_AUTO;
		FUNC6(&sc->media, mode_ifm, 0, NULL);
		best_mode_ifm = mode_ifm;
	}

	if (best_mode_ifm != 0)
		FUNC8(&sc->media, best_mode_ifm);

	/* Now discard port state until interface is started. */
	FUNC4(sc->enp);
out2:
	FUNC0(sc->enp);
out1:
	return (rc);
}
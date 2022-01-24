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
struct mii_data {int dummy; } ;
struct bge_softc {int bge_flags; scalar_t__ bge_asicrev; int /*<<< orphan*/  bge_stat_ch; int /*<<< orphan*/  bge_link_evt; int /*<<< orphan*/  bge_ifp; int /*<<< orphan*/  bge_link; int /*<<< orphan*/  bge_miibus; } ;

/* Variables and functions */
 scalar_t__ BGE_ASICREV_BCM5700 ; 
 int BGE_FLAG_5788 ; 
 int BGE_FLAG_TBI ; 
 int /*<<< orphan*/  BGE_HCCMODE_COAL_NOW ; 
 int /*<<< orphan*/  BGE_HCC_MODE ; 
 scalar_t__ FUNC0 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bge_softc*) ; 
 int /*<<< orphan*/  BGE_MISC_LOCAL_CTL ; 
 int /*<<< orphan*/  BGE_MLC_INTR_SET ; 
 int /*<<< orphan*/  FUNC2 (struct bge_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  FUNC3 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bge_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct bge_softc*) ; 
 struct mii_data* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC13(void *xsc)
{
	struct bge_softc *sc = xsc;
	struct mii_data *mii = NULL;

	FUNC1(sc);

	/* Synchronize with possible callout reset/stop. */
	if (FUNC8(&sc->bge_stat_ch) ||
	    !FUNC7(&sc->bge_stat_ch))
		return;

	if (FUNC0(sc))
		FUNC5(sc);
	else
		FUNC4(sc);

	/* XXX Add APE heartbeat check here? */

	if ((sc->bge_flags & BGE_FLAG_TBI) == 0) {
		mii = FUNC10(sc->bge_miibus);
		/*
		 * Do not touch PHY if we have link up. This could break
		 * IPMI/ASF mode or produce extra input errors
		 * (extra errors was reported for bcm5701 & bcm5704).
		 */
		if (!sc->bge_link)
			FUNC12(mii);
	} else {
		/*
		 * Since in TBI mode auto-polling can't be used we should poll
		 * link status manually. Here we register pending link event
		 * and trigger interrupt.
		 */
#ifdef DEVICE_POLLING
		/* In polling mode we poll link state in bge_poll(). */
		if (!(if_getcapenable(sc->bge_ifp) & IFCAP_POLLING))
#endif
		{
		sc->bge_link_evt++;
		if (sc->bge_asicrev == BGE_ASICREV_BCM5700 ||
		    sc->bge_flags & BGE_FLAG_5788)
			FUNC2(sc, BGE_MISC_LOCAL_CTL, BGE_MLC_INTR_SET);
		else
			FUNC2(sc, BGE_HCC_MODE, BGE_HCCMODE_COAL_NOW);
		}
	}

	FUNC3(sc);
	FUNC6(sc);

	FUNC9(&sc->bge_stat_ch, hz, bge_tick, sc);
}
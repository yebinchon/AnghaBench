#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ifnet {struct an_softc* if_softc; } ;
struct an_ltv_genconfig {int an_opmode; int an_len; int* an_rates; void* an_type; } ;
struct TYPE_4__ {TYPE_1__* ifm_cur; } ;
struct an_softc {int an_tx_rate; struct an_ltv_genconfig an_config; TYPE_2__ an_ifmedia; } ;
struct an_ltv_gen {int dummy; } ;
struct TYPE_3__ {int ifm_media; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct an_softc*) ; 
 int AN_OPMODE_INFRASTRUCTURE_STATION ; 
 void* AN_RID_GENCONFIG ; 
 int /*<<< orphan*/  FUNC1 (struct an_softc*) ; 
 int IFM_IEEE80211_ADHOC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct an_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct an_softc*,struct an_ltv_gen*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct ifnet *ifp)
{
	struct an_softc *sc = ifp->if_softc;
	struct an_ltv_genconfig	*cfg;
	int otype = sc->an_config.an_opmode;
	int orate = sc->an_tx_rate;

	FUNC0(sc);
	sc->an_tx_rate = FUNC6(
		FUNC2(sc->an_ifmedia.ifm_cur->ifm_media));
	if (sc->an_tx_rate < 0)
		sc->an_tx_rate = 0;

	if (orate != sc->an_tx_rate) {
		/* Read the current configuration */
		sc->an_config.an_type = AN_RID_GENCONFIG;
		sc->an_config.an_len = sizeof(struct an_ltv_genconfig);
		FUNC4(sc, (struct an_ltv_gen *)&sc->an_config);
		cfg = &sc->an_config;

		/* clear other rates and set the only one we want */
		FUNC5(cfg->an_rates, sizeof(cfg->an_rates));
		cfg->an_rates[0] = sc->an_tx_rate;

		/* Save the new rate */
		sc->an_config.an_type = AN_RID_GENCONFIG;
		sc->an_config.an_len = sizeof(struct an_ltv_genconfig);
	}

	if ((sc->an_ifmedia.ifm_cur->ifm_media & IFM_IEEE80211_ADHOC) != 0)
		sc->an_config.an_opmode &= ~AN_OPMODE_INFRASTRUCTURE_STATION;
	else
		sc->an_config.an_opmode |= AN_OPMODE_INFRASTRUCTURE_STATION;

	if (otype != sc->an_config.an_opmode ||
	    orate != sc->an_tx_rate)
		FUNC3(sc);
	FUNC1(sc);

	return(0);
}
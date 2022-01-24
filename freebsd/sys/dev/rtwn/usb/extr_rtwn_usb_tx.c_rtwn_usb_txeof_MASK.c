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
struct rtwn_softc {scalar_t__ sc_ratectl; scalar_t__ sc_tx_n_active; int sc_tx_timer; scalar_t__ qfullmsk; } ;
struct rtwn_usb_softc {int /*<<< orphan*/  uc_tx_pending; int /*<<< orphan*/  uc_tx_active; int /*<<< orphan*/  uc_tx_inactive; struct rtwn_softc uc_sc; } ;
struct rtwn_data {int /*<<< orphan*/ * m; int /*<<< orphan*/ * ni; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 scalar_t__ RTWN_RATECTL_NET80211 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct rtwn_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static void
FUNC4(struct rtwn_usb_softc *uc, struct rtwn_data *data, int status)
{
	struct rtwn_softc *sc = &uc->uc_sc;

	FUNC0(sc);

	if (data->ni != NULL)	/* not a beacon frame */
		FUNC3(data->ni, data->m, status);

	if (sc->sc_ratectl != RTWN_RATECTL_NET80211)
		if (sc->sc_tx_n_active > 0)
			sc->sc_tx_n_active--;

	data->ni = NULL;
	data->m = NULL;

	FUNC2(&uc->uc_tx_inactive, data, next);
	sc->qfullmsk = 0;
#ifndef D4054
	if (FUNC1(&uc->uc_tx_active) && FUNC1(&uc->uc_tx_pending))
		sc->sc_tx_timer = 0;
	else
		sc->sc_tx_timer = 5;
#endif
}
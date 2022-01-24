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
struct ieee80211_channel {int dummy; } ;
struct ath_spectral_state {int /*<<< orphan*/  spectral_state; scalar_t__ spectral_enable_after_reset; } ;
struct ath_softc {int sc_dospectral; int /*<<< orphan*/  sc_ah; struct ath_spectral_state* sc_spectral; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(struct ath_softc *sc, struct ieee80211_channel *ch)
{
	struct ath_spectral_state *ss = sc->sc_spectral;

	/* Default to disable spectral PHY reporting */
	sc->sc_dospectral = 0;

	if (ss == NULL)
		return (0);

	if (ss->spectral_enable_after_reset) {
		FUNC0(sc->sc_ah,
		    &ss->spectral_state);
		(void) FUNC1(sc->sc_ah);
		sc->sc_dospectral = 1;
	}
	return (0);
}
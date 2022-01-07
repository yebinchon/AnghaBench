
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;
struct ath_spectral_state {int spectral_state; scalar_t__ spectral_enable_after_reset; } ;
struct ath_softc {int sc_dospectral; int sc_ah; struct ath_spectral_state* sc_spectral; } ;


 int ath_hal_spectral_configure (int ,int *) ;
 int ath_hal_spectral_start (int ) ;

int
ath_spectral_enable(struct ath_softc *sc, struct ieee80211_channel *ch)
{
 struct ath_spectral_state *ss = sc->sc_spectral;


 sc->sc_dospectral = 0;

 if (ss == ((void*)0))
  return (0);

 if (ss->spectral_enable_after_reset) {
  ath_hal_spectral_configure(sc->sc_ah,
      &ss->spectral_state);
  (void) ath_hal_spectral_start(sc->sc_ah);
  sc->sc_dospectral = 1;
 }
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpi_vap {scalar_t__ wv_gtk; } ;
struct ieee80211com {int ic_sta; } ;
struct wpi_softc {struct ieee80211com sc_ic; } ;


 int WPI_NT_LOCK (struct wpi_softc*) ;
 int WPI_NT_UNLOCK (struct wpi_softc*) ;
 int ieee80211_crypto_reload_keys (struct ieee80211com*) ;
 int ieee80211_iterate_nodes (int *,int ,struct wpi_softc*) ;
 int wpi_restore_node ;

__attribute__((used)) static void
wpi_restore_node_table(struct wpi_softc *sc, struct wpi_vap *wvp)
{
 struct ieee80211com *ic = &sc->sc_ic;


 WPI_NT_LOCK(sc);
 wvp->wv_gtk = 0;
 WPI_NT_UNLOCK(sc);

 ieee80211_iterate_nodes(&ic->ic_sta, wpi_restore_node, sc);
 ieee80211_crypto_reload_keys(ic);
}

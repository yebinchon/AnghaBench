
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_flags; int ic_regdomain; int ic_curchan; } ;
struct mwl_softc {struct mwl_hal* sc_mh; int sc_txantenna; int sc_rxantenna; struct ieee80211com sc_ic; } ;
struct mwl_hal {int dummy; } ;


 int IEEE80211_F_BURST ;
 int IEEE80211_F_WME ;
 int WL_ANTENNATYPE_RX ;
 int WL_ANTENNATYPE_TX ;
 int WL_AUTO_PREAMBLE ;
 int mwl_chan_set (struct mwl_softc*,int ) ;
 int mwl_hal_setaggampduratemode (struct mwl_hal*,int,int) ;
 int mwl_hal_setantenna (struct mwl_hal*,int ,int ) ;
 int mwl_hal_setcfend (struct mwl_hal*,int ) ;
 int mwl_hal_setoptimizationlevel (struct mwl_hal*,int) ;
 int mwl_hal_setradio (struct mwl_hal*,int,int ) ;
 int mwl_hal_setrateadaptmode (struct mwl_hal*,int ) ;
 int mwl_hal_setregioncode (struct mwl_hal*,int ) ;
 int mwl_hal_setwmm (struct mwl_hal*,int) ;
 int mwl_map2regioncode (int *) ;

__attribute__((used)) static int
mwl_hal_reset(struct mwl_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct mwl_hal *mh = sc->sc_mh;

 mwl_hal_setantenna(mh, WL_ANTENNATYPE_RX, sc->sc_rxantenna);
 mwl_hal_setantenna(mh, WL_ANTENNATYPE_TX, sc->sc_txantenna);
 mwl_hal_setradio(mh, 1, WL_AUTO_PREAMBLE);
 mwl_hal_setwmm(sc->sc_mh, (ic->ic_flags & IEEE80211_F_WME) != 0);
 mwl_chan_set(sc, ic->ic_curchan);

 mwl_hal_setrateadaptmode(mh, 0);
 mwl_hal_setoptimizationlevel(mh,
     (ic->ic_flags & IEEE80211_F_BURST) != 0);

 mwl_hal_setregioncode(mh, mwl_map2regioncode(&ic->ic_regdomain));

 mwl_hal_setaggampduratemode(mh, 1, 80);
 mwl_hal_setcfend(mh, 0);

 return 1;
}

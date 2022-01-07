
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char location; char* isocc; int country; int regdomain; } ;
struct ieee80211com {scalar_t__ ic_nchans; TYPE_1__ ic_regdomain; int ic_channels; } ;
struct mwl_softc {struct ieee80211com sc_ic; } ;


 int CTRY_DEFAULT ;
 int EIO ;
 int IEEE80211_CHAN_MAX ;
 int SKU_DEBUG ;
 int getchannels (struct mwl_softc*,int ,scalar_t__*,int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int
mwl_getchannels(struct mwl_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;






 memset(ic->ic_channels, 0, sizeof(ic->ic_channels));
 ic->ic_nchans = 0;
 getchannels(sc, IEEE80211_CHAN_MAX, &ic->ic_nchans, ic->ic_channels);

 ic->ic_regdomain.regdomain = SKU_DEBUG;
 ic->ic_regdomain.country = CTRY_DEFAULT;
 ic->ic_regdomain.location = 'I';
 ic->ic_regdomain.isocc[0] = ' ';
 ic->ic_regdomain.isocc[1] = ' ';
 return (ic->ic_nchans == 0 ? EIO : 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_softc {int dummy; } ;
struct ieee80211com {int ic_curchan; struct mwl_softc* ic_softc; } ;


 int mwl_chan_set (struct mwl_softc*,int ) ;

__attribute__((used)) static void
mwl_set_channel(struct ieee80211com *ic)
{
 struct mwl_softc *sc = ic->ic_softc;

 (void) mwl_chan_set(sc, ic->ic_curchan);
}

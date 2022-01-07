
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2560_tx_data {int * ni; int m; int map; } ;
struct TYPE_2__ {size_t next; int data_dmat; struct rt2560_tx_data* data; } ;
struct ieee80211com {scalar_t__ ic_opmode; } ;
struct rt2560_softc {TYPE_1__ bcnq; struct ieee80211com sc_ic; } ;


 int BUS_DMASYNC_POSTWRITE ;
 int DPRINTFN (struct rt2560_softc*,int,char*,char*) ;
 scalar_t__ IEEE80211_M_HOSTAP ;
 scalar_t__ IEEE80211_M_IBSS ;
 scalar_t__ IEEE80211_M_MBSS ;
 int RT2560_BEACON_RING_COUNT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int ieee80211_beacon_update (int *,int ,int) ;
 int rt2560_tx_bcn (struct rt2560_softc*,int ,int *) ;

__attribute__((used)) static void
rt2560_beacon_expire(struct rt2560_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct rt2560_tx_data *data;

 if (ic->ic_opmode != IEEE80211_M_IBSS &&
     ic->ic_opmode != IEEE80211_M_HOSTAP &&
     ic->ic_opmode != IEEE80211_M_MBSS)
  return;

 data = &sc->bcnq.data[sc->bcnq.next];



 if (data->ni == ((void*)0))
         return;

 bus_dmamap_sync(sc->bcnq.data_dmat, data->map, BUS_DMASYNC_POSTWRITE);
 bus_dmamap_unload(sc->bcnq.data_dmat, data->map);


 ieee80211_beacon_update(data->ni, data->m, 1);

 rt2560_tx_bcn(sc, data->m, data->ni);

 DPRINTFN(sc, 15, "%s", "beacon expired\n");

 sc->bcnq.next = (sc->bcnq.next + 1) % RT2560_BEACON_RING_COUNT;
}

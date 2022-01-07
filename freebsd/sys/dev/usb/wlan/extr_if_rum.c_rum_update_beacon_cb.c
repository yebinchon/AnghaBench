
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union sec_param {struct ieee80211vap* vap; } ;
typedef int uint8_t ;
struct rum_softc {int dummy; } ;
struct ieee80211vap {int dummy; } ;


 int rum_set_beacon (struct rum_softc*,struct ieee80211vap*) ;

__attribute__((used)) static void
rum_update_beacon_cb(struct rum_softc *sc, union sec_param *data,
    uint8_t rvp_id)
{
 struct ieee80211vap *vap = data->vap;

 rum_set_beacon(sc, vap);
}

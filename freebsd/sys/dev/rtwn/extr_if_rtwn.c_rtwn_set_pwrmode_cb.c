
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union sec_param {int dummy; } sec_param ;
struct rtwn_softc {TYPE_1__** vaps; } ;
struct ieee80211vap {int dummy; } ;
struct TYPE_2__ {struct ieee80211vap vap; } ;


 int rtwn_set_pwrmode (struct rtwn_softc*,struct ieee80211vap*,int) ;

__attribute__((used)) static void
rtwn_set_pwrmode_cb(struct rtwn_softc *sc, union sec_param *data)
{
 struct ieee80211vap *vap = &sc->vaps[0]->vap;

 if (vap != ((void*)0))
  rtwn_set_pwrmode(sc, vap, 1);
}

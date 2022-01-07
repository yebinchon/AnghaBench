
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ic_caps; } ;
struct rtwn_softc {TYPE_1__ sc_ic; } ;


 int IEEE80211_C_PMGT ;

__attribute__((used)) static void
r92cu_adj_devcaps(struct rtwn_softc *sc)
{

 sc->sc_ic.ic_caps &= ~IEEE80211_C_PMGT;
}

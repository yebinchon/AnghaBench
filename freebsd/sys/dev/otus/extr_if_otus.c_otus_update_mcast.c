
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_softc {int dummy; } ;
struct ieee80211com {struct otus_softc* ic_softc; } ;


 int otus_set_multi (struct otus_softc*) ;

__attribute__((used)) static void
otus_update_mcast(struct ieee80211com *ic)
{
 struct otus_softc *sc = ic->ic_softc;

 (void) otus_set_multi(sc);
}

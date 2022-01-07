
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otus_softc {int dummy; } ;
struct ieee80211com {struct otus_softc* ic_softc; } ;


 int OTUS_LOCK (struct otus_softc*) ;
 int OTUS_UNLOCK (struct otus_softc*) ;
 int otus_updateedca_locked (struct otus_softc*) ;

__attribute__((used)) static int
otus_updateedca(struct ieee80211com *ic)
{
 struct otus_softc *sc = ic->ic_softc;

 OTUS_LOCK(sc);






 otus_updateedca_locked(sc);
 OTUS_UNLOCK(sc);
 return (0);
}

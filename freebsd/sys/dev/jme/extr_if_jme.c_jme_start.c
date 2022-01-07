
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_softc {int dummy; } ;
struct ifnet {struct jme_softc* if_softc; } ;


 int JME_LOCK (struct jme_softc*) ;
 int JME_UNLOCK (struct jme_softc*) ;
 int jme_start_locked (struct ifnet*) ;

__attribute__((used)) static void
jme_start(struct ifnet *ifp)
{
        struct jme_softc *sc;

 sc = ifp->if_softc;
 JME_LOCK(sc);
 jme_start_locked(ifp);
 JME_UNLOCK(sc);
}

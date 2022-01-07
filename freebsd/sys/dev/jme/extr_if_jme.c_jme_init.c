
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_softc {int dummy; } ;


 int JME_LOCK (struct jme_softc*) ;
 int JME_UNLOCK (struct jme_softc*) ;
 int jme_init_locked (struct jme_softc*) ;

__attribute__((used)) static void
jme_init(void *xsc)
{
 struct jme_softc *sc;

 sc = (struct jme_softc *)xsc;
 JME_LOCK(sc);
 jme_init_locked(sc);
 JME_UNLOCK(sc);
}

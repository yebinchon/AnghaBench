
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jme_softc {int dummy; } ;
typedef int device_t ;


 int JME_LOCK (struct jme_softc*) ;
 int JME_UNLOCK (struct jme_softc*) ;
 struct jme_softc* device_get_softc (int ) ;
 int jme_setwol (struct jme_softc*) ;
 int jme_stop (struct jme_softc*) ;

__attribute__((used)) static int
jme_suspend(device_t dev)
{
 struct jme_softc *sc;

 sc = device_get_softc(dev);

 JME_LOCK(sc);
 jme_stop(sc);
 jme_setwol(sc);
 JME_UNLOCK(sc);

 return (0);
}

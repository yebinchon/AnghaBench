
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2661_softc {int dummy; } ;


 int RAL_LOCK (struct rt2661_softc*) ;
 int RAL_UNLOCK (struct rt2661_softc*) ;
 int rt2661_stop_locked (struct rt2661_softc*) ;

void
rt2661_stop(void *priv)
{
 struct rt2661_softc *sc = priv;

 RAL_LOCK(sc);
 rt2661_stop_locked(sc);
 RAL_UNLOCK(sc);
}

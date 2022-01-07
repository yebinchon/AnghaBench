
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2560_softc {int dummy; } ;


 int RAL_LOCK (struct rt2560_softc*) ;
 int RAL_UNLOCK (struct rt2560_softc*) ;
 int rt2560_stop_locked (struct rt2560_softc*) ;

void
rt2560_stop(void *arg)
{
 struct rt2560_softc *sc = arg;

 RAL_LOCK(sc);
 rt2560_stop_locked(sc);
 RAL_UNLOCK(sc);
}

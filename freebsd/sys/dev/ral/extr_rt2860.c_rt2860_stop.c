
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2860_softc {int dummy; } ;


 int RAL_LOCK (struct rt2860_softc*) ;
 int RAL_UNLOCK (struct rt2860_softc*) ;
 int rt2860_stop_locked (struct rt2860_softc*) ;

__attribute__((used)) static void
rt2860_stop(void *arg)
{
 struct rt2860_softc *sc = arg;

 RAL_LOCK(sc);
 rt2860_stop_locked(sc);
 RAL_UNLOCK(sc);
}

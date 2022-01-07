
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_softc {int dummy; } ;


 int RT_SOFTC_LOCK (struct rt_softc*) ;
 int RT_SOFTC_UNLOCK (struct rt_softc*) ;
 int rt_stop_locked (struct rt_softc*) ;

__attribute__((used)) static void
rt_stop(void *priv)
{
 struct rt_softc *sc;

 sc = priv;
 RT_SOFTC_LOCK(sc);
 rt_stop_locked(sc);
 RT_SOFTC_UNLOCK(sc);
}

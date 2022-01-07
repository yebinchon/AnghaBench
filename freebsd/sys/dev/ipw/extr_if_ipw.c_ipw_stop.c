
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_softc {int dummy; } ;


 int IPW_LOCK (struct ipw_softc*) ;
 int IPW_UNLOCK (struct ipw_softc*) ;
 int ipw_stop_locked (struct ipw_softc*) ;

__attribute__((used)) static void
ipw_stop(void *priv)
{
 struct ipw_softc *sc = priv;

 IPW_LOCK(sc);
 ipw_stop_locked(sc);
 IPW_UNLOCK(sc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rl_softc {int dummy; } ;
struct ifnet {struct rl_softc* if_softc; } ;


 int RL_LOCK (struct rl_softc*) ;
 int RL_UNLOCK (struct rl_softc*) ;
 int re_start_locked (struct ifnet*) ;

__attribute__((used)) static void
re_start(struct ifnet *ifp)
{
 struct rl_softc *sc;

 sc = ifp->if_softc;
 RL_LOCK(sc);
 re_start_locked(ifp);
 RL_UNLOCK(sc);
}

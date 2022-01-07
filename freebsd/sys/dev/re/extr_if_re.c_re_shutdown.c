
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rl_softc {TYPE_1__* rl_ifp; } ;
typedef int device_t ;
struct TYPE_2__ {int if_flags; } ;


 int IFF_UP ;
 int RL_LOCK (struct rl_softc*) ;
 int RL_UNLOCK (struct rl_softc*) ;
 struct rl_softc* device_get_softc (int ) ;
 int re_setwol (struct rl_softc*) ;
 int re_stop (struct rl_softc*) ;

__attribute__((used)) static int
re_shutdown(device_t dev)
{
 struct rl_softc *sc;

 sc = device_get_softc(dev);

 RL_LOCK(sc);
 re_stop(sc);





 sc->rl_ifp->if_flags &= ~IFF_UP;
 re_setwol(sc);
 RL_UNLOCK(sc);

 return (0);
}

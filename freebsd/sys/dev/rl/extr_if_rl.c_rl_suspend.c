
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rl_softc {int suspended; } ;
typedef int device_t ;


 int RL_LOCK (struct rl_softc*) ;
 int RL_UNLOCK (struct rl_softc*) ;
 struct rl_softc* device_get_softc (int ) ;
 int rl_setwol (struct rl_softc*) ;
 int rl_stop (struct rl_softc*) ;

__attribute__((used)) static int
rl_suspend(device_t dev)
{
 struct rl_softc *sc;

 sc = device_get_softc(dev);

 RL_LOCK(sc);
 rl_stop(sc);
 rl_setwol(sc);
 sc->suspended = 1;
 RL_UNLOCK(sc);

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rl_softc {int dummy; } ;


 int RL_LOCK (struct rl_softc*) ;
 int RL_UNLOCK (struct rl_softc*) ;
 int re_init_locked (struct rl_softc*) ;

__attribute__((used)) static void
re_init(void *xsc)
{
 struct rl_softc *sc = xsc;

 RL_LOCK(sc);
 re_init_locked(sc);
 RL_UNLOCK(sc);
}

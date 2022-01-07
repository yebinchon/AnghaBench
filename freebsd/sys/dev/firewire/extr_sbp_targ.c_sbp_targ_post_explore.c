
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp_targ_softc {int sim; int flags; } ;


 int F_FREEZED ;
 int TRUE ;
 int xpt_release_simq (int ,int ) ;

__attribute__((used)) static void
sbp_targ_post_explore(void *arg)
{
 struct sbp_targ_softc *sc;

 sc = (struct sbp_targ_softc *)arg;
 sc->flags &= ~F_FREEZED;
 xpt_release_simq(sc->sim, TRUE);
 return;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct atp_softc {int sc_state; int sc_callout; } ;
struct TYPE_4__ {int flags; scalar_t__ age; scalar_t__ type; } ;
typedef TYPE_1__ atp_stroke_t ;


 int ATP_DOUBLE_TAP_DRAG ;
 scalar_t__ ATP_STROKE_SLIDE ;
 int ATP_ZOMBIES_EXIST ;
 int ATP_ZOMBIE_STROKE_REAP_INTERVAL ;
 int ATSF_ZOMBIE ;
 int atp_free_stroke (struct atp_softc*,TYPE_1__*) ;
 int atp_reap_sibling_zombies ;
 scalar_t__ atp_stroke_maturity_threshold ;
 int callout_reset (int *,int ,int ,struct atp_softc*) ;

__attribute__((used)) static void
atp_terminate_stroke(struct atp_softc *sc, atp_stroke_t *strokep)
{
 if (strokep->flags & ATSF_ZOMBIE)
  return;


 if (strokep->age <= atp_stroke_maturity_threshold) {
  atp_free_stroke(sc, strokep);
  return;
 }

 strokep->flags |= ATSF_ZOMBIE;
 sc->sc_state |= ATP_ZOMBIES_EXIST;

 callout_reset(&sc->sc_callout, ATP_ZOMBIE_STROKE_REAP_INTERVAL,
     atp_reap_sibling_zombies, sc);





 if (strokep->type == ATP_STROKE_SLIDE)
  sc->sc_state &= ~ATP_DOUBLE_TAP_DRAG;
}

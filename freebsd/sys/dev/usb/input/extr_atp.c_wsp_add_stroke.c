
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int y; int x; } ;
typedef TYPE_1__ wsp_finger_t ;
struct atp_softc {int sc_n_strokes; int sc_state; } ;
struct TYPE_6__ {int matched; int age; int y; int x; int ctime; int type; } ;
typedef TYPE_2__ atp_stroke_t ;


 int ATP_DOUBLE_TAP_DRAG ;
 int ATP_LLEVEL_INFO ;
 int ATP_STROKE_TOUCH ;
 int DPRINTFN (int ,char*,int ,int ) ;
 TYPE_2__* atp_alloc_stroke (struct atp_softc*) ;
 int microtime (int *) ;

__attribute__((used)) static void
wsp_add_stroke(struct atp_softc *sc, const wsp_finger_t *fingerp)
{
 atp_stroke_t *strokep;

 strokep = atp_alloc_stroke(sc);
 if (strokep == ((void*)0))
  return;






 strokep->type = ATP_STROKE_TOUCH;
 strokep->matched = 1;
 microtime(&strokep->ctime);
 strokep->age = 1;
 strokep->x = fingerp->x;
 strokep->y = fingerp->y;


 if (sc->sc_n_strokes > 1)
  sc->sc_state &= ~ATP_DOUBLE_TAP_DRAG;

 DPRINTFN(ATP_LLEVEL_INFO, "[%d,%d]\n", strokep->x, strokep->y);
}

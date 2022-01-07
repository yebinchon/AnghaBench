
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int ;
struct atp_softc {int sc_n_strokes; int sc_state; } ;
struct TYPE_9__ {int cum; int loc; } ;
typedef TYPE_2__ fg_pspan ;
struct TYPE_11__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_10__ {int matched; int age; TYPE_4__ ctime; TYPE_1__* components; int y; int x; int type; } ;
typedef TYPE_3__ atp_stroke_t ;
struct TYPE_8__ {int matched; int loc; int max_cum_pressure; int cum_pressure; } ;


 int ATP_DOUBLE_TAP_DRAG ;
 int ATP_LLEVEL_INFO ;
 int ATP_STROKE_TOUCH ;
 int DPRINTFN (int ,char*,int ,int ,int ,unsigned long) ;
 size_t X ;
 size_t Y ;
 TYPE_3__* atp_alloc_stroke (struct atp_softc*) ;
 int microtime (TYPE_4__*) ;

__attribute__((used)) static void
fg_add_stroke(struct atp_softc *sc, const fg_pspan *pspan_x,
    const fg_pspan *pspan_y)
{
 atp_stroke_t *strokep;

 strokep = atp_alloc_stroke(sc);
 if (strokep == ((void*)0))
  return;






 strokep->type = ATP_STROKE_TOUCH;
 strokep->matched = 0;
 microtime(&strokep->ctime);
 strokep->age = 1;
 strokep->x = pspan_x->loc;
 strokep->y = pspan_y->loc;

 strokep->components[X].loc = pspan_x->loc;
 strokep->components[X].cum_pressure = pspan_x->cum;
 strokep->components[X].max_cum_pressure = pspan_x->cum;
 strokep->components[X].matched = 1;

 strokep->components[Y].loc = pspan_y->loc;
 strokep->components[Y].cum_pressure = pspan_y->cum;
 strokep->components[Y].max_cum_pressure = pspan_y->cum;
 strokep->components[Y].matched = 1;

 if (sc->sc_n_strokes > 1) {

  sc->sc_state &= ~ATP_DOUBLE_TAP_DRAG;
 }

 DPRINTFN(ATP_LLEVEL_INFO, "[%u,%u], time: %u,%ld\n",
     strokep->components[X].loc,
     strokep->components[Y].loc,
     (u_int)strokep->ctime.tv_sec,
     (unsigned long int)strokep->ctime.tv_usec);
}

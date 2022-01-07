
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {int status; void* ts; TYPE_5__* rndr; TYPE_4__* tsw; TYPE_2__* sc; } ;
typedef TYPE_3__ scr_stat ;
struct TYPE_20__ {int (* te_init ) (TYPE_3__*,void**,int ) ;scalar_t__ te_size; int (* te_default_attr ) (TYPE_3__*,int ,int ) ;int (* te_term ) (TYPE_3__*,void**) ;int te_renderer; } ;
typedef TYPE_4__ sc_term_sw_t ;
struct TYPE_21__ {int (* init ) (TYPE_3__*) ;} ;
typedef TYPE_5__ sc_rndr_sw_t ;
struct TYPE_18__ {TYPE_1__* adp; } ;
struct TYPE_17__ {int va_name; } ;


 int EINVAL ;
 int ENODEV ;
 int GRAPHICS_MODE ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int PIXEL_MODE ;
 int SC_NORM_ATTR ;
 int SC_NORM_REV_ATTR ;
 int SC_TE_COLD_INIT ;
 int SC_TE_WARM_INIT ;
 int free (void*,int ) ;
 void* malloc (scalar_t__,int ,int ) ;
 int sc_clear_screen (TYPE_3__*) ;
 scalar_t__ sc_malloc ;
 TYPE_5__* sc_render_match (TYPE_3__*,int ,int) ;
 TYPE_4__* sc_term_match (char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (TYPE_3__*,void**,int ) ;
 int stub2 (TYPE_3__*) ;
 int stub3 (TYPE_3__*,void**,int ) ;
 int stub4 (TYPE_3__*,void**) ;
 int stub5 (TYPE_3__*) ;
 int stub6 (TYPE_3__*,int ,int ) ;

int
sc_init_emulator(scr_stat *scp, char *name)
{
    sc_term_sw_t *sw;
    sc_rndr_sw_t *rndr;
    void *p;
    int error;

    if (name == ((void*)0))
 sw = scp->tsw;
    else
 sw = sc_term_match(name);
    if (sw == ((void*)0))
 return EINVAL;

    rndr = ((void*)0);
    if (strcmp(sw->te_renderer, "*") != 0) {
 rndr = sc_render_match(scp, sw->te_renderer,
          scp->status & (GRAPHICS_MODE | PIXEL_MODE));
    }
    if (rndr == ((void*)0)) {
 rndr = sc_render_match(scp, scp->sc->adp->va_name,
          scp->status & (GRAPHICS_MODE | PIXEL_MODE));
 if (rndr == ((void*)0))
     return ENODEV;
    }

    if (sw == scp->tsw) {
 error = (*sw->te_init)(scp, &scp->ts, SC_TE_WARM_INIT);
 scp->rndr = rndr;
 scp->rndr->init(scp);
 sc_clear_screen(scp);

 return error;
    }

    if (sc_malloc && (sw->te_size > 0))
 p = malloc(sw->te_size, M_DEVBUF, M_NOWAIT);
    else
 p = ((void*)0);
    error = (*sw->te_init)(scp, &p, SC_TE_COLD_INIT);
    if (error)
 return error;

    if (scp->tsw)
 (*scp->tsw->te_term)(scp, &scp->ts);
    if (scp->ts != ((void*)0))
 free(scp->ts, M_DEVBUF);
    scp->tsw = sw;
    scp->ts = p;
    scp->rndr = rndr;
    scp->rndr->init(scp);

    (*sw->te_default_attr)(scp, SC_NORM_ATTR, SC_NORM_REV_ATTR);
    sc_clear_screen(scp);

    return 0;
}

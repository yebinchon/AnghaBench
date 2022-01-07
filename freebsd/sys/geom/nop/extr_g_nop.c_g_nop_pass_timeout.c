
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_nop_softc {int sc_lock; int sc_head_delay; } ;
struct g_nop_delay {TYPE_2__* dl_bio; } ;
struct g_geom {struct g_nop_softc* softc; } ;
struct TYPE_4__ {TYPE_1__* bio_to; } ;
struct TYPE_3__ {struct g_geom* geom; } ;


 int TAILQ_REMOVE (int *,struct g_nop_delay*,int ) ;
 int dl_next ;
 int g_free (void*) ;
 int g_nop_pass (TYPE_2__*,struct g_geom*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
g_nop_pass_timeout(void *data)
{
 struct g_nop_softc *sc;
 struct g_geom *gp;
 struct g_nop_delay *gndelay;

 gndelay = (struct g_nop_delay *)data;

 gp = gndelay->dl_bio->bio_to->geom;
 sc = gp->softc;

 mtx_lock(&sc->sc_lock);
 TAILQ_REMOVE(&sc->sc_head_delay, gndelay, dl_next);
 mtx_unlock(&sc->sc_lock);

 g_nop_pass(gndelay->dl_bio, gp);

 g_free(data);
}

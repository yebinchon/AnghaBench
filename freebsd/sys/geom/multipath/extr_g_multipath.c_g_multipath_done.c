
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_multipath_softc {int sc_mtx; } ;
struct g_consumer {int index; int private; TYPE_1__* geom; } ;
struct bio {scalar_t__ bio_error; struct g_consumer* bio_from; } ;
struct TYPE_2__ {struct g_multipath_softc* softc; } ;


 scalar_t__ EIO ;
 scalar_t__ ENXIO ;
 int MP_LOST ;
 int MP_POSTED ;
 int M_NOWAIT ;
 int bioq_insert_tail (int *,struct bio*) ;
 int g_mpd ;
 int g_multipath_kt_state ;
 scalar_t__ g_post_event (int ,struct g_consumer*,int ,int *) ;
 int g_std_done (struct bio*) ;
 int gmtbq ;
 int gmtbq_mtx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (int *) ;

__attribute__((used)) static void
g_multipath_done(struct bio *bp)
{
 struct g_multipath_softc *sc;
 struct g_consumer *cp;
 uintptr_t *cnt;

 if (bp->bio_error == ENXIO || bp->bio_error == EIO) {
  mtx_lock(&gmtbq_mtx);
  bioq_insert_tail(&gmtbq, bp);
  mtx_unlock(&gmtbq_mtx);
  wakeup(&g_multipath_kt_state);
 } else {
  cp = bp->bio_from;
  sc = cp->geom->softc;
  cnt = (uintptr_t *)&cp->private;
  mtx_lock(&sc->sc_mtx);
  (*cnt)--;
  if (*cnt == 0 && (cp->index & MP_LOST)) {
   if (g_post_event(g_mpd, cp, M_NOWAIT, ((void*)0)) == 0)
    cp->index |= MP_POSTED;
   mtx_unlock(&sc->sc_mtx);
  } else
   mtx_unlock(&sc->sc_mtx);
  g_std_done(bp);
 }
}

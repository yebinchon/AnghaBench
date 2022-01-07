
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_uzip_softc {int wrkthr_flags; struct g_uzip_softc* last_buf; int last_mtx; int queue_mtx; struct g_uzip_softc* toc; TYPE_1__* dcp; int procp; int req_cached; int req_total; } ;
struct g_geom {int name; } ;
struct TYPE_2__ {int (* free ) (TYPE_1__*) ;} ;


 int DPRINTF (int ,char*) ;
 int GUZ_DBG_INFO ;
 int GUZ_EXITING ;
 int GUZ_SHUTDOWN ;
 int M_GEOM_UZIP ;
 int PRIBIO ;
 int free (struct g_uzip_softc*,int ) ;
 int hz ;
 int msleep (int ,int *,int ,char*,int) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (TYPE_1__*) ;
 int wakeup (struct g_uzip_softc*) ;

__attribute__((used)) static void
g_uzip_softc_free(struct g_uzip_softc *sc, struct g_geom *gp)
{

 if (gp != ((void*)0)) {
  DPRINTF(GUZ_DBG_INFO, ("%s: %d requests, %d cached\n",
      gp->name, sc->req_total, sc->req_cached));
 }

 mtx_lock(&sc->queue_mtx);
 sc->wrkthr_flags |= GUZ_SHUTDOWN;
 wakeup(sc);
 while (!(sc->wrkthr_flags & GUZ_EXITING)) {
  msleep(sc->procp, &sc->queue_mtx, PRIBIO, "guzfree",
      hz / 10);
 }
 mtx_unlock(&sc->queue_mtx);

 sc->dcp->free(sc->dcp);
 free(sc->toc, M_GEOM_UZIP);
 mtx_destroy(&sc->queue_mtx);
 mtx_destroy(&sc->last_mtx);
 free(sc->last_buf, M_GEOM_UZIP);
 free(sc, M_GEOM_UZIP);
}

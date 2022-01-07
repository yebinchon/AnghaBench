
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
struct g_spa {int spa_g_proc_run; int spa_g_stat_mtx; int spa_g_mtx; int * spa_g_devstat; int * spa_p; int spa_g_queue; int spa_g_proc_exiting; } ;
struct g_geom {struct g_spa* softc; } ;
struct g_class {int dummy; } ;


 int ENXIO ;
 int M_NVDIMM ;
 int PRIBIO ;
 int devstat_remove_entry (int *) ;
 int free (struct g_spa*,int ) ;
 int g_topology_assert () ;
 int g_wither_geom (struct g_geom*,int ) ;
 int msleep (int *,int *,int ,char*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (int *) ;

__attribute__((used)) static int
nvdimm_spa_g_destroy_geom(struct gctl_req *req, struct g_class *cp,
    struct g_geom *gp)
{
 struct g_spa *sc;

 sc = gp->softc;
 mtx_lock(&sc->spa_g_mtx);
 sc->spa_g_proc_run = 0;
 wakeup(&sc->spa_g_queue);
 while (!sc->spa_g_proc_exiting)
  msleep(&sc->spa_g_queue, &sc->spa_g_mtx, PRIBIO, "spa_e", 0);
 mtx_unlock(&sc->spa_g_mtx);
 g_topology_assert();
 g_wither_geom(gp, ENXIO);
 sc->spa_p = ((void*)0);
 if (sc->spa_g_devstat != ((void*)0)) {
  devstat_remove_entry(sc->spa_g_devstat);
  sc->spa_g_devstat = ((void*)0);
 }
 mtx_destroy(&sc->spa_g_mtx);
 mtx_destroy(&sc->spa_g_stat_mtx);
 free(sc, M_NVDIMM);
 return (0);
}

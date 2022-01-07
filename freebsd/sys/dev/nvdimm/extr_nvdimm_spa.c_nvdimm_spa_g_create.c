
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nvdimm_spa_dev {int spa_len; } ;
struct g_spa {int spa_g_proc_run; int spa_g_proc_exiting; int spa_g_devstat; TYPE_1__* spa_p; int spa_g_stat_mtx; int spa_g_mtx; int spa_g_proc; int spa_g_queue; struct nvdimm_spa_dev* dev; } ;
struct g_geom {struct g_spa* softc; } ;
struct TYPE_3__ {int flags; int sectorsize; int mediasize; } ;


 int DEVSTAT_ALL_SUPPORTED ;
 int DEVSTAT_PRIORITY_MAX ;
 int DEVSTAT_TYPE_DIRECT ;
 int DEV_BSIZE ;
 int G_PF_ACCEPT_UNMAPPED ;
 int G_PF_DIRECT_RECEIVE ;
 int G_PF_DIRECT_SEND ;
 int MTX_DEF ;
 int M_NVDIMM ;
 int M_WAITOK ;
 int M_ZERO ;
 int bioq_init (int *) ;
 int devstat_new_entry (char*,int,int ,int ,int ,int ) ;
 int free (struct g_spa*,int ) ;
 int g_error_provider (TYPE_1__*,int ) ;
 struct g_geom* g_new_geomf (int *,char*,char const*) ;
 TYPE_1__* g_new_providerf (struct g_geom*,char*,char const*) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int kproc_create (int ,struct g_spa*,int *,int ,int ,char*) ;
 struct g_spa* malloc (int,int ,int) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int nvdimm_spa_g_class ;
 int nvdimm_spa_g_thread ;
 int printf (char*,char const*,int) ;

__attribute__((used)) static struct g_geom *
nvdimm_spa_g_create(struct nvdimm_spa_dev *dev, const char *name)
{
 struct g_geom *gp;
 struct g_spa *sc;
 int error;

 gp = ((void*)0);
 sc = malloc(sizeof(struct g_spa), M_NVDIMM, M_WAITOK | M_ZERO);
 sc->dev = dev;
 bioq_init(&sc->spa_g_queue);
 mtx_init(&sc->spa_g_mtx, "spag", ((void*)0), MTX_DEF);
 mtx_init(&sc->spa_g_stat_mtx, "spagst", ((void*)0), MTX_DEF);
 sc->spa_g_proc_run = 1;
 sc->spa_g_proc_exiting = 0;
 error = kproc_create(nvdimm_spa_g_thread, sc, &sc->spa_g_proc, 0, 0,
     "g_spa");
 if (error != 0) {
  mtx_destroy(&sc->spa_g_mtx);
  mtx_destroy(&sc->spa_g_stat_mtx);
  free(sc, M_NVDIMM);
  printf("NVDIMM %s cannot create geom worker, error %d\n", name,
      error);
 } else {
  g_topology_lock();
  gp = g_new_geomf(&nvdimm_spa_g_class, "%s", name);
  gp->softc = sc;
  sc->spa_p = g_new_providerf(gp, "%s", name);
  sc->spa_p->mediasize = dev->spa_len;
  sc->spa_p->sectorsize = DEV_BSIZE;
  sc->spa_p->flags |= G_PF_DIRECT_SEND | G_PF_DIRECT_RECEIVE |
      G_PF_ACCEPT_UNMAPPED;
  g_error_provider(sc->spa_p, 0);
  sc->spa_g_devstat = devstat_new_entry("spa", -1, DEV_BSIZE,
      DEVSTAT_ALL_SUPPORTED, DEVSTAT_TYPE_DIRECT,
      DEVSTAT_PRIORITY_MAX);
  g_topology_unlock();
 }
 return (gp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gv_softc {int worker; int bqueue_mtx; int equeue_mtx; int config_mtx; int equeue; int volumes; int plexes; int subdisks; int drives; void* bqueue_up; void* bqueue_down; struct g_geom* geom; } ;
struct g_geom {struct gv_softc* softc; int start; int access; void* orphan; void* spoiled; } ;
struct g_class {int dummy; } ;
struct bio_queue_head {int dummy; } ;


 int G_T_TOPOLOGY ;
 int LIST_INIT (int *) ;
 int MTX_DEF ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int bioq_init (void*) ;
 void* g_malloc (int,int) ;
 struct g_geom* g_new_geomf (struct g_class*,char*) ;
 int g_trace (int ,char*,struct g_class*) ;
 int gv_access ;
 void* gv_orphan ;
 int gv_start ;
 int gv_worker ;
 int kproc_create (int ,struct gv_softc*,int *,int ,int ,char*) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static void
gv_init(struct g_class *mp)
{
 struct g_geom *gp;
 struct gv_softc *sc;

 g_trace(G_T_TOPOLOGY, "gv_init(%p)", mp);

 gp = g_new_geomf(mp, "VINUM");
 gp->spoiled = gv_orphan;
 gp->orphan = gv_orphan;
 gp->access = gv_access;
 gp->start = gv_start;
 gp->softc = g_malloc(sizeof(struct gv_softc), M_WAITOK | M_ZERO);
 sc = gp->softc;
 sc->geom = gp;
 sc->bqueue_down = g_malloc(sizeof(struct bio_queue_head),
     M_WAITOK | M_ZERO);
 sc->bqueue_up = g_malloc(sizeof(struct bio_queue_head),
     M_WAITOK | M_ZERO);
 bioq_init(sc->bqueue_down);
 bioq_init(sc->bqueue_up);
 LIST_INIT(&sc->drives);
 LIST_INIT(&sc->subdisks);
 LIST_INIT(&sc->plexes);
 LIST_INIT(&sc->volumes);
 TAILQ_INIT(&sc->equeue);
 mtx_init(&sc->config_mtx, "gv_config", ((void*)0), MTX_DEF);
 mtx_init(&sc->equeue_mtx, "gv_equeue", ((void*)0), MTX_DEF);
 mtx_init(&sc->bqueue_mtx, "gv_bqueue", ((void*)0), MTX_DEF);
 kproc_create(gv_worker, sc, &sc->worker, 0, 0, "gv_worker");
}

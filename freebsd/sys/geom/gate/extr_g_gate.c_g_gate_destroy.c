
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; struct g_geom* geom; } ;
struct g_geom {int * softc; int name; } ;
struct bio_queue_head {int dummy; } ;
struct g_gate_softc {int sc_flags; scalar_t__ sc_ref; size_t sc_unit; struct g_provider* sc_provider; struct g_consumer* sc_readcons; int sc_queue_mtx; int sc_queue_count; struct bio_queue_head sc_outqueue; struct bio_queue_head sc_inqueue; int sc_callout; } ;
struct g_consumer {int dummy; } ;
struct bio {int dummy; } ;
typedef int boolean_t ;


 int EBUSY ;
 int ENXIO ;
 int G_GATE_DEBUG (int,char*,int ) ;
 int G_GATE_FLAG_DESTROY ;
 int G_GATE_LOGREQ (int,struct bio*,char*) ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int M_GATE ;
 int bioq_init (struct bio_queue_head*) ;
 int bioq_insert_tail (struct bio_queue_head*,struct bio*) ;
 struct bio* bioq_takefirst (struct bio_queue_head*) ;
 int callout_drain (int *) ;
 int free (struct g_gate_softc*,int ) ;
 int g_access (struct g_consumer*,int,int ,int ) ;
 int g_destroy_consumer (struct g_consumer*) ;
 int g_detach (struct g_consumer*) ;
 scalar_t__ g_gate_nunits ;
 int ** g_gate_units ;
 int g_gate_units_lock ;
 int g_io_deliver (struct bio*,int ) ;
 int g_topology_assert () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int g_wither_geom (struct g_geom*,int ) ;
 int g_wither_provider (struct g_provider*,int ) ;
 int msleep (scalar_t__*,int *,int ,char*,int ) ;
 int mtx_assert (int *,int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (struct g_gate_softc*) ;

__attribute__((used)) static int
g_gate_destroy(struct g_gate_softc *sc, boolean_t force)
{
 struct bio_queue_head queue;
 struct g_provider *pp;
 struct g_consumer *cp;
 struct g_geom *gp;
 struct bio *bp;

 g_topology_assert();
 mtx_assert(&g_gate_units_lock, MA_OWNED);
 pp = sc->sc_provider;
 if (!force && (pp->acr != 0 || pp->acw != 0 || pp->ace != 0)) {
  mtx_unlock(&g_gate_units_lock);
  return (EBUSY);
 }
 mtx_unlock(&g_gate_units_lock);
 mtx_lock(&sc->sc_queue_mtx);
 if ((sc->sc_flags & G_GATE_FLAG_DESTROY) == 0)
  sc->sc_flags |= G_GATE_FLAG_DESTROY;
 wakeup(sc);
 mtx_unlock(&sc->sc_queue_mtx);
 gp = pp->geom;
 g_wither_provider(pp, ENXIO);
 callout_drain(&sc->sc_callout);
 bioq_init(&queue);
 mtx_lock(&sc->sc_queue_mtx);
 while ((bp = bioq_takefirst(&sc->sc_inqueue)) != ((void*)0)) {
  sc->sc_queue_count--;
  bioq_insert_tail(&queue, bp);
 }
 while ((bp = bioq_takefirst(&sc->sc_outqueue)) != ((void*)0)) {
  sc->sc_queue_count--;
  bioq_insert_tail(&queue, bp);
 }
 mtx_unlock(&sc->sc_queue_mtx);
 g_topology_unlock();
 while ((bp = bioq_takefirst(&queue)) != ((void*)0)) {
  G_GATE_LOGREQ(1, bp, "Request canceled.");
  g_io_deliver(bp, ENXIO);
 }
 mtx_lock(&g_gate_units_lock);

 sc->sc_ref--;
 while (sc->sc_ref > 0)
  msleep(&sc->sc_ref, &g_gate_units_lock, 0, "gg:destroy", 0);
 g_gate_units[sc->sc_unit] = ((void*)0);
 KASSERT(g_gate_nunits > 0, ("negative g_gate_nunits?"));
 g_gate_nunits--;
 mtx_unlock(&g_gate_units_lock);
 mtx_destroy(&sc->sc_queue_mtx);
 g_topology_lock();
 if ((cp = sc->sc_readcons) != ((void*)0)) {
  sc->sc_readcons = ((void*)0);
  (void)g_access(cp, -1, 0, 0);
  g_detach(cp);
  g_destroy_consumer(cp);
 }
 G_GATE_DEBUG(1, "Device %s destroyed.", gp->name);
 gp->softc = ((void*)0);
 g_wither_geom(gp, ENXIO);
 sc->sc_provider = ((void*)0);
 free(sc, M_GATE);
 return (0);
}

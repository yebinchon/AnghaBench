
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct g_raid3_softc {int * sc_syncdisk; TYPE_1__* sc_provider; int sc_name; int sc_queue_mtx; int sc_queue; } ;
struct bio {int dummy; } ;
struct TYPE_3__ {int name; } ;


 int ENXIO ;
 int G_RAID3_DEBUG (int ,char*,int ,int ) ;
 int KASSERT (int ,char*) ;
 struct bio* bioq_first (int *) ;
 int bioq_remove (int *,struct bio*) ;
 int g_error_provider (TYPE_1__*,int ) ;
 int g_io_deliver (struct bio*,int ) ;
 int g_raid3_sync_stop (struct g_raid3_softc*,int) ;
 int g_topology_assert_not () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int g_wither_provider (TYPE_1__*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
g_raid3_destroy_provider(struct g_raid3_softc *sc)
{
 struct bio *bp;

 g_topology_assert_not();
 KASSERT(sc->sc_provider != ((void*)0), ("NULL provider (device=%s).",
     sc->sc_name));

 g_topology_lock();
 g_error_provider(sc->sc_provider, ENXIO);
 mtx_lock(&sc->sc_queue_mtx);
 while ((bp = bioq_first(&sc->sc_queue)) != ((void*)0)) {
  bioq_remove(&sc->sc_queue, bp);
  g_io_deliver(bp, ENXIO);
 }
 mtx_unlock(&sc->sc_queue_mtx);
 G_RAID3_DEBUG(0, "Device %s: provider %s destroyed.", sc->sc_name,
     sc->sc_provider->name);
 g_wither_provider(sc->sc_provider, ENXIO);
 g_topology_unlock();
 sc->sc_provider = ((void*)0);
 if (sc->sc_syncdisk != ((void*)0))
  g_raid3_sync_stop(sc, 1);
}

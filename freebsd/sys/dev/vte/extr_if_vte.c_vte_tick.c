
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vte_softc {int vte_tick_ch; int vte_miibus; } ;
struct mii_data {int dummy; } ;


 int VTE_LOCK_ASSERT (struct vte_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct vte_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_tick (struct mii_data*) ;
 int vte_stats_update (struct vte_softc*) ;
 int vte_txeof (struct vte_softc*) ;
 int vte_watchdog (struct vte_softc*) ;

__attribute__((used)) static void
vte_tick(void *arg)
{
 struct vte_softc *sc;
 struct mii_data *mii;

 sc = (struct vte_softc *)arg;

 VTE_LOCK_ASSERT(sc);

 mii = device_get_softc(sc->vte_miibus);
 mii_tick(mii);
 vte_stats_update(sc);
 vte_txeof(sc);
 vte_watchdog(sc);
 callout_reset(&sc->vte_tick_ch, hz, vte_tick, sc);
}

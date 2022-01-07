
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct jme_softc {int jme_tick_ch; int jme_miibus; } ;


 int JME_LOCK_ASSERT (struct jme_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct jme_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int jme_stats_update (struct jme_softc*) ;
 int jme_txeof (struct jme_softc*) ;
 int jme_watchdog (struct jme_softc*) ;
 int mii_tick (struct mii_data*) ;

__attribute__((used)) static void
jme_tick(void *arg)
{
 struct jme_softc *sc;
 struct mii_data *mii;

 sc = (struct jme_softc *)arg;

 JME_LOCK_ASSERT(sc);

 mii = device_get_softc(sc->jme_miibus);
 mii_tick(mii);





 jme_txeof(sc);
 jme_stats_update(sc);
 jme_watchdog(sc);
 callout_reset(&sc->jme_tick_ch, hz, jme_tick, sc);
}

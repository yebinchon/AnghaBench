
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct dme_softc {int dme_tick_ch; int dme_miibus; } ;


 int callout_reset (int *,int ,void (*) (void*),struct dme_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_tick (struct mii_data*) ;

__attribute__((used)) static void
dme_tick(void *arg)
{
 struct dme_softc *sc;
 struct mii_data *mii;

 sc = (struct dme_softc *)arg;


 mii = device_get_softc(sc->dme_miibus);
 mii_tick(mii);

 callout_reset(&sc->dme_tick_ch, hz, dme_tick, sc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int dummy; } ;
struct cgem_softc {int tick_ch; int miibus; int ifp; } ;


 int CGEM_ASSERT_LOCKED (struct cgem_softc*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int callout_reset (int *,int ,int ,struct cgem_softc*) ;
 int cgem_config (struct cgem_softc*) ;
 int cgem_fill_rqueue (struct cgem_softc*) ;
 int cgem_tick ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int if_getdrvflags (int ) ;
 int if_setdrvflagbits (int ,int,int ) ;
 int mii_mediachg (struct mii_data*) ;

__attribute__((used)) static void
cgem_init_locked(struct cgem_softc *sc)
{
 struct mii_data *mii;

 CGEM_ASSERT_LOCKED(sc);

 if ((if_getdrvflags(sc->ifp) & IFF_DRV_RUNNING) != 0)
  return;

 cgem_config(sc);
 cgem_fill_rqueue(sc);

 if_setdrvflagbits(sc->ifp, IFF_DRV_RUNNING, IFF_DRV_OACTIVE);

 mii = device_get_softc(sc->miibus);
 mii_mediachg(mii);

 callout_reset(&sc->tick_ch, hz, cgem_tick, sc);
}

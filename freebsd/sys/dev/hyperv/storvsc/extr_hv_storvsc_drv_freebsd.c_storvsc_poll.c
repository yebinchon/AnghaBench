
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct storvsc_softc {int hs_lock; int hs_chan; } ;
struct cam_sim {int dummy; } ;


 int MA_OWNED ;
 struct storvsc_softc* cam_sim_softc (struct cam_sim*) ;
 int hv_storvsc_on_channel_callback (int ,struct storvsc_softc*) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
storvsc_poll(struct cam_sim *sim)
{
 struct storvsc_softc *sc = cam_sim_softc(sim);

 mtx_assert(&sc->hs_lock, MA_OWNED);
 mtx_unlock(&sc->hs_lock);
 hv_storvsc_on_channel_callback(sc->hs_chan, sc);
 mtx_lock(&sc->hs_lock);
}

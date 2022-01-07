
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mge_softc {int mge_intr_cnt; int transmit_lock; int receive_lock; int * res; scalar_t__ ifp; int * ih_cookie; int wd_callout; } ;
typedef int device_t ;
struct TYPE_2__ {int description; } ;


 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int callout_drain (int *) ;
 struct mge_softc* device_get_softc (int ) ;
 scalar_t__ device_get_unit (int ) ;
 int device_printf (int ,char*,int ) ;
 int ether_ifdetach (scalar_t__) ;
 int if_free (scalar_t__) ;
 int mge_free_dma (struct mge_softc*) ;
 TYPE_1__* mge_intrs ;
 int mge_shutdown (int ) ;
 int mtx_destroy (int *) ;
 int res_spec ;
 int sx_destroy (int *) ;
 int sx_smi ;

__attribute__((used)) static int
mge_detach(device_t dev)
{
 struct mge_softc *sc;
 int error,i;

 sc = device_get_softc(dev);


 if (sc->ifp)
  mge_shutdown(dev);


        callout_drain(&sc->wd_callout);


 for (i = 0; i < sc->mge_intr_cnt; ++i) {
  if (!sc->ih_cookie[i])
   continue;

  error = bus_teardown_intr(dev, sc->res[1 + i],
      sc->ih_cookie[i]);
  if (error)
   device_printf(dev, "could not release %s\n",
       mge_intrs[(sc->mge_intr_cnt == 1 ? 0 : i + 1)].description);
 }


 if (sc->ifp) {
  ether_ifdetach(sc->ifp);
  if_free(sc->ifp);
 }


 mge_free_dma(sc);


 bus_release_resources(dev, res_spec, sc->res);


 mtx_destroy(&sc->receive_lock);
 mtx_destroy(&sc->transmit_lock);

 if (device_get_unit(dev) == 0)
  sx_destroy(&sx_smi);

 return (0);
}

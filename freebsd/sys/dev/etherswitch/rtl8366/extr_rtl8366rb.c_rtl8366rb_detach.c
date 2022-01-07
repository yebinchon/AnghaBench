
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366rb_softc {int numphys; int sc_mtx; int callout_mtx; int callout_tick; int * ifname; int ** ifp; scalar_t__* miibus; } ;
typedef int device_t ;


 int M_DEVBUF ;
 int bus_generic_detach (int ) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,scalar_t__) ;
 struct rtl8366rb_softc* device_get_softc (int ) ;
 int free (int ,int ) ;
 int if_free (int *) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
rtl8366rb_detach(device_t dev)
{
 struct rtl8366rb_softc *sc;
 int i;

 sc = device_get_softc(dev);

 for (i=0; i < sc->numphys; i++) {
  if (sc->miibus[i])
   device_delete_child(dev, sc->miibus[i]);
  if (sc->ifp[i] != ((void*)0))
   if_free(sc->ifp[i]);
  free(sc->ifname[i], M_DEVBUF);
 }
 bus_generic_detach(dev);
 callout_drain(&sc->callout_tick);
 mtx_destroy(&sc->callout_mtx);
 mtx_destroy(&sc->sc_mtx);

 return (0);
}

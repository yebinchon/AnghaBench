
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hme_softc {int sc_lock; } ;
struct hme_sbus_softc {int * hsc_seb_res; int * hsc_etx_res; int * hsc_erx_res; int * hsc_mac_res; int * hsc_mif_res; int * hsc_ires; int hsc_ih; struct hme_softc hsc_hme; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int ) ;
 struct hme_sbus_softc* device_get_softc (int ) ;
 int hme_detach (struct hme_softc*) ;
 int mtx_destroy (int *) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static int
hme_sbus_detach(device_t dev)
{
 struct hme_sbus_softc *hsc;
 struct hme_softc *sc;

 hsc = device_get_softc(dev);
 sc = &hsc->hsc_hme;
 bus_teardown_intr(dev, hsc->hsc_ires, hsc->hsc_ih);
 hme_detach(sc);
 bus_release_resource(dev, SYS_RES_IRQ,
     rman_get_rid(hsc->hsc_ires), hsc->hsc_ires);
 if (hsc->hsc_mif_res != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      rman_get_rid(hsc->hsc_mif_res), hsc->hsc_mif_res);
 }
 bus_release_resource(dev, SYS_RES_MEMORY,
     rman_get_rid(hsc->hsc_mac_res), hsc->hsc_mac_res);
 bus_release_resource(dev, SYS_RES_MEMORY,
     rman_get_rid(hsc->hsc_erx_res), hsc->hsc_erx_res);
 bus_release_resource(dev, SYS_RES_MEMORY,
     rman_get_rid(hsc->hsc_etx_res), hsc->hsc_etx_res);
 bus_release_resource(dev, SYS_RES_MEMORY,
     rman_get_rid(hsc->hsc_seb_res), hsc->hsc_seb_res);
 mtx_destroy(&sc->sc_lock);
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hme_softc {int sc_lock; } ;
struct hme_pci_softc {int hsc_sres; int hsc_ires; int hsc_ih; struct hme_softc hsc_hme; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 struct hme_pci_softc* device_get_softc (int ) ;
 int hme_detach (struct hme_softc*) ;
 int mtx_destroy (int *) ;
 int rman_get_rid (int ) ;

__attribute__((used)) static int
hme_pci_detach(device_t dev)
{
 struct hme_pci_softc *hsc;
 struct hme_softc *sc;

 hsc = device_get_softc(dev);
 sc = &hsc->hsc_hme;
 bus_teardown_intr(dev, hsc->hsc_ires, hsc->hsc_ih);
 hme_detach(sc);
 bus_release_resource(dev, SYS_RES_IRQ,
     rman_get_rid(hsc->hsc_ires), hsc->hsc_ires);
 bus_release_resource(dev, SYS_RES_MEMORY,
     rman_get_rid(hsc->hsc_sres), hsc->hsc_sres);
 mtx_destroy(&sc->sc_lock);
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct usb_ether {int ue_tq; } ;
struct axge_softc {int sc_mtx; int sc_xfer; struct usb_ether sc_ue; } ;
typedef int device_t ;


 int AXGE_ACCESS_MAC ;
 int AXGE_CLK_SELECT ;
 int AXGE_EPPRCR ;
 int AXGE_LOCK (struct axge_softc*) ;
 int AXGE_N_TRANSFER ;
 int AXGE_RCR ;
 int AXGE_UNLOCK (struct axge_softc*) ;
 int EPPRCR_BZ ;
 int EPPRCR_IPRL ;
 int axge_read_cmd_2 (struct axge_softc*,int ,int,int ) ;
 int axge_stop (struct usb_ether*) ;
 int axge_write_cmd_1 (struct axge_softc*,int ,int ,int ) ;
 int axge_write_cmd_2 (struct axge_softc*,int ,int,int ,int) ;
 struct axge_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int mtx_destroy (int *) ;
 int uether_ifdetach (struct usb_ether*) ;
 int usb_proc_drain (int *) ;
 int usbd_transfer_unsetup (int ,int ) ;

__attribute__((used)) static int
axge_detach(device_t dev)
{
 struct axge_softc *sc;
 struct usb_ether *ue;
 uint16_t val;

 sc = device_get_softc(dev);
 ue = &sc->sc_ue;
 if (device_is_attached(dev)) {


  usb_proc_drain(&ue->ue_tq);

  AXGE_LOCK(sc);




  axge_stop(ue);

  val = axge_read_cmd_2(sc, AXGE_ACCESS_MAC, 2, AXGE_EPPRCR);
  val |= EPPRCR_BZ | EPPRCR_IPRL;
  axge_write_cmd_2(sc, AXGE_ACCESS_MAC, 2, AXGE_EPPRCR, val);

  axge_write_cmd_1(sc, AXGE_ACCESS_MAC, AXGE_CLK_SELECT, 0);

  axge_write_cmd_2(sc, AXGE_ACCESS_MAC, 2, AXGE_RCR, 0);
  AXGE_UNLOCK(sc);
 }
 usbd_transfer_unsetup(sc->sc_xfer, AXGE_N_TRANSFER);
 uether_ifdetach(ue);
 mtx_destroy(&sc->sc_mtx);

 return (0);
}

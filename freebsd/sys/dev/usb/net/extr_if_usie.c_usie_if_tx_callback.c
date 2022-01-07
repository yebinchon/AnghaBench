
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint16_t ;
struct TYPE_4__ {int len; } ;
struct TYPE_6__ {TYPE_1__ hip; } ;
struct usie_softc {TYPE_3__ sc_txd; struct ifnet* sc_ifp; } ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_5__ {int len; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int if_snd; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int DPRINTF (char*,int) ;
 int DPRINTFN (int,char*) ;
 int ETHER_CRC_LEN ;
 int ETHER_HDR_LEN ;
 int IFCOUNTER_IERRORS ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int MCLBYTES ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int htobe16 (int) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;
 int usbd_copy_in (struct usb_page_cache*,int ,TYPE_3__*,int) ;
 int usbd_errstr (int ) ;
 int usbd_m_copy_in (struct usb_page_cache*,int,struct mbuf*,int ,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct usie_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
usie_if_tx_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct usie_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 struct ifnet *ifp = sc->sc_ifp;
 struct mbuf *m;
 uint16_t size;

 switch (USB_GET_STATE(xfer)) {
 case 128:
  DPRINTFN(11, "transfer complete\n");
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);


 case 129:
tr_setup:

  if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
   break;

  IFQ_DRV_DEQUEUE(&ifp->if_snd, m);
  if (m == ((void*)0))
   break;

  if (m->m_pkthdr.len > (int)(MCLBYTES - ETHER_HDR_LEN +
      ETHER_CRC_LEN - sizeof(sc->sc_txd))) {
   DPRINTF("packet len is too big: %d\n",
       m->m_pkthdr.len);
   break;
  }
  pc = usbd_xfer_get_frame(xfer, 0);

  sc->sc_txd.hip.len = htobe16(m->m_pkthdr.len +
      ETHER_HDR_LEN + ETHER_CRC_LEN);
  size = sizeof(sc->sc_txd);

  usbd_copy_in(pc, 0, &sc->sc_txd, size);
  usbd_m_copy_in(pc, size, m, 0, m->m_pkthdr.len);
  usbd_xfer_set_frame_len(xfer, 0, m->m_pkthdr.len +
      size + ETHER_CRC_LEN);

  BPF_MTAP(ifp, m);

  m_freem(m);

  usbd_transfer_submit(xfer);
  break;

 default:
  DPRINTF("USB transfer error, %s\n",
      usbd_errstr(error));
  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);

  if (error != USB_ERR_CANCELLED) {
   usbd_xfer_set_stall(xfer);
   if_inc_counter(ifp, IFCOUNTER_IERRORS, 1);
   goto tr_setup;
  }
  break;
 }
}

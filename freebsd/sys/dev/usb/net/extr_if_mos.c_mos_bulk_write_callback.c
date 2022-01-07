
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct mos_softc {int sc_ue; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_snd; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int MOS_DPRINTFN (char*,...) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;
 struct ifnet* uether_getifp (int *) ;
 int usbd_errstr (int ) ;
 int usbd_m_copy_in (struct usb_page_cache*,int ,struct mbuf*,int ,int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct mos_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
mos_bulk_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct mos_softc *sc = usbd_xfer_softc(xfer);
 struct ifnet *ifp = uether_getifp(&sc->sc_ue);
 struct usb_page_cache *pc;
 struct mbuf *m;



 switch (USB_GET_STATE(xfer)) {
 case 128:
  MOS_DPRINTFN("transfer of complete");
  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);

 case 129:
tr_setup:



  IFQ_DRV_DEQUEUE(&ifp->if_snd, m);
  if (m == ((void*)0))
   return;

  pc = usbd_xfer_get_frame(xfer, 0);
  usbd_m_copy_in(pc, 0, m, 0, m->m_pkthdr.len);

  usbd_xfer_set_frame_len(xfer, 0, m->m_pkthdr.len);






  BPF_MTAP(ifp, m);

  m_freem(m);

  usbd_transfer_submit(xfer);

  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
  return;
 default:
  MOS_DPRINTFN("usb error on tx: %s\n", usbd_errstr(error));
  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  if (error != USB_ERR_CANCELLED) {
   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  return;
 }
}

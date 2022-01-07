
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct uhso_softc {struct ifnet* sc_ifp; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int if_snd; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int MCLBYTES ;
 int UHSO_DPRINTF (int,char*,int,...) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;
 int usbd_errstr (int ) ;
 int usbd_m_copy_in (struct usb_page_cache*,int ,struct mbuf*,int ,int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct uhso_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
uhso_ifnet_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct uhso_softc *sc = usbd_xfer_softc(xfer);
 struct ifnet *ifp = sc->sc_ifp;
 struct usb_page_cache *pc;
 struct mbuf *m;
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 UHSO_DPRINTF(3, "status %d, actlen=%d\n", USB_GET_STATE(xfer), actlen);

 switch (USB_GET_STATE(xfer)) {
 case 128:
  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
 case 129:
tr_setup:
  IFQ_DRV_DEQUEUE(&ifp->if_snd, m);
  if (m == ((void*)0))
   break;

  ifp->if_drv_flags |= IFF_DRV_OACTIVE;

  if (m->m_pkthdr.len > MCLBYTES)
   m->m_pkthdr.len = MCLBYTES;

  usbd_xfer_set_frame_len(xfer, 0, m->m_pkthdr.len);
  pc = usbd_xfer_get_frame(xfer, 0);
  usbd_m_copy_in(pc, 0, m, 0, m->m_pkthdr.len);
  usbd_transfer_submit(xfer);

  BPF_MTAP(ifp, m);
  m_freem(m);
  break;
 default:
  UHSO_DPRINTF(0, "error: %s\n", usbd_errstr(error));
  if (error == USB_ERR_CANCELLED)
   break;
  usbd_xfer_set_stall(xfer);
  goto tr_setup;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef size_t uint8_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_2__ {size_t len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ipheth_softc {struct mbuf** sc_tx_buf; int sc_ue; } ;
struct ifnet {int if_snd; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int DPRINTFN (int,char*,...) ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 size_t IPHETH_BUF_SIZE ;
 size_t IPHETH_TX_FRAMES_MAX ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int if_inc_counter (struct ifnet*,int ,int) ;
 int ipheth_free_queue (struct mbuf**,size_t) ;
 struct ifnet* uether_getifp (int *) ;
 int usbd_errstr (int ) ;
 int usbd_frame_zero (struct usb_page_cache*,size_t,size_t) ;
 int usbd_m_copy_in (struct usb_page_cache*,int ,struct mbuf*,int ,size_t) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,size_t) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,size_t,size_t) ;
 int usbd_xfer_set_frame_offset (struct usb_xfer*,size_t,size_t) ;
 int usbd_xfer_set_frames (struct usb_xfer*,size_t) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct ipheth_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int*,int *) ;

__attribute__((used)) static void
ipheth_bulk_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ipheth_softc *sc = usbd_xfer_softc(xfer);
 struct ifnet *ifp = uether_getifp(&sc->sc_ue);
 struct usb_page_cache *pc;
 struct mbuf *m;
 uint8_t x;
 int actlen;
 int aframes;

 usbd_xfer_status(xfer, &actlen, ((void*)0), &aframes, ((void*)0));

 DPRINTFN(1, "\n");

 switch (USB_GET_STATE(xfer)) {
 case 128:
  DPRINTFN(11, "transfer complete: %u bytes in %u frames\n",
      actlen, aframes);

  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);


  ipheth_free_queue(sc->sc_tx_buf, IPHETH_TX_FRAMES_MAX);


 case 129:
tr_setup:
  for (x = 0; x != IPHETH_TX_FRAMES_MAX; x++) {

   IFQ_DRV_DEQUEUE(&ifp->if_snd, m);

   if (m == ((void*)0))
    break;

   usbd_xfer_set_frame_offset(xfer,
       x * IPHETH_BUF_SIZE, x);

   pc = usbd_xfer_get_frame(xfer, x);

   sc->sc_tx_buf[x] = m;

   if (m->m_pkthdr.len > IPHETH_BUF_SIZE)
    m->m_pkthdr.len = IPHETH_BUF_SIZE;

   usbd_m_copy_in(pc, 0, m, 0, m->m_pkthdr.len);

   usbd_xfer_set_frame_len(xfer, x, IPHETH_BUF_SIZE);

   if (IPHETH_BUF_SIZE != m->m_pkthdr.len) {
    usbd_frame_zero(pc, m->m_pkthdr.len,
     IPHETH_BUF_SIZE - m->m_pkthdr.len);
   }





   BPF_MTAP(ifp, m);
  }
  if (x != 0) {
   usbd_xfer_set_frames(xfer, x);

   usbd_transfer_submit(xfer);
  }
  break;

 default:
  DPRINTFN(11, "transfer error, %s\n",
      usbd_errstr(error));


  ipheth_free_queue(sc->sc_tx_buf, IPHETH_TX_FRAMES_MAX);


  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);

  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  break;
 }
}

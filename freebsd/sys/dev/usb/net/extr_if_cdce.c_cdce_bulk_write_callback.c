
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_error_t ;
typedef size_t uint8_t ;
typedef int uint32_t ;
struct usb_xfer {int dummy; } ;
struct TYPE_3__ {int len; } ;
struct mbuf {int m_len; int m_data; TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_snd; } ;
struct TYPE_4__ {int ue_udev; } ;
struct cdce_softc {int sc_flags; TYPE_2__ sc_ue; struct mbuf** sc_tx_buf; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int CDCE_FLAG_ZAURUS ;
 size_t CDCE_FRAMES_MAX ;
 int DPRINTFN (int,char*,...) ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int MCLBYTES ;
 int M_NOWAIT ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;
 int USB_MODE_HOST ;


 int cdce_free_queue (struct mbuf**,size_t) ;
 int cdce_m_crc32 (struct mbuf*,int ,int ) ;
 int htole32 (int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_append (struct mbuf*,int,void*) ;
 struct mbuf* m_defrag (struct mbuf*,int ) ;
 int m_freem (struct mbuf*) ;
 struct ifnet* uether_getifp (TYPE_2__*) ;
 int usbd_errstr (int ) ;
 int usbd_get_mode (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_set_frame_data (struct usb_xfer*,size_t,int ,int ) ;
 int usbd_xfer_set_frames (struct usb_xfer*,size_t) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct cdce_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int*,int *) ;

__attribute__((used)) static void
cdce_bulk_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct cdce_softc *sc = usbd_xfer_softc(xfer);
 struct ifnet *ifp = uether_getifp(&sc->sc_ue);
 struct mbuf *m;
 struct mbuf *mt;
 uint32_t crc;
 uint8_t x;
 int actlen, aframes;

 usbd_xfer_status(xfer, &actlen, ((void*)0), &aframes, ((void*)0));

 DPRINTFN(1, "\n");

 switch (USB_GET_STATE(xfer)) {
 case 128:
  DPRINTFN(11, "transfer complete: %u bytes in %u frames\n",
      actlen, aframes);

  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);


  cdce_free_queue(sc->sc_tx_buf, CDCE_FRAMES_MAX);


 case 129:
tr_setup:
  for (x = 0; x != CDCE_FRAMES_MAX; x++) {

   IFQ_DRV_DEQUEUE(&ifp->if_snd, m);

   if (m == ((void*)0))
    break;

   if (sc->sc_flags & CDCE_FLAG_ZAURUS) {





    crc = cdce_m_crc32(m, 0, m->m_pkthdr.len);
    crc = htole32(crc);

    if (!m_append(m, 4, (void *)&crc)) {
     m_freem(m);
     if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
     continue;
    }
   }
   if (m->m_len != m->m_pkthdr.len) {
    mt = m_defrag(m, M_NOWAIT);
    if (mt == ((void*)0)) {
     m_freem(m);
     if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
     continue;
    }
    m = mt;
   }
   if (m->m_pkthdr.len > MCLBYTES) {
    m->m_pkthdr.len = MCLBYTES;
   }
   sc->sc_tx_buf[x] = m;
   usbd_xfer_set_frame_data(xfer, x, m->m_data, m->m_len);





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


  cdce_free_queue(sc->sc_tx_buf, CDCE_FRAMES_MAX);


  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);

  if (error != USB_ERR_CANCELLED) {
   if (usbd_get_mode(sc->sc_ue.ue_udev) == USB_MODE_HOST) {

    usbd_xfer_set_stall(xfer);
   }
   goto tr_setup;
  }
  break;
 }
}

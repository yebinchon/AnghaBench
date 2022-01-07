
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct urndis_softc {int sc_ue; } ;
struct rndis_packet_msg {void* rm_datalen; void* rm_dataoffset; void* rm_len; void* rm_type; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_snd; } ;
typedef int msg ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int DPRINTF (char*) ;
 int DPRINTFN (int,char*,...) ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int REMOTE_NDIS_PACKET_MSG ;
 int RNDIS_DATA_OFFSET ;
 unsigned int RNDIS_TX_FRAMES_MAX ;
 unsigned int RNDIS_TX_MAXLEN ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 void* htole32 (int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;
 int memset (struct rndis_packet_msg*,int ,int) ;
 struct ifnet* uether_getifp (int *) ;
 int usbd_copy_in (struct usb_page_cache*,int ,struct rndis_packet_msg*,int) ;
 int usbd_errstr (int ) ;
 int usbd_m_copy_in (struct usb_page_cache*,int,struct mbuf*,int ,int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,unsigned int) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,unsigned int,int ) ;
 int usbd_xfer_set_frame_offset (struct usb_xfer*,unsigned int,unsigned int) ;
 int usbd_xfer_set_frames (struct usb_xfer*,unsigned int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct urndis_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int*,int *) ;

__attribute__((used)) static void
urndis_bulk_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct rndis_packet_msg msg;
 struct urndis_softc *sc = usbd_xfer_softc(xfer);
 struct ifnet *ifp = uether_getifp(&sc->sc_ue);
 struct mbuf *m;
 unsigned x;
 int actlen;
 int aframes;

 usbd_xfer_status(xfer, &actlen, ((void*)0), &aframes, ((void*)0));

 DPRINTFN(1, "\n");

 switch (USB_GET_STATE(xfer)) {
 case 128:
  DPRINTFN(11, "%u bytes in %u frames\n", actlen, aframes);

  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);


 case 129:
tr_setup:
  memset(&msg, 0, sizeof(msg));

  for (x = 0; x != RNDIS_TX_FRAMES_MAX; x++) {
   struct usb_page_cache *pc = usbd_xfer_get_frame(xfer, x);

   usbd_xfer_set_frame_offset(xfer, x * RNDIS_TX_MAXLEN, x);

next_pkt:
   IFQ_DRV_DEQUEUE(&ifp->if_snd, m);

   if (m == ((void*)0))
    break;

   if ((m->m_pkthdr.len + sizeof(msg)) > RNDIS_TX_MAXLEN) {
    DPRINTF("Too big packet\n");
    if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);


    m_freem(m);
    goto next_pkt;
   }
   msg.rm_type = htole32(REMOTE_NDIS_PACKET_MSG);
   msg.rm_len = htole32(sizeof(msg) + m->m_pkthdr.len);

   msg.rm_dataoffset = htole32(RNDIS_DATA_OFFSET);
   msg.rm_datalen = htole32(m->m_pkthdr.len);


   usbd_copy_in(pc, 0, &msg, sizeof(msg));
   usbd_m_copy_in(pc, sizeof(msg), m, 0, m->m_pkthdr.len);
   usbd_xfer_set_frame_len(xfer, x, sizeof(msg) + m->m_pkthdr.len);





   BPF_MTAP(ifp, m);


   m_freem(m);
  }
  if (x != 0) {
   usbd_xfer_set_frames(xfer, x);
   usbd_transfer_submit(xfer);
  }
  break;

 default:
  DPRINTFN(11, "transfer error, %s\n", usbd_errstr(error));


  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);

  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  break;
 }
}

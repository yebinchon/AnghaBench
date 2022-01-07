
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint32_t ;
typedef int tx_cmd_b ;
typedef int tx_cmd_a ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct muge_softc {int sc_flags; int sc_ue; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_drv_flags; int if_snd; } ;


 int BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OPACKETS ;
 int IFF_DRV_OACTIVE ;
 int IFQ_DRV_DEQUEUE (int *,struct mbuf*) ;
 int IFQ_DRV_IS_EMPTY (int *) ;
 int MCLBYTES ;
 int MUGE_FLAG_LINK ;
 int TX_CMD_A_FCS_ ;
 int TX_CMD_A_LEN_MASK_ ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int htole32 (int) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;
 int muge_dbg_printf (struct muge_softc*,char*,...) ;
 int muge_err_printf (struct muge_softc*,char*,int ) ;
 struct ifnet* uether_getifp (int *) ;
 int usbd_copy_in (struct usb_page_cache*,int,int*,int) ;
 int usbd_errstr (int ) ;
 int usbd_m_copy_in (struct usb_page_cache*,int,struct mbuf*,int ,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int,int) ;
 int usbd_xfer_set_frame_offset (struct usb_xfer*,int,int) ;
 int usbd_xfer_set_frames (struct usb_xfer*,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct muge_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
muge_bulk_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct muge_softc *sc = usbd_xfer_softc(xfer);
 struct ifnet *ifp = uether_getifp(&sc->sc_ue);
 struct usb_page_cache *pc;
 struct mbuf *m;
 int nframes;
 uint32_t frm_len = 0, tx_cmd_a = 0, tx_cmd_b = 0;

 switch (USB_GET_STATE(xfer)) {
 case 128:
  muge_dbg_printf(sc,
      "USB TRANSFER status: USB_ST_TRANSFERRED\n");
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 case 129:
  muge_dbg_printf(sc, "USB TRANSFER status: USB_ST_SETUP\n");
tr_setup:
  if ((sc->sc_flags & MUGE_FLAG_LINK) == 0 ||
   (ifp->if_drv_flags & IFF_DRV_OACTIVE) != 0) {
   muge_dbg_printf(sc,
       "sc->sc_flags & MUGE_FLAG_LINK: %d\n",
       (sc->sc_flags & MUGE_FLAG_LINK));
   muge_dbg_printf(sc,
       "ifp->if_drv_flags & IFF_DRV_OACTIVE: %d\n",
       (ifp->if_drv_flags & IFF_DRV_OACTIVE));
   muge_dbg_printf(sc,
       "USB TRANSFER not sending: no link or controller is busy \n");




   return;
  }
  for (nframes = 0; nframes < 16 &&
      !IFQ_DRV_IS_EMPTY(&ifp->if_snd); nframes++) {
   IFQ_DRV_DEQUEUE(&ifp->if_snd, m);
   if (m == ((void*)0))
    break;
   usbd_xfer_set_frame_offset(xfer, nframes * MCLBYTES,
    nframes);
   frm_len = 0;
   pc = usbd_xfer_get_frame(xfer, nframes);





   tx_cmd_a = (m->m_pkthdr.len & TX_CMD_A_LEN_MASK_) |
        TX_CMD_A_FCS_;
   tx_cmd_a = htole32(tx_cmd_a);
   usbd_copy_in(pc, 0, &tx_cmd_a, sizeof(tx_cmd_a));

   tx_cmd_b = 0;


   tx_cmd_b = htole32(tx_cmd_b);
   usbd_copy_in(pc, 4, &tx_cmd_b, sizeof(tx_cmd_b));

   frm_len += 8;


   usbd_m_copy_in(pc, frm_len, m, 0, m->m_pkthdr.len);
   frm_len += m->m_pkthdr.len;

   if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);





   BPF_MTAP(ifp, m);
   m_freem(m);


   usbd_xfer_set_frame_len(xfer, nframes, frm_len);
  }

  muge_dbg_printf(sc, "USB TRANSFER nframes: %d\n", nframes);
  if (nframes != 0) {
   muge_dbg_printf(sc, "USB TRANSFER submit attempt\n");
   usbd_xfer_set_frames(xfer, nframes);
   usbd_transfer_submit(xfer);
   ifp->if_drv_flags |= IFF_DRV_OACTIVE;
  }
  return;

 default:
  if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
  ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

  if (error != USB_ERR_CANCELLED) {
   muge_err_printf(sc,
       "usb error on tx: %s\n", usbd_errstr(error));
   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  return;
 }
}

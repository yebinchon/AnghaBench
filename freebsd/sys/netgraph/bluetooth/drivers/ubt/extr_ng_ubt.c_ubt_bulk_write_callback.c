
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ubt_softc {int sc_aclq; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;


 int NG_BT_MBUFQ_DEQUEUE (int *,struct mbuf*) ;
 int NG_FREE_M (struct mbuf*) ;
 int UBT_INFO (struct ubt_softc*,char*,...) ;
 int UBT_NG_LOCK (struct ubt_softc*) ;
 int UBT_NG_UNLOCK (struct ubt_softc*) ;
 int UBT_STAT_BYTES_SENT (struct ubt_softc*,int) ;
 int UBT_STAT_OERROR (struct ubt_softc*) ;
 int UBT_STAT_PCKTS_SENT (struct ubt_softc*) ;
 int UBT_WARN (struct ubt_softc*,char*,int ) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int usbd_errstr (int ) ;
 int usbd_m_copy_in (struct usb_page_cache*,int ,struct mbuf*,int ,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct ubt_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
ubt_bulk_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ubt_softc *sc = usbd_xfer_softc(xfer);
 struct mbuf *m;
 struct usb_page_cache *pc;
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  UBT_INFO(sc, "sent %d bytes to bulk-out pipe\n", actlen);
  UBT_STAT_BYTES_SENT(sc, actlen);
  UBT_STAT_PCKTS_SENT(sc);


 case 129:
send_next:

  UBT_NG_LOCK(sc);
  NG_BT_MBUFQ_DEQUEUE(&sc->sc_aclq, m);
  UBT_NG_UNLOCK(sc);

  if (m == ((void*)0)) {
   UBT_INFO(sc, "ACL data queue is empty\n");
   break;
  }






  pc = usbd_xfer_get_frame(xfer, 0);
  usbd_m_copy_in(pc, 0, m, 0, m->m_pkthdr.len);
  usbd_xfer_set_frame_len(xfer, 0, m->m_pkthdr.len);

  UBT_INFO(sc, "bulk-out transfer has been started, len=%d\n",
   m->m_pkthdr.len);

  NG_FREE_M(m);

  usbd_transfer_submit(xfer);
  break;

 default:
  if (error != USB_ERR_CANCELLED) {
   UBT_WARN(sc, "bulk-out transfer failed: %s\n",
    usbd_errstr(error));

   UBT_STAT_OERROR(sc);


   usbd_xfer_set_stall(xfer);
   goto send_next;
  }

  break;
 }
}

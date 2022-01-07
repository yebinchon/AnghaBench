
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ubt_softc {int sc_scoq; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;


 int NG_BT_MBUFQ_DEQUEUE (int *,struct mbuf*) ;
 int NG_BT_MBUFQ_PREPEND (int *,struct mbuf*) ;
 int NG_FREE_M (struct mbuf*) ;
 int UBT_INFO (struct ubt_softc*,char*,int) ;
 int UBT_NG_LOCK (struct ubt_softc*) ;
 int UBT_NG_UNLOCK (struct ubt_softc*) ;
 int UBT_STAT_BYTES_SENT (struct ubt_softc*,int) ;
 int UBT_STAT_OERROR (struct ubt_softc*) ;
 int UBT_STAT_PCKTS_SENT (struct ubt_softc*) ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int m_adj (struct mbuf*,int) ;
 int min (int,int) ;
 int usbd_m_copy_in (struct usb_page_cache*,int,struct mbuf*,int ,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 int usbd_xfer_frame_len (struct usb_xfer*,int) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_framelen (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int,int) ;
 struct ubt_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int*) ;

__attribute__((used)) static void
ubt_isoc_write_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ubt_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 struct mbuf *m;
 int n, space, offset;
 int actlen, nframes;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), &nframes);
 pc = usbd_xfer_get_frame(xfer, 0);

 switch (USB_GET_STATE(xfer)) {
 case 128:
  UBT_INFO(sc, "sent %d bytes to isoc-out pipe\n", actlen);
  UBT_STAT_BYTES_SENT(sc, actlen);
  UBT_STAT_PCKTS_SENT(sc);


 case 129:
send_next:
  offset = 0;
  space = usbd_xfer_max_framelen(xfer) * nframes;
  m = ((void*)0);

  while (space > 0) {
   if (m == ((void*)0)) {
    UBT_NG_LOCK(sc);
    NG_BT_MBUFQ_DEQUEUE(&sc->sc_scoq, m);
    UBT_NG_UNLOCK(sc);

    if (m == ((void*)0))
     break;
   }

   n = min(space, m->m_pkthdr.len);
   if (n > 0) {
    usbd_m_copy_in(pc, offset, m,0, n);
    m_adj(m, n);

    offset += n;
    space -= n;
   }

   if (m->m_pkthdr.len == 0)
    NG_FREE_M(m);
  }


  if (m != ((void*)0)) {
   UBT_NG_LOCK(sc);
   NG_BT_MBUFQ_PREPEND(&sc->sc_scoq, m);
   UBT_NG_UNLOCK(sc);
  }
  for (n = 0; n < nframes; n ++) {
   usbd_xfer_set_frame_len(xfer, n,
       min(offset, usbd_xfer_max_framelen(xfer)));
   offset -= usbd_xfer_frame_len(xfer, n);
  }

  usbd_transfer_submit(xfer);
  break;

 default:
  if (error != USB_ERR_CANCELLED) {
   UBT_STAT_OERROR(sc);
   goto send_next;
  }


  break;
 }
}

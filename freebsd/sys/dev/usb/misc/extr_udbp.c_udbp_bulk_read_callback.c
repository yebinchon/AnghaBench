
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct udbp_softc {int sc_flags; int * sc_xfer; int sc_node; struct mbuf* sc_bulk_in_buffer; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {int m_len; int m_data; TYPE_1__ m_pkthdr; } ;


 int DPRINTF (char*,int) ;
 int MCLGET (struct mbuf*,int ) ;
 int MGETHDR (struct mbuf*,int ,int ) ;
 int MT_DATA ;
 int M_NOWAIT ;
 int UDBP_FLAG_READ_STALL ;
 size_t UDBP_T_RD_CS ;
 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int m_freem (struct mbuf*) ;
 int ng_send_fn (int ,int *,int *,int *,int ) ;
 int udbp_bulk_read_complete ;
 int usbd_copy_out (struct usb_page_cache*,int ,int ,int) ;
 int usbd_transfer_start (int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 struct udbp_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
udbp_bulk_read_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct udbp_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 struct mbuf *m;
 int actlen;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:



  MGETHDR(m, M_NOWAIT, MT_DATA);

  if (m == ((void*)0)) {
   goto tr_setup;
  }

  if (!(MCLGET(m, M_NOWAIT))) {
   m_freem(m);
   goto tr_setup;
  }
  m->m_pkthdr.len = m->m_len = actlen;

  pc = usbd_xfer_get_frame(xfer, 0);
  usbd_copy_out(pc, 0, m->m_data, actlen);

  sc->sc_bulk_in_buffer = m;

  DPRINTF("received package %d bytes\n", actlen);

 case 129:
tr_setup:
  if (sc->sc_bulk_in_buffer) {
   ng_send_fn(sc->sc_node, ((void*)0), &udbp_bulk_read_complete, ((void*)0), 0);
   return;
  }
  if (sc->sc_flags & UDBP_FLAG_READ_STALL) {
   usbd_transfer_start(sc->sc_xfer[UDBP_T_RD_CS]);
   return;
  }
  usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
  usbd_transfer_submit(xfer);
  return;

 default:
  if (error != USB_ERR_CANCELLED) {

   sc->sc_flags |= UDBP_FLAG_READ_STALL;
   usbd_transfer_start(sc->sc_xfer[UDBP_T_RD_CS]);
  }
  return;

 }
}

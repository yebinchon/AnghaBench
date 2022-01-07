
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ucom_softc {int dummy; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;


 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int USIE_BUFSIZE ;
 int m_freem (struct mbuf*) ;
 int ucom_get_data (struct ucom_softc*,struct usb_page_cache*,int ,int ,int *) ;
 int usbd_m_copy_in (struct usb_page_cache*,int ,struct mbuf*,int ,int ) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 struct mbuf* usbd_xfer_get_priv (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_priv (struct usb_xfer*,int *) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct ucom_softc* usbd_xfer_softc (struct usb_xfer*) ;

__attribute__((used)) static void
usie_uc_tx_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct ucom_softc *ucom = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 uint32_t actlen;

 switch (USB_GET_STATE(xfer)) {
 case 128:
 case 129:
tr_setup:
  pc = usbd_xfer_get_frame(xfer, 0);


  struct mbuf *m = usbd_xfer_get_priv(xfer);

  if (m != ((void*)0)) {
   usbd_m_copy_in(pc, 0, m, 0, m->m_pkthdr.len);
   usbd_xfer_set_frame_len(xfer, 0, m->m_pkthdr.len);
   usbd_xfer_set_priv(xfer, ((void*)0));
   usbd_transfer_submit(xfer);
   m_freem(m);
   break;
  }

  if (ucom_get_data(ucom, pc, 0, USIE_BUFSIZE, &actlen)) {
   usbd_xfer_set_frame_len(xfer, 0, actlen);
   usbd_transfer_submit(xfer);
  }
  break;

 default:
  if (error != USB_ERR_CANCELLED) {
   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  break;
 }
}

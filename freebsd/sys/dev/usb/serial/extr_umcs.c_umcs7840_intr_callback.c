
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usb_error_t ;
typedef size_t uint8_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct umcs7840_softc {int sc_numports; int sc_dev; TYPE_1__* sc_ucom; } ;
struct TYPE_2__ {size_t sc_portno; } ;


 int DPRINTF (char*,size_t,size_t,size_t) ;
 size_t MCS7840_UART_ISR_INTMASK ;

 size_t MCS7840_UART_ISR_NOPENDING ;



 int USB_ERR_CANCELLED ;
 int USB_GET_STATE (struct usb_xfer*) ;


 int device_printf (int ,char*,int) ;
 int ucom_status_change (TYPE_1__*) ;
 int usbd_copy_out (struct usb_page_cache*,int ,size_t*,int) ;
 int usbd_transfer_submit (struct usb_xfer*) ;
 struct usb_page_cache* usbd_xfer_get_frame (struct usb_xfer*,int ) ;
 int usbd_xfer_max_len (struct usb_xfer*) ;
 int usbd_xfer_set_frame_len (struct usb_xfer*,int ,int ) ;
 int usbd_xfer_set_stall (struct usb_xfer*) ;
 struct umcs7840_softc* usbd_xfer_softc (struct usb_xfer*) ;
 int usbd_xfer_status (struct usb_xfer*,int*,int *,int *,int *) ;

__attribute__((used)) static void
umcs7840_intr_callback(struct usb_xfer *xfer, usb_error_t error)
{
 struct umcs7840_softc *sc = usbd_xfer_softc(xfer);
 struct usb_page_cache *pc;
 uint8_t buf[13];
 int actlen;
 int subunit;

 usbd_xfer_status(xfer, &actlen, ((void*)0), ((void*)0), ((void*)0));

 switch (USB_GET_STATE(xfer)) {
 case 128:
  if (actlen == 5 || actlen == 13) {
   pc = usbd_xfer_get_frame(xfer, 0);
   usbd_copy_out(pc, 0, buf, actlen);

   for (subunit = 0; subunit < sc->sc_numports; ++subunit) {
    uint8_t pn = sc->sc_ucom[subunit].sc_portno;

    if (buf[pn] & MCS7840_UART_ISR_NOPENDING)
     continue;
    DPRINTF("Port %d has pending interrupt: %02x (FIFO: %02x)\n", pn, buf[pn] & MCS7840_UART_ISR_INTMASK, buf[pn] & (~MCS7840_UART_ISR_INTMASK));
    switch (buf[pn] & MCS7840_UART_ISR_INTMASK) {
    case 132:
    case 131:
    case 130:
    case 133:
     ucom_status_change(&sc->sc_ucom[subunit]);
     break;
    default:

     break;
    }
   }
  } else
   device_printf(sc->sc_dev, "Invalid interrupt data length %d", actlen);

 case 129:
tr_setup:
  usbd_xfer_set_frame_len(xfer, 0, usbd_xfer_max_len(xfer));
  usbd_transfer_submit(xfer);
  return;

 default:
  if (error != USB_ERR_CANCELLED) {

   usbd_xfer_set_stall(xfer);
   goto tr_setup;
  }
  return;
 }
}

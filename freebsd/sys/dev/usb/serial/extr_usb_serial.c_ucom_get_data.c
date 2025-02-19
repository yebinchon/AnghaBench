
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned int uint32_t ;
struct usb_page_search {unsigned int length; int buffer; } ;
struct usb_page_cache {int dummy; } ;
struct ucom_softc {int sc_flag; struct tty* sc_tty; } ;
struct tty {int dummy; } ;


 int DPRINTF (char*,unsigned int) ;
 int MA_OWNED ;
 unsigned int UCOM_CONS_BUFSIZE ;
 int UCOM_FLAG_CONSOLE ;
 int UCOM_FLAG_GP_DATA ;
 int UCOM_MTX_ASSERT (struct ucom_softc*,int ) ;
 scalar_t__ tty_gone (struct tty*) ;
 unsigned int ttydisc_getc (struct tty*,int ,unsigned int) ;
 scalar_t__ ucom_cons_tx_buf ;
 unsigned int ucom_cons_tx_high ;
 unsigned int ucom_cons_tx_low ;
 int usbd_copy_in (struct usb_page_cache*,unsigned int,scalar_t__,unsigned int) ;
 int usbd_get_page (struct usb_page_cache*,unsigned int,struct usb_page_search*) ;

uint8_t
ucom_get_data(struct ucom_softc *sc, struct usb_page_cache *pc,
    uint32_t offset, uint32_t len, uint32_t *actlen)
{
 struct usb_page_search res;
 struct tty *tp = sc->sc_tty;
 uint32_t cnt;
 uint32_t offset_orig;

 UCOM_MTX_ASSERT(sc, MA_OWNED);

 if (sc->sc_flag & UCOM_FLAG_CONSOLE) {
  unsigned int temp;



  temp = ucom_cons_tx_high - ucom_cons_tx_low;
  temp %= UCOM_CONS_BUFSIZE;



  if (temp > (UCOM_CONS_BUFSIZE - ucom_cons_tx_low))
   temp = (UCOM_CONS_BUFSIZE - ucom_cons_tx_low);

  if (temp > len)
   temp = len;



  usbd_copy_in(pc, offset, ucom_cons_tx_buf + ucom_cons_tx_low, temp);



  ucom_cons_tx_low += temp;
  ucom_cons_tx_low %= UCOM_CONS_BUFSIZE;



  *actlen = temp;

  return (temp ? 1 : 0);
 }

 if (tty_gone(tp) ||
     !(sc->sc_flag & UCOM_FLAG_GP_DATA)) {
  actlen[0] = 0;
  return (0);
 }
 offset_orig = offset;

 while (len != 0) {

  usbd_get_page(pc, offset, &res);

  if (res.length > len) {
   res.length = len;
  }

  cnt = ttydisc_getc(tp, res.buffer, res.length);

  offset += cnt;
  len -= cnt;

  if (cnt < res.length) {

   break;
  }
 }

 actlen[0] = offset - offset_orig;

 DPRINTF("cnt=%d\n", actlen[0]);

 if (actlen[0] == 0) {
  return (0);
 }
 return (1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef size_t uint16_t ;
struct usb_page_search {unsigned int length; char* buffer; } ;
struct usb_page_cache {int dummy; } ;
struct ucom_softc {int sc_flag; scalar_t__ sc_jitterbuf_in; scalar_t__ sc_jitterbuf_out; char* sc_jitterbuf; struct tty* sc_tty; } ;
struct tty {int dummy; } ;


 int DPRINTF (char*,struct tty*,...) ;
 int MA_OWNED ;
 int UCOM_CONS_BUFSIZE ;
 int UCOM_FLAG_CONSOLE ;
 int UCOM_FLAG_RTS_IFLOW ;
 size_t UCOM_JITTERBUF_SIZE ;
 int UCOM_MTX_ASSERT (struct ucom_softc*,int ) ;
 scalar_t__ tty_gone (struct tty*) ;
 scalar_t__ ttydisc_can_bypass (struct tty*) ;
 int ttydisc_rint (struct tty*,char,int ) ;
 unsigned int ttydisc_rint_bypass (struct tty*,char*,unsigned int) ;
 int ttydisc_rint_done (struct tty*) ;
 scalar_t__ ucom_cons_rx_buf ;
 int ucom_cons_rx_high ;
 int ucom_cons_rx_low ;
 int ucom_rts (struct ucom_softc*,int) ;
 int usbd_copy_out (struct usb_page_cache*,unsigned int,scalar_t__,unsigned int) ;
 int usbd_get_page (struct usb_page_cache*,unsigned int,struct usb_page_search*) ;

void
ucom_put_data(struct ucom_softc *sc, struct usb_page_cache *pc,
    uint32_t offset, uint32_t len)
{
 struct usb_page_search res;
 struct tty *tp = sc->sc_tty;
 char *buf;
 uint32_t cnt;

 UCOM_MTX_ASSERT(sc, MA_OWNED);

 if (sc->sc_flag & UCOM_FLAG_CONSOLE) {
  unsigned int temp;



  temp = (UCOM_CONS_BUFSIZE - 1) - ucom_cons_rx_high + ucom_cons_rx_low;
  temp %= UCOM_CONS_BUFSIZE;



  if (temp > (UCOM_CONS_BUFSIZE - ucom_cons_rx_high))
   temp = (UCOM_CONS_BUFSIZE - ucom_cons_rx_high);

  if (temp > len)
   temp = len;



  usbd_copy_out(pc, offset, ucom_cons_rx_buf + ucom_cons_rx_high, temp);



  ucom_cons_rx_high += temp;
  ucom_cons_rx_high %= UCOM_CONS_BUFSIZE;

  return;
 }

 if (tty_gone(tp))
  return;

 if (len == 0)
  return;



 while (len > 0) {

  usbd_get_page(pc, offset, &res);

  if (res.length > len) {
   res.length = len;
  }
  len -= res.length;
  offset += res.length;



  buf = res.buffer;
  cnt = res.length;



  if (ttydisc_can_bypass(tp)) {


   sc->sc_jitterbuf_in = 0;
   sc->sc_jitterbuf_out = 0;

   if (ttydisc_rint_bypass(tp, buf, cnt) != cnt) {
    DPRINTF("tp=%p, data lost\n", tp);
   }
   continue;
  }


  for (cnt = 0; cnt != res.length; cnt++) {
   if (sc->sc_jitterbuf_in != sc->sc_jitterbuf_out ||
       ttydisc_rint(tp, buf[cnt], 0) == -1) {
    uint16_t end;
    uint16_t pos;

    pos = sc->sc_jitterbuf_in;
    end = sc->sc_jitterbuf_out +
        UCOM_JITTERBUF_SIZE - 1;
    if (end >= UCOM_JITTERBUF_SIZE)
     end -= UCOM_JITTERBUF_SIZE;

    for (; cnt != res.length; cnt++) {
     if (pos == end)
      break;
     sc->sc_jitterbuf[pos] = buf[cnt];
     pos++;
     if (pos >= UCOM_JITTERBUF_SIZE)
      pos -= UCOM_JITTERBUF_SIZE;
    }

    sc->sc_jitterbuf_in = pos;


    if (sc->sc_flag & UCOM_FLAG_RTS_IFLOW)
     ucom_rts(sc, 1);

    DPRINTF("tp=%p, lost %d "
        "chars\n", tp, res.length - cnt);
    break;
   }
  }
 }
 ttydisc_rint_done(tp);
}

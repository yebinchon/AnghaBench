
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct usb_page_search {int length; int buffer; } ;
struct atmegadci_td {int ep_no; int remainder; int error; int max_packet_size; int short_pkt; int offset; int pc; } ;
struct atmegadci_softc {int dummy; } ;


 struct atmegadci_softc* ATMEGA_PC2SC (int ) ;
 int ATMEGA_READ_1 (struct atmegadci_softc*,int ) ;
 int ATMEGA_READ_MULTI_1 (struct atmegadci_softc*,int ,int ,int) ;
 int ATMEGA_UEBCHX ;
 int ATMEGA_UEBCLX ;
 int ATMEGA_UEDATX ;
 int ATMEGA_UEIENX ;
 int ATMEGA_UEIENX_RXOUTE ;
 int ATMEGA_UEIENX_RXSTPE ;
 int ATMEGA_UEINTX ;
 int ATMEGA_UEINTX_FIFOCON ;
 int ATMEGA_UEINTX_RXOUTI ;
 int ATMEGA_UEINTX_RXSTPI ;
 int ATMEGA_UENUM ;
 int ATMEGA_WRITE_1 (struct atmegadci_softc*,int ,int) ;
 int DPRINTFN (int,char*,...) ;
 int usbd_get_page (int ,int,struct usb_page_search*) ;

__attribute__((used)) static uint8_t
atmegadci_data_rx(struct atmegadci_td *td)
{
 struct atmegadci_softc *sc;
 struct usb_page_search buf_res;
 uint16_t count;
 uint8_t temp;
 uint8_t to;
 uint8_t got_short;

 to = 3;
 got_short = 0;


 sc = ATMEGA_PC2SC(td->pc);


 ATMEGA_WRITE_1(sc, ATMEGA_UENUM, td->ep_no);

repeat:


 temp = ATMEGA_READ_1(sc, ATMEGA_UEINTX);

 DPRINTFN(5, "temp=0x%02x rem=%u\n", temp, td->remainder);

 if (temp & ATMEGA_UEINTX_RXSTPI) {
  if (td->remainder == 0) {




   DPRINTFN(5, "faking complete\n");
   return (0);
  }



  td->error = 1;
  return (0);
 }

 if (!(temp & (ATMEGA_UEINTX_FIFOCON |
     ATMEGA_UEINTX_RXOUTI))) {

  goto not_complete;
 }

 count =
     (ATMEGA_READ_1(sc, ATMEGA_UEBCHX) << 8) |
     (ATMEGA_READ_1(sc, ATMEGA_UEBCLX));


 count &= 0x7FF;


 if (count != td->max_packet_size) {
  if (count < td->max_packet_size) {

   td->short_pkt = 1;
   got_short = 1;
  } else {

   td->error = 1;
   return (0);
  }
 }

 if (count > td->remainder) {

  td->error = 1;
  return (0);
 }
 while (count > 0) {
  usbd_get_page(td->pc, td->offset, &buf_res);


  if (buf_res.length > count) {
   buf_res.length = count;
  }

  ATMEGA_READ_MULTI_1(sc, ATMEGA_UEDATX,
      buf_res.buffer, buf_res.length);


  count -= buf_res.length;
  td->offset += buf_res.length;
  td->remainder -= buf_res.length;
 }


 ATMEGA_WRITE_1(sc, ATMEGA_UEINTX, ATMEGA_UEINTX_RXOUTI ^ 0xFF);


 ATMEGA_WRITE_1(sc, ATMEGA_UEINTX, ATMEGA_UEINTX_FIFOCON ^ 0xFF);


 if ((td->remainder == 0) || got_short) {
  if (td->short_pkt) {

   return (0);
  }

 }
 if (--to) {
  goto repeat;
 }
not_complete:

 ATMEGA_WRITE_1(sc, ATMEGA_UEIENX,
     ATMEGA_UEIENX_RXSTPE | ATMEGA_UEIENX_RXOUTE);
 return (1);
}

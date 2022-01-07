
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct usb_page_search {scalar_t__ length; int buffer; } ;
struct atmegadci_td {int ep_no; scalar_t__ remainder; int error; scalar_t__ max_packet_size; int short_pkt; int offset; int pc; } ;
struct atmegadci_softc {int dummy; } ;


 struct atmegadci_softc* ATMEGA_PC2SC (int ) ;
 int ATMEGA_READ_1 (struct atmegadci_softc*,int ) ;
 int ATMEGA_UEDATX ;
 int ATMEGA_UEIENX ;
 int ATMEGA_UEIENX_RXSTPE ;
 int ATMEGA_UEIENX_TXINE ;
 int ATMEGA_UEINTX ;
 int ATMEGA_UEINTX_FIFOCON ;
 int ATMEGA_UEINTX_RXSTPI ;
 int ATMEGA_UEINTX_TXINI ;
 int ATMEGA_UENUM ;
 int ATMEGA_UESTA0X ;
 int ATMEGA_WRITE_1 (struct atmegadci_softc*,int ,int) ;
 int ATMEGA_WRITE_MULTI_1 (struct atmegadci_softc*,int ,int ,scalar_t__) ;
 int DPRINTFN (int,char*,int,scalar_t__) ;
 int usbd_get_page (int ,int ,struct usb_page_search*) ;

__attribute__((used)) static uint8_t
atmegadci_data_tx(struct atmegadci_td *td)
{
 struct atmegadci_softc *sc;
 struct usb_page_search buf_res;
 uint16_t count;
 uint8_t to;
 uint8_t temp;

 to = 3;


 sc = ATMEGA_PC2SC(td->pc);


 ATMEGA_WRITE_1(sc, ATMEGA_UENUM, td->ep_no);

repeat:


 temp = ATMEGA_READ_1(sc, ATMEGA_UEINTX);

 DPRINTFN(5, "temp=0x%02x rem=%u\n", temp, td->remainder);

 if (temp & ATMEGA_UEINTX_RXSTPI) {




  td->error = 1;
  return (0);
 }

 temp = ATMEGA_READ_1(sc, ATMEGA_UESTA0X);
 if (temp & 3) {

  goto not_complete;
 }

 count = td->max_packet_size;
 if (td->remainder < count) {

  td->short_pkt = 1;
  count = td->remainder;
 }
 while (count > 0) {

  usbd_get_page(td->pc, td->offset, &buf_res);


  if (buf_res.length > count) {
   buf_res.length = count;
  }

  ATMEGA_WRITE_MULTI_1(sc, ATMEGA_UEDATX,
      buf_res.buffer, buf_res.length);


  count -= buf_res.length;
  td->offset += buf_res.length;
  td->remainder -= buf_res.length;
 }


 ATMEGA_WRITE_1(sc, ATMEGA_UEINTX, 0xFF ^ ATMEGA_UEINTX_TXINI);


 ATMEGA_WRITE_1(sc, ATMEGA_UEINTX, 0xFF ^ ATMEGA_UEINTX_FIFOCON);


 if (td->remainder == 0) {
  if (td->short_pkt) {
   return (0);
  }

 }
 if (--to) {
  goto repeat;
 }
not_complete:

 ATMEGA_WRITE_1(sc, ATMEGA_UEIENX,
     ATMEGA_UEIENX_RXSTPE | ATMEGA_UEIENX_TXINE);
 return (1);
}

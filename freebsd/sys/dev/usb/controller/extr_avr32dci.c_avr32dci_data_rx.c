
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct usb_page_search {scalar_t__ length; int buffer; } ;
struct avr32dci_td {int ep_no; scalar_t__ remainder; int error; scalar_t__ max_packet_size; int short_pkt; int offset; int bank_shift; int pc; } ;
struct avr32dci_softc {scalar_t__ physdata; } ;


 int AVR32_EPTCLRSTA (int) ;
 int AVR32_EPTSTA (int) ;
 scalar_t__ AVR32_EPTSTA_BYTE_COUNT (int) ;
 int AVR32_EPTSTA_CURRENT_BANK (int) ;
 int AVR32_EPTSTA_RX_BK_RDY ;
 int AVR32_EPTSTA_RX_SETUP ;
 struct avr32dci_softc* AVR32_PC2SC (int ) ;
 int AVR32_READ_4 (struct avr32dci_softc*,int ) ;
 int AVR32_WRITE_4 (struct avr32dci_softc*,int ,int) ;
 int DPRINTFN (int,char*,...) ;
 int memcpy (int ,scalar_t__,scalar_t__) ;
 int usbd_get_page (int ,int,struct usb_page_search*) ;

__attribute__((used)) static uint8_t
avr32dci_data_rx(struct avr32dci_td *td)
{
 struct avr32dci_softc *sc;
 struct usb_page_search buf_res;
 uint16_t count;
 uint32_t temp;
 uint8_t to;
 uint8_t got_short;

 to = 4;
 got_short = 0;


 sc = AVR32_PC2SC(td->pc);

repeat:


 temp = AVR32_READ_4(sc, AVR32_EPTSTA(td->ep_no));

 DPRINTFN(5, "EPTSTA(%u)=0x%08x\n", td->ep_no, temp);

 if (temp & AVR32_EPTSTA_RX_SETUP) {
  if (td->remainder == 0) {




   DPRINTFN(5, "faking complete\n");
   return (0);
  }



  td->error = 1;
  return (0);
 }

 if (!(temp & AVR32_EPTSTA_RX_BK_RDY)) {

  goto not_complete;
 }

 count = AVR32_EPTSTA_BYTE_COUNT(temp);


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

  memcpy(buf_res.buffer, sc->physdata +
      (AVR32_EPTSTA_CURRENT_BANK(temp) << td->bank_shift) +
      (td->ep_no << 16) + (td->offset % td->max_packet_size), buf_res.length);

  count -= buf_res.length;
  td->offset += buf_res.length;
  td->remainder -= buf_res.length;
 }


 AVR32_WRITE_4(sc, AVR32_EPTCLRSTA(td->ep_no), AVR32_EPTSTA_RX_BK_RDY);


 if ((td->remainder == 0) || got_short) {
  if (td->short_pkt) {

   return (0);
  }

 }
 if (--to) {
  goto repeat;
 }
not_complete:
 return (1);
}

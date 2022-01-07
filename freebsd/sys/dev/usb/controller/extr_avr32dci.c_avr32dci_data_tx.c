
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct usb_page_search {scalar_t__ length; int buffer; } ;
struct avr32dci_td {int ep_no; int error; scalar_t__ max_packet_size; scalar_t__ remainder; int short_pkt; int offset; int bank_shift; int pc; } ;
struct avr32dci_softc {scalar_t__ physdata; } ;


 int AVR32_EPTCTL (int) ;
 int AVR32_EPTCTL_TX_PK_RDY ;
 int AVR32_EPTSTA (int) ;
 int AVR32_EPTSTA_CURRENT_BANK (int) ;
 int AVR32_EPTSTA_RX_SETUP ;
 int AVR32_EPTSTA_TX_PK_RDY ;
 struct avr32dci_softc* AVR32_PC2SC (int ) ;
 int AVR32_READ_4 (struct avr32dci_softc*,int ) ;
 int AVR32_WRITE_4 (struct avr32dci_softc*,int ,int ) ;
 int DPRINTFN (int,char*,int,int) ;
 int memcpy (scalar_t__,int ,scalar_t__) ;
 int usbd_get_page (int ,int,struct usb_page_search*) ;

__attribute__((used)) static uint8_t
avr32dci_data_tx(struct avr32dci_td *td)
{
 struct avr32dci_softc *sc;
 struct usb_page_search buf_res;
 uint16_t count;
 uint8_t to;
 uint32_t temp;

 to = 4;


 sc = AVR32_PC2SC(td->pc);

repeat:


 temp = AVR32_READ_4(sc, AVR32_EPTSTA(td->ep_no));

 DPRINTFN(5, "EPTSTA(%u)=0x%08x\n", td->ep_no, temp);

 if (temp & AVR32_EPTSTA_RX_SETUP) {




  td->error = 1;
  return (0);
 }
 if (temp & AVR32_EPTSTA_TX_PK_RDY) {

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

  memcpy(sc->physdata +
      (AVR32_EPTSTA_CURRENT_BANK(temp) << td->bank_shift) +
      (td->ep_no << 16) + (td->offset % td->max_packet_size),
      buf_res.buffer, buf_res.length);

  count -= buf_res.length;
  td->offset += buf_res.length;
  td->remainder -= buf_res.length;
 }


 AVR32_WRITE_4(sc, AVR32_EPTCTL(td->ep_no), AVR32_EPTCTL_TX_PK_RDY);


 if (td->remainder == 0) {
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

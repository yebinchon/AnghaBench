
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct uss820dci_td {int ep_index; int remainder; int error; int did_enable; int max_packet_size; int short_pkt; int offset; int pc; } ;
struct uss820dci_softc {int sc_io_hdl; int sc_io_tag; } ;
struct usb_page_search {int length; int buffer; } ;


 int DPRINTFN (int,char*,...) ;
 int USS820_DCI_PC2SC (int ) ;
 int USS820_EPCON ;
 int USS820_EPCON_RXIE ;
 int USS820_EPINDEX ;
 int USS820_READ_1 (struct uss820dci_softc*,int ) ;
 int USS820_REG_STRIDE ;
 int USS820_RXCNTH ;
 int USS820_RXCNTL ;
 int USS820_RXCON ;
 int USS820_RXCON_RXFFRC ;
 int USS820_RXDAT ;
 int USS820_RXFLG ;
 int USS820_RXFLG_RXFIF0 ;
 int USS820_RXFLG_RXFIF1 ;
 int USS820_RXFLG_RXOVF ;
 int USS820_RXFLG_RXURF ;
 int USS820_RXSTAT ;
 int USS820_RXSTAT_EDOVW ;
 int USS820_RXSTAT_RXSETUP ;
 int USS820_RXSTAT_RXSOVW ;
 int USS820_WRITE_1 (struct uss820dci_softc*,int ,int) ;
 int bus_space_read_multi_1 (int ,int ,int,int ,int) ;
 int usbd_get_page (int ,int,struct usb_page_search*) ;
 int uss820dci_update_shared_1 (int ,int ,int,int ) ;

__attribute__((used)) static uint8_t
uss820dci_data_rx(struct uss820dci_softc *sc, struct uss820dci_td *td)
{
 struct usb_page_search buf_res;
 uint16_t count;
 uint8_t rx_flag;
 uint8_t rx_stat;
 uint8_t rx_cntl;
 uint8_t to;
 uint8_t got_short;

 to = 2;
 got_short = 0;


 USS820_WRITE_1(sc, USS820_EPINDEX, td->ep_index);


repeat:

 rx_flag = USS820_READ_1(sc, USS820_RXFLG);

 rx_stat = USS820_READ_1(sc, USS820_RXSTAT);

 DPRINTFN(5, "rx_stat=0x%02x rx_flag=0x%02x rem=%u\n",
     rx_stat, rx_flag, td->remainder);

 if (rx_stat & (USS820_RXSTAT_RXSETUP |
     USS820_RXSTAT_RXSOVW |
     USS820_RXSTAT_EDOVW)) {
  if (td->remainder == 0 && td->ep_index == 0) {




   DPRINTFN(5, "faking complete\n");
   return (0);
  }



  td->error = 1;
  return (0);
 }

 if (rx_flag & (USS820_RXFLG_RXOVF |
     USS820_RXFLG_RXURF)) {
  DPRINTFN(5, "overflow or underflow\n");

  td->error = 1;
  return (0);
 }

 if (!(rx_flag & (USS820_RXFLG_RXFIF0 |
     USS820_RXFLG_RXFIF1))) {



  if (!td->did_enable) {
   uss820dci_update_shared_1(USS820_DCI_PC2SC(td->pc),
       USS820_EPCON, 0xFF, USS820_EPCON_RXIE);
   td->did_enable = 1;
  }
  return (1);
 }

 count = USS820_READ_1(sc, USS820_RXCNTL);
 count |= (USS820_READ_1(sc, USS820_RXCNTH) << 8);
 count &= 0x3FF;

 DPRINTFN(5, "count=0x%04x\n", count);


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

  bus_space_read_multi_1(sc->sc_io_tag, sc->sc_io_hdl,
      USS820_RXDAT * USS820_REG_STRIDE, buf_res.buffer, buf_res.length);


  count -= buf_res.length;
  td->offset += buf_res.length;
  td->remainder -= buf_res.length;
 }


 rx_cntl = USS820_READ_1(sc, USS820_RXCON);
 rx_cntl |= USS820_RXCON_RXFFRC;
 USS820_WRITE_1(sc, USS820_RXCON, rx_cntl);


 if ((td->remainder == 0) || got_short) {
  if (td->short_pkt) {

   return (0);
  }

 }
 if (--to) {
  goto repeat;
 }
 return (1);
}

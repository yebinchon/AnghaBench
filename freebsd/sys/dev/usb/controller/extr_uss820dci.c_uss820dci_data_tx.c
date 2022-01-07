
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct uss820dci_td {scalar_t__ ep_index; scalar_t__ remainder; int error; scalar_t__ max_packet_size; int short_pkt; int did_enable; int pc; int offset; int support_multi_buffer; } ;
struct uss820dci_softc {int sc_io_hdl; int sc_io_tag; } ;
struct usb_page_search {scalar_t__ length; int buffer; } ;


 int DPRINTFN (int,char*,int,...) ;
 int USS820_DCI_PC2SC (int ) ;
 int USS820_EPCON ;
 int USS820_EPCON_TXOE ;
 int USS820_EPINDEX ;
 int USS820_READ_1 (struct uss820dci_softc*,int ) ;
 int USS820_REG_STRIDE ;
 int USS820_RXSTAT ;
 int USS820_RXSTAT_EDOVW ;
 int USS820_RXSTAT_RXSETUP ;
 int USS820_RXSTAT_RXSOVW ;
 int USS820_TXCNTH ;
 int USS820_TXCNTL ;
 int USS820_TXDAT ;
 int USS820_TXFLG ;
 int USS820_TXFLG_TXFIF0 ;
 int USS820_TXFLG_TXFIF1 ;
 int USS820_TXFLG_TXOVF ;
 int USS820_TXFLG_TXURF ;
 int USS820_WRITE_1 (struct uss820dci_softc*,int ,scalar_t__) ;
 int bus_space_write_multi_1 (int ,int ,int,int ,scalar_t__) ;
 int usbd_get_page (int ,int ,struct usb_page_search*) ;
 int uss820dci_update_shared_1 (int ,int ,int,int ) ;

__attribute__((used)) static uint8_t
uss820dci_data_tx(struct uss820dci_softc *sc, struct uss820dci_td *td)
{
 struct usb_page_search buf_res;
 uint16_t count;
 uint16_t count_copy;
 uint8_t rx_stat;
 uint8_t tx_flag;
 uint8_t to;


 USS820_WRITE_1(sc, USS820_EPINDEX, td->ep_index);

 to = 2;

repeat:

 tx_flag = USS820_READ_1(sc, USS820_TXFLG);

 DPRINTFN(5, "tx_flag=0x%02x rem=%u\n", tx_flag, td->remainder);

 if (td->ep_index == 0) {

  rx_stat = USS820_READ_1(sc, USS820_RXSTAT);

  DPRINTFN(5, "rx_stat=0x%02x\n", rx_stat);

  if (rx_stat & (USS820_RXSTAT_RXSETUP |
      USS820_RXSTAT_RXSOVW |
      USS820_RXSTAT_EDOVW)) {




   td->error = 1;
   return (0);
  }
 }
 if (tx_flag & (USS820_TXFLG_TXOVF |
     USS820_TXFLG_TXURF)) {
  td->error = 1;
  return (0);
 }
 if (tx_flag & USS820_TXFLG_TXFIF0) {
  if (tx_flag & USS820_TXFLG_TXFIF1) {
   return (1);
  }
 }
 if ((!td->support_multi_buffer) &&
     (tx_flag & (USS820_TXFLG_TXFIF0 |
     USS820_TXFLG_TXFIF1))) {
  return (1);
 }
 count = td->max_packet_size;
 if (td->remainder < count) {

  td->short_pkt = 1;
  count = td->remainder;
 }
 count_copy = count;
 while (count > 0) {

  usbd_get_page(td->pc, td->offset, &buf_res);


  if (buf_res.length > count) {
   buf_res.length = count;
  }

  bus_space_write_multi_1(sc->sc_io_tag, sc->sc_io_hdl,
      USS820_TXDAT * USS820_REG_STRIDE, buf_res.buffer, buf_res.length);


  count -= buf_res.length;
  td->offset += buf_res.length;
  td->remainder -= buf_res.length;
 }


 USS820_WRITE_1(sc, USS820_TXCNTH, count_copy >> 8);


 USS820_WRITE_1(sc, USS820_TXCNTL, count_copy);





 if (!td->did_enable) {
  uss820dci_update_shared_1(USS820_DCI_PC2SC(td->pc),
      USS820_EPCON, 0xFF, USS820_EPCON_TXOE);
  td->did_enable = 1;
 }

 if (td->remainder == 0) {
  if (td->short_pkt) {
   return (0);
  }

 }
 if (--to) {
  goto repeat;
 }
 return (1);
}

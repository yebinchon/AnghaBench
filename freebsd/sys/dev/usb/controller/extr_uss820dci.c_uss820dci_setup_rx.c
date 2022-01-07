
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct uss820dci_td {int ep_index; int remainder; int did_stall; int offset; int pc; } ;
struct uss820dci_softc {int sc_dv_addr; int sc_io_hdl; int sc_io_tag; } ;
struct usb_device_request {scalar_t__ bmRequestType; scalar_t__ bRequest; int* wValue; } ;
typedef int req ;


 int DPRINTF (char*) ;
 int DPRINTFN (int,char*,...) ;
 scalar_t__ UR_SET_ADDRESS ;
 int USS820_EPCON ;
 int USS820_EPCON_RXIE ;
 int USS820_EPCON_RXSTL ;
 int USS820_EPCON_TXOE ;
 int USS820_EPCON_TXSTL ;
 int USS820_EPINDEX ;
 int USS820_READ_1 (struct uss820dci_softc*,int ) ;
 int USS820_REG_STRIDE ;
 int USS820_RXCNTH ;
 int USS820_RXCNTL ;
 int USS820_RXCON ;
 int USS820_RXCON_RXFFRC ;
 int USS820_RXDAT ;
 int USS820_RXSTAT ;
 int USS820_RXSTAT_EDOVW ;
 int USS820_RXSTAT_RXSETUP ;
 int USS820_RXSTAT_STOVW ;
 int USS820_TXCON ;
 int USS820_TXCON_TXCLR ;
 int USS820_WRITE_1 (struct uss820dci_softc*,int ,int) ;
 scalar_t__ UT_WRITE_DEVICE ;
 int bus_space_read_multi_1 (int ,int ,int,void*,int) ;
 int usbd_copy_in (int ,int ,struct usb_device_request*,int) ;
 int uss820dci_update_shared_1 (struct uss820dci_softc*,int ,int,int) ;

__attribute__((used)) static uint8_t
uss820dci_setup_rx(struct uss820dci_softc *sc, struct uss820dci_td *td)
{
 struct usb_device_request req;
 uint16_t count;
 uint8_t rx_stat;
 uint8_t temp;


 USS820_WRITE_1(sc, USS820_EPINDEX, td->ep_index);


 rx_stat = USS820_READ_1(sc, USS820_RXSTAT);

 DPRINTFN(5, "rx_stat=0x%02x rem=%u\n", rx_stat, td->remainder);

 if (!(rx_stat & USS820_RXSTAT_RXSETUP)) {
  goto not_complete;
 }

 td->did_stall = 0;


 uss820dci_update_shared_1(sc, USS820_EPCON,
     0xFF ^ (USS820_EPCON_TXSTL |
     USS820_EPCON_RXSTL |
     USS820_EPCON_RXIE |
     USS820_EPCON_TXOE), 0);


 uss820dci_update_shared_1(sc, USS820_RXSTAT,
     0xFF ^ USS820_RXSTAT_EDOVW, 0);


 count = USS820_READ_1(sc, USS820_RXCNTL);
 count |= (USS820_READ_1(sc, USS820_RXCNTH) << 8);
 count &= 0x3FF;


 if (count != td->remainder) {
  DPRINTFN(0, "Invalid SETUP packet "
      "length, %d bytes\n", count);
  goto setup_not_complete;
 }
 if (count != sizeof(req)) {
  DPRINTFN(0, "Unsupported SETUP packet "
      "length, %d bytes\n", count);
  goto setup_not_complete;
 }

 bus_space_read_multi_1(sc->sc_io_tag, sc->sc_io_hdl,
     USS820_RXDAT * USS820_REG_STRIDE, (void *)&req, sizeof(req));


 rx_stat = USS820_READ_1(sc, USS820_RXSTAT);

 if (rx_stat & (USS820_RXSTAT_EDOVW |
     USS820_RXSTAT_STOVW)) {
  DPRINTF("new SETUP packet received\n");
  return (1);
 }

 uss820dci_update_shared_1(sc, USS820_RXSTAT,
     0xFF ^ (USS820_RXSTAT_RXSETUP |
     USS820_RXSTAT_EDOVW |
     USS820_RXSTAT_STOVW), 0);


 temp = USS820_READ_1(sc, USS820_RXCON);
 temp |= USS820_RXCON_RXFFRC;
 USS820_WRITE_1(sc, USS820_RXCON, temp);


 usbd_copy_in(td->pc, 0, &req, sizeof(req));

 td->offset = sizeof(req);
 td->remainder = 0;


 if ((req.bmRequestType == UT_WRITE_DEVICE) &&
     (req.bRequest == UR_SET_ADDRESS)) {
  sc->sc_dv_addr = req.wValue[0] & 0x7F;
 } else {
  sc->sc_dv_addr = 0xFF;
 }


 temp = USS820_READ_1(sc, USS820_TXCON);
 temp |= USS820_TXCON_TXCLR;
 USS820_WRITE_1(sc, USS820_TXCON, temp);
 temp &= ~USS820_TXCON_TXCLR;
 USS820_WRITE_1(sc, USS820_TXCON, temp);

 return (0);

setup_not_complete:


 temp = USS820_READ_1(sc, USS820_RXCON);
 temp |= USS820_RXCON_RXFFRC;
 USS820_WRITE_1(sc, USS820_RXCON, temp);



not_complete:

 if (!td->did_stall) {
  DPRINTFN(5, "stalling\n");

  uss820dci_update_shared_1(sc, USS820_EPCON, 0xFF,
      (USS820_EPCON_TXSTL | USS820_EPCON_RXSTL));

  td->did_stall = 1;
 }


 if (rx_stat & USS820_RXSTAT_RXSETUP) {
  uss820dci_update_shared_1(sc, USS820_RXSTAT,
      0xFF ^ (USS820_RXSTAT_EDOVW |
      USS820_RXSTAT_STOVW |
      USS820_RXSTAT_RXSETUP), 0);
 }
 return (1);
}

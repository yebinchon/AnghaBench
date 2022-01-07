
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct usb_device_request {scalar_t__ bmRequestType; scalar_t__ bRequest; int* wValue; } ;
struct avr32dci_td {int did_stall; int remainder; int offset; int ep_no; int pc; } ;
struct avr32dci_softc {int sc_dv_addr; int physdata; } ;
typedef int req ;


 int AVR32_CTRL_DEV_ADDR ;
 int AVR32_CTRL_DEV_FADDR_EN ;
 int AVR32_EPTCLRSTA (int ) ;
 int AVR32_EPTSETSTA (int ) ;
 int AVR32_EPTSTA (int ) ;
 int AVR32_EPTSTA_BYTE_COUNT (int) ;
 int AVR32_EPTSTA_FRCESTALL ;
 int AVR32_EPTSTA_RX_SETUP ;
 struct avr32dci_softc* AVR32_PC2SC (int ) ;
 int AVR32_READ_4 (struct avr32dci_softc*,int ) ;
 int AVR32_WRITE_4 (struct avr32dci_softc*,int ,int) ;
 int DPRINTFN (int,char*,...) ;
 scalar_t__ UR_SET_ADDRESS ;
 scalar_t__ UT_WRITE_DEVICE ;
 int avr32dci_mod_ctrl (struct avr32dci_softc*,int,int) ;
 int memcpy (struct usb_device_request*,int ,int) ;
 int usbd_copy_in (int ,int ,struct usb_device_request*,int) ;

__attribute__((used)) static uint8_t
avr32dci_setup_rx(struct avr32dci_td *td)
{
 struct avr32dci_softc *sc;
 struct usb_device_request req;
 uint16_t count;
 uint32_t temp;


 sc = AVR32_PC2SC(td->pc);


 temp = AVR32_READ_4(sc, AVR32_EPTSTA(td->ep_no));

 DPRINTFN(5, "EPTSTA(%u)=0x%08x\n", td->ep_no, temp);

 if (!(temp & AVR32_EPTSTA_RX_SETUP)) {
  goto not_complete;
 }

 td->did_stall = 0;

 count = AVR32_EPTSTA_BYTE_COUNT(temp);


 if (count != td->remainder) {
  DPRINTFN(0, "Invalid SETUP packet "
      "length, %d bytes\n", count);
  goto not_complete;
 }
 if (count != sizeof(req)) {
  DPRINTFN(0, "Unsupported SETUP packet "
      "length, %d bytes\n", count);
  goto not_complete;
 }

 memcpy(&req, sc->physdata, sizeof(req));


 usbd_copy_in(td->pc, 0, &req, sizeof(req));

 td->offset = sizeof(req);
 td->remainder = 0;


 if ((req.bmRequestType == UT_WRITE_DEVICE) &&
     (req.bRequest == UR_SET_ADDRESS)) {
  sc->sc_dv_addr = req.wValue[0] & 0x7F;

  avr32dci_mod_ctrl(sc, 0, AVR32_CTRL_DEV_FADDR_EN |
      AVR32_CTRL_DEV_ADDR);
  avr32dci_mod_ctrl(sc, sc->sc_dv_addr, 0);
 } else {
  sc->sc_dv_addr = 0xFF;
 }


 AVR32_WRITE_4(sc, AVR32_EPTCLRSTA(td->ep_no), AVR32_EPTSTA_RX_SETUP);
 return (0);

not_complete:
 if (temp & AVR32_EPTSTA_RX_SETUP) {

  AVR32_WRITE_4(sc, AVR32_EPTCLRSTA(td->ep_no), AVR32_EPTSTA_RX_SETUP);
 }

 if (!td->did_stall) {
  DPRINTFN(5, "stalling\n");
  AVR32_WRITE_4(sc, AVR32_EPTSETSTA(td->ep_no),
      AVR32_EPTSTA_FRCESTALL);
  td->did_stall = 1;
 }
 return (1);
}

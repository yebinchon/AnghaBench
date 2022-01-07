
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct usb_device_request {scalar_t__ bmRequestType; scalar_t__ bRequest; int* wValue; } ;
struct atmegadci_td {int ep_no; int did_stall; int remainder; int offset; int pc; } ;
struct atmegadci_softc {int sc_dv_addr; } ;
typedef int req ;


 struct atmegadci_softc* ATMEGA_PC2SC (int ) ;
 int ATMEGA_READ_1 (struct atmegadci_softc*,int ) ;
 int ATMEGA_READ_MULTI_1 (struct atmegadci_softc*,int ,void*,int) ;
 int ATMEGA_UDADDR ;
 int ATMEGA_UEBCHX ;
 int ATMEGA_UEBCLX ;
 int ATMEGA_UECONX ;
 int ATMEGA_UECONX_EPEN ;
 int ATMEGA_UECONX_STALLRQ ;
 int ATMEGA_UEDATX ;
 int ATMEGA_UEIENX ;
 int ATMEGA_UEIENX_RXSTPE ;
 int ATMEGA_UEINTX ;
 int ATMEGA_UEINTX_RXSTPI ;
 int ATMEGA_UENUM ;
 int ATMEGA_WRITE_1 (struct atmegadci_softc*,int ,int) ;
 int DPRINTFN (int,char*,...) ;
 scalar_t__ UR_SET_ADDRESS ;
 scalar_t__ UT_WRITE_DEVICE ;
 int usbd_copy_in (int ,int ,struct usb_device_request*,int) ;

__attribute__((used)) static uint8_t
atmegadci_setup_rx(struct atmegadci_td *td)
{
 struct atmegadci_softc *sc;
 struct usb_device_request req;
 uint16_t count;
 uint8_t temp;


 sc = ATMEGA_PC2SC(td->pc);


 ATMEGA_WRITE_1(sc, ATMEGA_UENUM, td->ep_no);


 temp = ATMEGA_READ_1(sc, ATMEGA_UEINTX);

 DPRINTFN(5, "UEINTX=0x%02x\n", temp);

 if (!(temp & ATMEGA_UEINTX_RXSTPI)) {
  goto not_complete;
 }

 td->did_stall = 0;

 count =
     (ATMEGA_READ_1(sc, ATMEGA_UEBCHX) << 8) |
     (ATMEGA_READ_1(sc, ATMEGA_UEBCLX));


 count &= 0x7FF;


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

 ATMEGA_READ_MULTI_1(sc, ATMEGA_UEDATX,
     (void *)&req, sizeof(req));


 usbd_copy_in(td->pc, 0, &req, sizeof(req));

 td->offset = sizeof(req);
 td->remainder = 0;


 if ((req.bmRequestType == UT_WRITE_DEVICE) &&
     (req.bRequest == UR_SET_ADDRESS)) {
  sc->sc_dv_addr = req.wValue[0] & 0x7F;

  ATMEGA_WRITE_1(sc, ATMEGA_UDADDR, sc->sc_dv_addr);
 } else {
  sc->sc_dv_addr = 0xFF;
 }


 ATMEGA_WRITE_1(sc, ATMEGA_UEINTX, 0);
 return (0);

not_complete:

 if (!td->did_stall) {
  DPRINTFN(5, "stalling\n");
  ATMEGA_WRITE_1(sc, ATMEGA_UECONX,
      ATMEGA_UECONX_EPEN |
      ATMEGA_UECONX_STALLRQ);
  td->did_stall = 1;
 }
 if (temp & ATMEGA_UEINTX_RXSTPI) {

  ATMEGA_WRITE_1(sc, ATMEGA_UEINTX, ~ATMEGA_UEINTX_RXSTPI);
 }

 ATMEGA_WRITE_1(sc, ATMEGA_UEIENX, ATMEGA_UEIENX_RXSTPE);
 return (1);
}

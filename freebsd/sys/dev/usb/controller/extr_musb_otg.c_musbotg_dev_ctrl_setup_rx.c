
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct usb_device_request {scalar_t__ bmRequestType; scalar_t__ bRequest; int* wValue; } ;
struct musbotg_td {int channel; int did_stall; int remainder; int offset; int pc; } ;
struct musbotg_softc {int sc_ep0_busy; int sc_dv_addr; scalar_t__ sc_ep0_cmd; int sc_io_hdl; int sc_io_tag; } ;
typedef int req ;


 int DPRINTFN (int,char*,...) ;
 int MUSB2_MASK_CSR0L_DATAEND ;
 int MUSB2_MASK_CSR0L_RXPKTRDY ;
 scalar_t__ MUSB2_MASK_CSR0L_RXPKTRDY_CLR ;
 scalar_t__ MUSB2_MASK_CSR0L_SENDSTALL ;
 int MUSB2_MASK_CSR0L_SENTSTALL ;
 int MUSB2_MASK_CSR0L_SETUPEND ;
 scalar_t__ MUSB2_MASK_CSR0L_SETUPEND_CLR ;
 int MUSB2_READ_1 (struct musbotg_softc*,int ) ;
 int MUSB2_READ_2 (struct musbotg_softc*,int ) ;
 int MUSB2_REG_EPFIFO (int ) ;
 int MUSB2_REG_EPINDEX ;
 int MUSB2_REG_RXCOUNT ;
 int MUSB2_REG_TXCSRL ;
 int MUSB2_WRITE_1 (struct musbotg_softc*,int ,scalar_t__) ;
 struct musbotg_softc* MUSBOTG_PC2SC (int ) ;
 scalar_t__ UR_SET_ADDRESS ;
 scalar_t__ UT_WRITE_DEVICE ;
 int bus_space_read_multi_1 (int ,int ,int ,void*,int) ;
 int musbotg_channel_alloc (struct musbotg_softc*,struct musbotg_td*,int ) ;
 int musbotg_channel_free (struct musbotg_softc*,struct musbotg_td*) ;
 int usbd_copy_in (int ,int ,struct usb_device_request*,int) ;

__attribute__((used)) static uint8_t
musbotg_dev_ctrl_setup_rx(struct musbotg_td *td)
{
 struct musbotg_softc *sc;
 struct usb_device_request req;
 uint16_t count;
 uint8_t csr;


 sc = MUSBOTG_PC2SC(td->pc);

 if (td->channel == -1)
  td->channel = musbotg_channel_alloc(sc, td, 0);


 if (td->channel == -1)
  return (1);

 DPRINTFN(1, "ep_no=%d\n", td->channel);


 MUSB2_WRITE_1(sc, MUSB2_REG_EPINDEX, 0);


 csr = MUSB2_READ_1(sc, MUSB2_REG_TXCSRL);

 DPRINTFN(4, "csr=0x%02x\n", csr);





 if (csr & MUSB2_MASK_CSR0L_DATAEND) {

  td->did_stall = 1;

  DPRINTFN(1, "CSR0 DATAEND\n");
  goto not_complete;
 }

 if (csr & MUSB2_MASK_CSR0L_SENTSTALL) {

  MUSB2_WRITE_1(sc, MUSB2_REG_TXCSRL, 0);

  csr = MUSB2_READ_1(sc, MUSB2_REG_TXCSRL);

  sc->sc_ep0_busy = 0;
 }
 if (csr & MUSB2_MASK_CSR0L_SETUPEND) {

  MUSB2_WRITE_1(sc, MUSB2_REG_TXCSRL,
      MUSB2_MASK_CSR0L_SETUPEND_CLR);

  csr = MUSB2_READ_1(sc, MUSB2_REG_TXCSRL);

  sc->sc_ep0_busy = 0;
 }
 if (sc->sc_ep0_busy) {
  DPRINTFN(1, "EP0 BUSY\n");
  goto not_complete;
 }
 if (!(csr & MUSB2_MASK_CSR0L_RXPKTRDY)) {
  goto not_complete;
 }

 count = MUSB2_READ_2(sc, MUSB2_REG_RXCOUNT);


 if (count != td->remainder) {
  DPRINTFN(1, "Invalid SETUP packet "
      "length, %d bytes\n", count);
  MUSB2_WRITE_1(sc, MUSB2_REG_TXCSRL,
        MUSB2_MASK_CSR0L_RXPKTRDY_CLR);

  td->did_stall = 1;
  goto not_complete;
 }
 if (count != sizeof(req)) {
  DPRINTFN(1, "Unsupported SETUP packet "
      "length, %d bytes\n", count);
  MUSB2_WRITE_1(sc, MUSB2_REG_TXCSRL,
        MUSB2_MASK_CSR0L_RXPKTRDY_CLR);

  td->did_stall = 1;
  goto not_complete;
 }

 td->did_stall = 0;


 bus_space_read_multi_1(sc->sc_io_tag, sc->sc_io_hdl,
     MUSB2_REG_EPFIFO(0), (void *)&req, sizeof(req));


 usbd_copy_in(td->pc, 0, &req, sizeof(req));

 td->offset = sizeof(req);
 td->remainder = 0;


 sc->sc_ep0_cmd = MUSB2_MASK_CSR0L_RXPKTRDY_CLR;


 sc->sc_ep0_busy = 1;


 if ((req.bmRequestType == UT_WRITE_DEVICE) &&
     (req.bRequest == UR_SET_ADDRESS)) {
  sc->sc_dv_addr = req.wValue[0] & 0x7F;
 } else {
  sc->sc_dv_addr = 0xFF;
 }

 musbotg_channel_free(sc, td);
 return (0);

not_complete:

 if (!td->did_stall) {
  DPRINTFN(4, "stalling\n");
  MUSB2_WRITE_1(sc, MUSB2_REG_TXCSRL,
      MUSB2_MASK_CSR0L_SENDSTALL);
  td->did_stall = 1;
 }
 return (1);
}

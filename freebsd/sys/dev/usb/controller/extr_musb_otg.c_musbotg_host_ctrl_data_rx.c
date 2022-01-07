
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct usb_page_search {int length; void* buffer; } ;
struct musbotg_td {int channel; int transaction_started; int dev_addr; int haddr; int hport; int transfer_type; int error; int max_frame_size; int short_pkt; int remainder; int offset; int pc; } ;
struct musbotg_softc {void* sc_bounce_buf; int sc_io_hdl; int sc_io_tag; } ;


 int DPRINTFN (int,char*,int) ;
 int MAX_NAK_TO ;
 int MUSB2_MASK_CSR0L_ERROR ;
 int MUSB2_MASK_CSR0L_NAKTIMO ;
 int MUSB2_MASK_CSR0L_REQPKT ;
 int MUSB2_MASK_CSR0L_RXPKTRDY ;
 int MUSB2_MASK_CSR0L_RXSTALL ;
 int MUSB2_READ_1 (struct musbotg_softc*,int ) ;
 int MUSB2_READ_2 (struct musbotg_softc*,int ) ;
 int MUSB2_REG_EPFIFO (int ) ;
 int MUSB2_REG_EPINDEX ;
 int MUSB2_REG_RXCOUNT ;
 int MUSB2_REG_RXFADDR (int ) ;
 int MUSB2_REG_RXHADDR (int ) ;
 int MUSB2_REG_RXHUBPORT (int ) ;
 int MUSB2_REG_RXNAKLIMIT ;
 int MUSB2_REG_RXTI ;
 int MUSB2_REG_TXCSRL ;
 int MUSB2_WRITE_1 (struct musbotg_softc*,int ,int) ;
 struct musbotg_softc* MUSBOTG_PC2SC (int ) ;
 int USB_P2U (void*) ;
 int bus_space_read_multi_1 (int ,int ,int ,void*,int) ;
 int bus_space_read_multi_4 (int ,int ,int ,void*,int) ;
 int musbotg_channel_alloc (struct musbotg_softc*,struct musbotg_td*,int ) ;
 int musbotg_channel_free (struct musbotg_softc*,struct musbotg_td*) ;
 int usbd_copy_in (int ,int,void*,int) ;
 int usbd_get_page (int ,int,struct usb_page_search*) ;

__attribute__((used)) static uint8_t
musbotg_host_ctrl_data_rx(struct musbotg_td *td)
{
 struct usb_page_search buf_res;
 struct musbotg_softc *sc;
 uint16_t count;
 uint8_t csr;
 uint8_t got_short;


 sc = MUSBOTG_PC2SC(td->pc);

 if (td->channel == -1)
  td->channel = musbotg_channel_alloc(sc, td, 0);


 if (td->channel == -1)
  return (1);

 DPRINTFN(1, "ep_no=%d\n", td->channel);


 MUSB2_WRITE_1(sc, MUSB2_REG_EPINDEX, 0);


 csr = MUSB2_READ_1(sc, MUSB2_REG_TXCSRL);

 DPRINTFN(4, "csr=0x%02x\n", csr);

 got_short = 0;
 if (!td->transaction_started) {
  td->transaction_started = 1;

  MUSB2_WRITE_1(sc, MUSB2_REG_RXNAKLIMIT, MAX_NAK_TO);

  MUSB2_WRITE_1(sc, MUSB2_REG_RXFADDR(0),
      td->dev_addr);
  MUSB2_WRITE_1(sc, MUSB2_REG_RXHADDR(0), td->haddr);
  MUSB2_WRITE_1(sc, MUSB2_REG_RXHUBPORT(0), td->hport);
  MUSB2_WRITE_1(sc, MUSB2_REG_RXTI, td->transfer_type);

  MUSB2_WRITE_1(sc, MUSB2_REG_TXCSRL,
      MUSB2_MASK_CSR0L_REQPKT);

  return (1);
 }

 if (csr & MUSB2_MASK_CSR0L_NAKTIMO) {
  csr &= ~MUSB2_MASK_CSR0L_REQPKT;
  MUSB2_WRITE_1(sc, MUSB2_REG_TXCSRL, csr);

  csr &= ~MUSB2_MASK_CSR0L_NAKTIMO;
  MUSB2_WRITE_1(sc, MUSB2_REG_TXCSRL, csr);

  td->error = 1;
 }


 if (csr & (MUSB2_MASK_CSR0L_RXSTALL |
     MUSB2_MASK_CSR0L_ERROR))
 {

  MUSB2_WRITE_1(sc, MUSB2_REG_TXCSRL, 0);
  DPRINTFN(1, "error bit set, csr=0x%02x\n", csr);
  td->error = 1;
 }

 if (td->error) {
  musbotg_channel_free(sc, td);
  return (0);
 }

 if (!(csr & MUSB2_MASK_CSR0L_RXPKTRDY))
  return (1);


 count = MUSB2_READ_2(sc, MUSB2_REG_RXCOUNT);


 if (count != td->max_frame_size) {
  if (count < td->max_frame_size) {

   td->short_pkt = 1;
   got_short = 1;
  } else {

   td->error = 1;
   musbotg_channel_free(sc, td);
   return (0);
  }
 }

 if (count > td->remainder) {

  td->error = 1;
  musbotg_channel_free(sc, td);
  return (0);
 }
 while (count > 0) {
  uint32_t temp;

  usbd_get_page(td->pc, td->offset, &buf_res);


  if (buf_res.length > count) {
   buf_res.length = count;
  }

  if (USB_P2U(buf_res.buffer) & 3) {

   temp = count & ~3;

   if (temp) {

    bus_space_read_multi_4(sc->sc_io_tag, sc->sc_io_hdl,
        MUSB2_REG_EPFIFO(0), sc->sc_bounce_buf,
        temp / 4);
   }
   temp = count & 3;
   if (temp) {

    bus_space_read_multi_1(sc->sc_io_tag, sc->sc_io_hdl,
        MUSB2_REG_EPFIFO(0),
        (void *)(&sc->sc_bounce_buf[count / 4]), temp);
   }
   usbd_copy_in(td->pc, td->offset,
       sc->sc_bounce_buf, count);


   td->offset += count;
   td->remainder -= count;
   break;
  }

  if (buf_res.length >= 4) {


   bus_space_read_multi_4(sc->sc_io_tag, sc->sc_io_hdl,
       MUSB2_REG_EPFIFO(0), buf_res.buffer,
       buf_res.length / 4);

   temp = buf_res.length & ~3;


   count -= temp;
   td->offset += temp;
   td->remainder -= temp;
   continue;
  }

  bus_space_read_multi_1(sc->sc_io_tag, sc->sc_io_hdl,
      MUSB2_REG_EPFIFO(0), buf_res.buffer, buf_res.length);


  count -= buf_res.length;
  td->offset += buf_res.length;
  td->remainder -= buf_res.length;
 }

 csr &= ~MUSB2_MASK_CSR0L_RXPKTRDY;
 MUSB2_WRITE_1(sc, MUSB2_REG_TXCSRL, csr);


 if ((td->remainder == 0) || got_short) {
  if (td->short_pkt) {


   musbotg_channel_free(sc, td);
   return (0);
  }

 }

 td->transaction_started = 1;
 MUSB2_WRITE_1(sc, MUSB2_REG_TXCSRL,
     MUSB2_MASK_CSR0L_REQPKT);

 return (1);
}

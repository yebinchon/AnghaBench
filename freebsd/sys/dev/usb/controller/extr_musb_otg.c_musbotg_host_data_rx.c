
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct usb_page_search {int length; void* buffer; } ;
struct musbotg_td {int channel; int transaction_started; int dev_addr; int haddr; int hport; int transfer_type; int toggle; int error; int max_frame_size; int short_pkt; int remainder; int offset; int pc; int reg_max_packet; } ;
struct musbotg_softc {void* sc_bounce_buf; int sc_io_hdl; int sc_io_tag; } ;


 int DPRINTFN (int,char*,...) ;
 int MAX_NAK_TO ;
 int MUSB2_MASK_CSRH_RXDT_VAL ;
 int MUSB2_MASK_CSRH_RXDT_WREN ;
 int MUSB2_MASK_CSRL_RXERROR ;
 int MUSB2_MASK_CSRL_RXNAKTO ;
 int MUSB2_MASK_CSRL_RXPKTRDY ;
 int MUSB2_MASK_CSRL_RXREQPKT ;
 int MUSB2_MASK_CSRL_RXSTALL ;
 int MUSB2_MASK_TI_PROTO_ISOC ;
 int MUSB2_READ_1 (struct musbotg_softc*,int ) ;
 int MUSB2_READ_2 (struct musbotg_softc*,int ) ;
 int MUSB2_REG_EPFIFO (int) ;
 int MUSB2_REG_EPINDEX ;
 int MUSB2_REG_RXCOUNT ;
 int MUSB2_REG_RXCSRH ;
 int MUSB2_REG_RXCSRL ;
 int MUSB2_REG_RXFADDR (int) ;
 int MUSB2_REG_RXHADDR (int) ;
 int MUSB2_REG_RXHUBPORT (int) ;
 int MUSB2_REG_RXMAXP ;
 int MUSB2_REG_RXNAKLIMIT ;
 int MUSB2_REG_RXTI ;
 int MUSB2_WRITE_1 (struct musbotg_softc*,int ,int) ;
 int MUSB2_WRITE_2 (struct musbotg_softc*,int ,int ) ;
 struct musbotg_softc* MUSBOTG_PC2SC (int ) ;
 int USB_P2U (void*) ;
 int bus_space_read_multi_1 (int ,int ,int ,void*,int) ;
 int bus_space_read_multi_4 (int ,int ,int ,void*,int) ;
 int musbotg_channel_alloc (struct musbotg_softc*,struct musbotg_td*,int ) ;
 int musbotg_channel_free (struct musbotg_softc*,struct musbotg_td*) ;
 int usbd_copy_in (int ,int,void*,int) ;
 int usbd_get_page (int ,int,struct usb_page_search*) ;

__attribute__((used)) static uint8_t
musbotg_host_data_rx(struct musbotg_td *td)
{
 struct usb_page_search buf_res;
 struct musbotg_softc *sc;
 uint16_t count;
 uint8_t csr, csrh;
 uint8_t to;
 uint8_t got_short;


 sc = MUSBOTG_PC2SC(td->pc);

 if (td->channel == -1)
  td->channel = musbotg_channel_alloc(sc, td, 0);


 if (td->channel == -1)
  return (1);

 DPRINTFN(1, "ep_no=%d\n", td->channel);

 to = 8;
 got_short = 0;


 MUSB2_WRITE_1(sc, MUSB2_REG_EPINDEX, td->channel);

repeat:

 csr = MUSB2_READ_1(sc, MUSB2_REG_RXCSRL);
 DPRINTFN(4, "csr=0x%02x\n", csr);

 if (!td->transaction_started) {

  MUSB2_WRITE_1(sc, MUSB2_REG_RXFADDR(td->channel),
      td->dev_addr);


  MUSB2_WRITE_1(sc, MUSB2_REG_RXHADDR(td->channel),
      td->haddr);
  MUSB2_WRITE_1(sc, MUSB2_REG_RXHUBPORT(td->channel),
      td->hport);


  if (td->transfer_type & MUSB2_MASK_TI_PROTO_ISOC)
   MUSB2_WRITE_1(sc, MUSB2_REG_RXNAKLIMIT, 0);
  else
   MUSB2_WRITE_1(sc, MUSB2_REG_RXNAKLIMIT, MAX_NAK_TO);


  MUSB2_WRITE_1(sc, MUSB2_REG_RXTI, td->transfer_type);


  MUSB2_WRITE_2(sc, MUSB2_REG_RXMAXP, td->reg_max_packet);


  csrh = MUSB2_READ_1(sc, MUSB2_REG_RXCSRH);
  DPRINTFN(4, "csrh=0x%02x\n", csrh);

  csrh |= MUSB2_MASK_CSRH_RXDT_WREN;
  if (td->toggle)
   csrh |= MUSB2_MASK_CSRH_RXDT_VAL;
  else
   csrh &= ~MUSB2_MASK_CSRH_RXDT_VAL;


  MUSB2_WRITE_1(sc, MUSB2_REG_RXCSRH, csrh);


  MUSB2_WRITE_1(sc, MUSB2_REG_RXCSRL,
      MUSB2_MASK_CSRL_RXREQPKT);

  td->transaction_started = 1;
  return (1);
 }


 if (csr & MUSB2_MASK_CSRL_RXNAKTO) {
  DPRINTFN(4, "NAK Timeout\n");
  if (csr & MUSB2_MASK_CSRL_RXREQPKT) {
   csr &= ~MUSB2_MASK_CSRL_RXREQPKT;
   MUSB2_WRITE_1(sc, MUSB2_REG_RXCSRL, csr);

   csr &= ~MUSB2_MASK_CSRL_RXNAKTO;
   MUSB2_WRITE_1(sc, MUSB2_REG_RXCSRL, csr);
  }

  td->error = 1;
 }

 if (csr & MUSB2_MASK_CSRL_RXERROR) {
  DPRINTFN(4, "RXERROR\n");
  td->error = 1;
 }

 if (csr & MUSB2_MASK_CSRL_RXSTALL) {
  DPRINTFN(4, "RXSTALL\n");
  td->error = 1;
 }

 if (td->error) {
  musbotg_channel_free(sc, td);
  return (0);
 }

 if (!(csr & MUSB2_MASK_CSRL_RXPKTRDY)) {

  return (1);
 }

 td->toggle ^= 1;

 count = MUSB2_READ_2(sc, MUSB2_REG_RXCOUNT);
 DPRINTFN(4, "count=0x%04x\n", count);




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
        MUSB2_REG_EPFIFO(td->channel), sc->sc_bounce_buf,
        temp / 4);
   }
   temp = count & 3;
   if (temp) {

    bus_space_read_multi_1(sc->sc_io_tag,
        sc->sc_io_hdl, MUSB2_REG_EPFIFO(td->channel),
        ((void *)&sc->sc_bounce_buf[count / 4]), temp);
   }
   usbd_copy_in(td->pc, td->offset,
       sc->sc_bounce_buf, count);


   td->offset += count;
   td->remainder -= count;
   break;
  }

  if (buf_res.length >= 4) {


   bus_space_read_multi_4(sc->sc_io_tag, sc->sc_io_hdl,
       MUSB2_REG_EPFIFO(td->channel), buf_res.buffer,
       buf_res.length / 4);

   temp = buf_res.length & ~3;


   count -= temp;
   td->offset += temp;
   td->remainder -= temp;
   continue;
  }

  bus_space_read_multi_1(sc->sc_io_tag, sc->sc_io_hdl,
      MUSB2_REG_EPFIFO(td->channel), buf_res.buffer,
      buf_res.length);


  count -= buf_res.length;
  td->offset += buf_res.length;
  td->remainder -= buf_res.length;
 }


 MUSB2_WRITE_1(sc, MUSB2_REG_RXCSRL, 0);


 if ((td->remainder == 0) || got_short) {
  if (td->short_pkt) {

   musbotg_channel_free(sc, td);
   return (0);
  }

 }


 td->transaction_started = 0;

 if (--to)
  goto repeat;

 return (1);
}

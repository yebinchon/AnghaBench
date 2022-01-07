
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct usb_page_search {int length; void* buffer; } ;
struct musbotg_td {int channel; int error; int transaction_started; scalar_t__ remainder; int short_pkt; int max_frame_size; int offset; int dev_addr; int haddr; int hport; int transfer_type; int toggle; int reg_max_packet; int pc; } ;
struct musbotg_softc {void* sc_bounce_buf; int sc_io_hdl; int sc_io_tag; } ;


 int DPRINTFN (int,char*,int) ;
 int MAX_NAK_TO ;
 int MUSB2_MASK_CSRH_TXDT_VAL ;
 int MUSB2_MASK_CSRH_TXDT_WREN ;
 int MUSB2_MASK_CSRL_TXERROR ;
 int MUSB2_MASK_CSRL_TXFFLUSH ;
 int MUSB2_MASK_CSRL_TXFIFONEMPTY ;
 int MUSB2_MASK_CSRL_TXNAKTO ;
 int MUSB2_MASK_CSRL_TXPKTRDY ;
 int MUSB2_MASK_CSRL_TXSTALLED ;
 int MUSB2_MASK_TI_PROTO_ISOC ;
 int MUSB2_READ_1 (struct musbotg_softc*,int ) ;
 int MUSB2_REG_EPFIFO (int) ;
 int MUSB2_REG_EPINDEX ;
 int MUSB2_REG_TXCSRH ;
 int MUSB2_REG_TXCSRL ;
 int MUSB2_REG_TXFADDR (int) ;
 int MUSB2_REG_TXHADDR (int) ;
 int MUSB2_REG_TXHUBPORT (int) ;
 int MUSB2_REG_TXMAXP ;
 int MUSB2_REG_TXNAKLIMIT ;
 int MUSB2_REG_TXTI ;
 int MUSB2_WRITE_1 (struct musbotg_softc*,int ,int) ;
 int MUSB2_WRITE_2 (struct musbotg_softc*,int ,int ) ;
 struct musbotg_softc* MUSBOTG_PC2SC (int ) ;
 int USB_P2U (void*) ;
 int bus_space_write_multi_1 (int ,int ,int ,void*,int) ;
 int bus_space_write_multi_4 (int ,int ,int ,void*,int) ;
 int musbotg_channel_alloc (struct musbotg_softc*,struct musbotg_td*,int) ;
 int musbotg_channel_free (struct musbotg_softc*,struct musbotg_td*) ;
 int usbd_copy_out (int ,int,void*,int) ;
 int usbd_get_page (int ,int,struct usb_page_search*) ;

__attribute__((used)) static uint8_t
musbotg_host_data_tx(struct musbotg_td *td)
{
 struct usb_page_search buf_res;
 struct musbotg_softc *sc;
 uint16_t count;
 uint8_t csr, csrh;


 sc = MUSBOTG_PC2SC(td->pc);

 if (td->channel == -1)
  td->channel = musbotg_channel_alloc(sc, td, 1);


 if (td->channel == -1)
  return (1);

 DPRINTFN(1, "ep_no=%d\n", td->channel);


 MUSB2_WRITE_1(sc, MUSB2_REG_EPINDEX, td->channel);


 csr = MUSB2_READ_1(sc, MUSB2_REG_TXCSRL);
 DPRINTFN(4, "csr=0x%02x\n", csr);

 if (csr & (MUSB2_MASK_CSRL_TXSTALLED |
     MUSB2_MASK_CSRL_TXERROR)) {

  MUSB2_WRITE_1(sc, MUSB2_REG_TXCSRL, 0);
  td->error = 1;
  musbotg_channel_free(sc, td);
  return (0);
 }

 if (csr & MUSB2_MASK_CSRL_TXNAKTO) {



  if (csr & MUSB2_MASK_CSRL_TXFIFONEMPTY) {
   csr |= MUSB2_MASK_CSRL_TXFFLUSH;
   MUSB2_WRITE_1(sc, MUSB2_REG_TXCSRL, csr);
   csr = MUSB2_READ_1(sc, MUSB2_REG_TXCSRL);
   if (csr & MUSB2_MASK_CSRL_TXFIFONEMPTY) {
    csr |= MUSB2_MASK_CSRL_TXFFLUSH;
    MUSB2_WRITE_1(sc, MUSB2_REG_TXCSRL, csr);
    csr = MUSB2_READ_1(sc, MUSB2_REG_TXCSRL);
   }
  }

  csr &= ~MUSB2_MASK_CSRL_TXNAKTO;
  MUSB2_WRITE_1(sc, MUSB2_REG_TXCSRL, csr);

  td->error = 1;
  musbotg_channel_free(sc, td);
  return (0);
 }







 if (csr & MUSB2_MASK_CSRL_TXFIFONEMPTY)
  return (1);


 if (csr & MUSB2_MASK_CSRL_TXPKTRDY)
  return (1);

 if (td->transaction_started) {

  if (td->remainder == 0) {
   if (td->short_pkt) {
    musbotg_channel_free(sc, td);
    return (0);
   }

  }


  td->transaction_started = 0;
 }


 count = td->max_frame_size;
 if (td->remainder < count) {

  td->short_pkt = 1;
  count = td->remainder;
 }

 while (count > 0) {
  uint32_t temp;

  usbd_get_page(td->pc, td->offset, &buf_res);


  if (buf_res.length > count) {
   buf_res.length = count;
  }

  if (USB_P2U(buf_res.buffer) & 3) {

   usbd_copy_out(td->pc, td->offset,
       sc->sc_bounce_buf, count);

   temp = count & ~3;

   if (temp) {

    bus_space_write_multi_4(sc->sc_io_tag,
        sc->sc_io_hdl, MUSB2_REG_EPFIFO(td->channel),
        sc->sc_bounce_buf, temp / 4);
   }
   temp = count & 3;
   if (temp) {

    bus_space_write_multi_1(sc->sc_io_tag, sc->sc_io_hdl,
        MUSB2_REG_EPFIFO(td->channel),
        ((void *)&sc->sc_bounce_buf[count / 4]), temp);
   }

   td->offset += count;
   td->remainder -= count;
   break;
  }

  if (buf_res.length >= 4) {


   bus_space_write_multi_4(sc->sc_io_tag, sc->sc_io_hdl,
       MUSB2_REG_EPFIFO(td->channel), buf_res.buffer,
       buf_res.length / 4);

   temp = buf_res.length & ~3;


   count -= temp;
   td->offset += temp;
   td->remainder -= temp;
   continue;
  }

  bus_space_write_multi_1(sc->sc_io_tag, sc->sc_io_hdl,
      MUSB2_REG_EPFIFO(td->channel), buf_res.buffer,
      buf_res.length);


  count -= buf_res.length;
  td->offset += buf_res.length;
  td->remainder -= buf_res.length;
 }


 MUSB2_WRITE_1(sc, MUSB2_REG_TXFADDR(td->channel),
     td->dev_addr);


 MUSB2_WRITE_1(sc, MUSB2_REG_TXHADDR(td->channel),
     td->haddr);
 MUSB2_WRITE_1(sc, MUSB2_REG_TXHUBPORT(td->channel),
     td->hport);


 if (td->transfer_type & MUSB2_MASK_TI_PROTO_ISOC)
  MUSB2_WRITE_1(sc, MUSB2_REG_TXNAKLIMIT, 0);
 else
  MUSB2_WRITE_1(sc, MUSB2_REG_TXNAKLIMIT, MAX_NAK_TO);


 MUSB2_WRITE_1(sc, MUSB2_REG_TXTI, td->transfer_type);


 MUSB2_WRITE_2(sc, MUSB2_REG_TXMAXP, td->reg_max_packet);

 if (!td->transaction_started) {
  csrh = MUSB2_READ_1(sc, MUSB2_REG_TXCSRH);
  DPRINTFN(4, "csrh=0x%02x\n", csrh);

  csrh |= MUSB2_MASK_CSRH_TXDT_WREN;
  if (td->toggle)
   csrh |= MUSB2_MASK_CSRH_TXDT_VAL;
  else
   csrh &= ~MUSB2_MASK_CSRH_TXDT_VAL;


  MUSB2_WRITE_1(sc, MUSB2_REG_TXCSRH, csrh);
 }


 MUSB2_WRITE_1(sc, MUSB2_REG_TXCSRL,
     MUSB2_MASK_CSRL_TXPKTRDY);


 td->toggle ^= 1;
 td->transaction_started = 1;

 return (1);
}

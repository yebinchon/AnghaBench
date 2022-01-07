
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct usb_page_search {int length; void* buffer; } ;
struct musbotg_td {int channel; int max_frame_size; int short_pkt; int error; int remainder; int offset; int pc; } ;
struct musbotg_softc {void* sc_bounce_buf; int sc_io_hdl; int sc_io_tag; } ;


 int DPRINTFN (int,char*,int) ;
 int MUSB2_MASK_CSRL_RXOVERRUN ;
 int MUSB2_MASK_CSRL_RXPKTRDY ;
 int MUSB2_READ_1 (struct musbotg_softc*,int ) ;
 int MUSB2_READ_2 (struct musbotg_softc*,int ) ;
 int MUSB2_REG_EPFIFO (int) ;
 int MUSB2_REG_EPINDEX ;
 int MUSB2_REG_RXCOUNT ;
 int MUSB2_REG_RXCSRL ;
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
musbotg_dev_data_rx(struct musbotg_td *td)
{
 struct usb_page_search buf_res;
 struct musbotg_softc *sc;
 uint16_t count;
 uint8_t csr;
 uint8_t to;
 uint8_t got_short;

 to = 8;
 got_short = 0;


 sc = MUSBOTG_PC2SC(td->pc);

 if (td->channel == -1)
  td->channel = musbotg_channel_alloc(sc, td, 0);


 if (td->channel == -1)
  return (1);


 MUSB2_WRITE_1(sc, MUSB2_REG_EPINDEX, td->channel);

repeat:

 csr = MUSB2_READ_1(sc, MUSB2_REG_RXCSRL);

 DPRINTFN(4, "csr=0x%02x\n", csr);


 if (csr & MUSB2_MASK_CSRL_RXOVERRUN) {

  MUSB2_WRITE_1(sc, MUSB2_REG_RXCSRL,
      MUSB2_MASK_CSRL_RXPKTRDY);
 }


 if (!(csr & MUSB2_MASK_CSRL_RXPKTRDY))
  return (1);


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
 if (--to) {
  goto repeat;
 }
 return (1);
}

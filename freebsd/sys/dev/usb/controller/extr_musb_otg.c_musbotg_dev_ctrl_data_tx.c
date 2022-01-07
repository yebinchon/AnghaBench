
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct usb_page_search {int length; void* buffer; } ;
struct musbotg_td {int error; int max_frame_size; int remainder; int short_pkt; int offset; int pc; } ;
struct musbotg_softc {int sc_ep0_cmd; void* sc_bounce_buf; int sc_io_hdl; int sc_io_tag; } ;


 int DPRINTFN (int,char*,int) ;
 int MUSB2_MASK_CSR0L_SENTSTALL ;
 int MUSB2_MASK_CSR0L_SETUPEND ;
 int MUSB2_MASK_CSR0L_TXPKTRDY ;
 int MUSB2_READ_1 (struct musbotg_softc*,int ) ;
 int MUSB2_REG_EPFIFO (int ) ;
 int MUSB2_REG_EPINDEX ;
 int MUSB2_REG_TXCSRL ;
 int MUSB2_WRITE_1 (struct musbotg_softc*,int ,int) ;
 struct musbotg_softc* MUSBOTG_PC2SC (int ) ;
 int USB_P2U (void*) ;
 int bus_space_write_multi_1 (int ,int ,int ,void*,int) ;
 int bus_space_write_multi_4 (int ,int ,int ,void*,int) ;
 int usbd_copy_out (int ,int,void*,int) ;
 int usbd_get_page (int ,int,struct usb_page_search*) ;

__attribute__((used)) static uint8_t
musbotg_dev_ctrl_data_tx(struct musbotg_td *td)
{
 struct usb_page_search buf_res;
 struct musbotg_softc *sc;
 uint16_t count;
 uint8_t csr;


 sc = MUSBOTG_PC2SC(td->pc);


 MUSB2_WRITE_1(sc, MUSB2_REG_EPINDEX, 0);


 if (sc->sc_ep0_cmd) {
  MUSB2_WRITE_1(sc, MUSB2_REG_TXCSRL, sc->sc_ep0_cmd);
  sc->sc_ep0_cmd = 0;
 }

 csr = MUSB2_READ_1(sc, MUSB2_REG_TXCSRL);

 DPRINTFN(4, "csr=0x%02x\n", csr);

 if (csr & (MUSB2_MASK_CSR0L_SETUPEND |
     MUSB2_MASK_CSR0L_SENTSTALL)) {




  td->error = 1;
  return (0);
 }
 if (csr & MUSB2_MASK_CSR0L_TXPKTRDY) {
  return (1);
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

    bus_space_write_multi_4(sc->sc_io_tag, sc->sc_io_hdl,
        MUSB2_REG_EPFIFO(0), sc->sc_bounce_buf,
        temp / 4);
   }
   temp = count & 3;
   if (temp) {

    bus_space_write_multi_1(sc->sc_io_tag, sc->sc_io_hdl,
        MUSB2_REG_EPFIFO(0),
        ((void *)&sc->sc_bounce_buf[count / 4]), temp);
   }

   td->offset += count;
   td->remainder -= count;
   break;
  }

  if (buf_res.length >= 4) {


   bus_space_write_multi_4(sc->sc_io_tag, sc->sc_io_hdl,
       MUSB2_REG_EPFIFO(0), buf_res.buffer,
       buf_res.length / 4);

   temp = buf_res.length & ~3;


   count -= temp;
   td->offset += temp;
   td->remainder -= temp;
   continue;
  }

  bus_space_write_multi_1(sc->sc_io_tag, sc->sc_io_hdl,
      MUSB2_REG_EPFIFO(0), buf_res.buffer, buf_res.length);


  count -= buf_res.length;
  td->offset += buf_res.length;
  td->remainder -= buf_res.length;
 }


 if (td->remainder == 0) {
  if (td->short_pkt) {
   sc->sc_ep0_cmd = MUSB2_MASK_CSR0L_TXPKTRDY;
   return (0);
  }

 }

 MUSB2_WRITE_1(sc, MUSB2_REG_TXCSRL,
     MUSB2_MASK_CSR0L_TXPKTRDY);

 return (1);
}

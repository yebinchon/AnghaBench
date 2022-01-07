
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_page_search {int length; int buffer; } ;
struct usb_page_cache {int dummy; } ;
struct dwc_otg_softc {int sc_current_rx_fifo; int sc_current_rx_bytes; int sc_bounce_buffer; int sc_io_hdl; int sc_io_tag; } ;


 int bus_space_read_region_4 (int ,int ,int,int ,int) ;
 scalar_t__ usb_pc_buffer_is_aligned (struct usb_page_cache*,int,int,int) ;
 int usbd_copy_in (struct usb_page_cache*,int,int ,int) ;
 int usbd_get_page (struct usb_page_cache*,int,struct usb_page_search*) ;

__attribute__((used)) static void
dwc_otg_read_fifo(struct dwc_otg_softc *sc, struct usb_page_cache *pc,
    uint32_t offset, uint32_t count)
{
 uint32_t temp;


 temp = count & ~3;


 if (temp != 0 && usb_pc_buffer_is_aligned(pc, offset, temp, 3)) {
  struct usb_page_search buf_res;


  count -= temp;


  do {

   usbd_get_page(pc, offset, &buf_res);

   if (buf_res.length > temp)
    buf_res.length = temp;


   bus_space_read_region_4(sc->sc_io_tag, sc->sc_io_hdl,
       sc->sc_current_rx_fifo, buf_res.buffer, buf_res.length / 4);

   offset += buf_res.length;
   sc->sc_current_rx_fifo += buf_res.length;
   sc->sc_current_rx_bytes -= buf_res.length;
   temp -= buf_res.length;
  } while (temp != 0);
 }


 if (count != 0) {

  bus_space_read_region_4(sc->sc_io_tag, sc->sc_io_hdl,
   sc->sc_current_rx_fifo,
   sc->sc_bounce_buffer, (count + 3) / 4);


  usbd_copy_in(pc, offset, sc->sc_bounce_buffer, count);


  count = (count + 3) & ~3;


  sc->sc_current_rx_bytes -= count;
  sc->sc_current_rx_fifo += count;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_page_search {int length; scalar_t__* buffer; } ;
struct usb_page_cache {int dummy; } ;
struct dwc_otg_softc {scalar_t__* sc_bounce_buffer; int sc_io_hdl; int sc_io_tag; } ;


 int bus_space_write_region_4 (int ,int ,int,scalar_t__*,int) ;
 scalar_t__ usb_pc_buffer_is_aligned (struct usb_page_cache*,int,int,int) ;
 int usbd_copy_out (struct usb_page_cache*,int,scalar_t__*,int) ;
 int usbd_get_page (struct usb_page_cache*,int,struct usb_page_search*) ;

__attribute__((used)) static void
dwc_otg_write_fifo(struct dwc_otg_softc *sc, struct usb_page_cache *pc,
    uint32_t offset, uint32_t fifo, uint32_t count)
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


   bus_space_write_region_4(sc->sc_io_tag, sc->sc_io_hdl,
       fifo, buf_res.buffer, buf_res.length / 4);

   offset += buf_res.length;
   fifo += buf_res.length;
   temp -= buf_res.length;
  } while (temp != 0);
 }


 if (count != 0) {

  sc->sc_bounce_buffer[(count - 1) / 4] = 0;


  usbd_copy_out(pc, offset,
      sc->sc_bounce_buffer, count);


  bus_space_write_region_4(sc->sc_io_tag,
      sc->sc_io_hdl, fifo, sc->sc_bounce_buffer,
      (count + 3) / 4);
 }
}

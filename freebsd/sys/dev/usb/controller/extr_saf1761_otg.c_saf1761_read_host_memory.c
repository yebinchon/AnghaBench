
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usb_page_search {int length; scalar_t__ buffer; } ;
struct saf1761_otg_td {int offset; int remainder; int pc; int channel; } ;
struct saf1761_otg_softc {scalar_t__ sc_bounce_buffer; int sc_io_hdl; int sc_io_tag; } ;


 int SAF1761_90NS_DELAY (struct saf1761_otg_softc*) ;
 int SAF1761_WRITE_LE_4 (struct saf1761_otg_softc*,int ,int) ;
 int SOTG_DATA_ADDR (int ) ;
 int SOTG_MEMORY_REG ;
 int bus_space_read_region_4 (int ,int ,int,scalar_t__,int) ;
 int usbd_copy_in (int ,int,scalar_t__,int) ;
 int usbd_get_page (int ,int,struct usb_page_search*) ;

__attribute__((used)) static void
saf1761_read_host_memory(struct saf1761_otg_softc *sc,
    struct saf1761_otg_td *td, uint32_t len)
{
 struct usb_page_search buf_res;
 uint32_t offset;
 uint32_t count;

 if (len == 0)
  return;

 offset = SOTG_DATA_ADDR(td->channel);
 SAF1761_WRITE_LE_4(sc, SOTG_MEMORY_REG, offset);
 SAF1761_90NS_DELAY(sc);


 while (len > 0) {
  usbd_get_page(td->pc, td->offset, &buf_res);


  if (buf_res.length > len)
   buf_res.length = len;


  if (((uintptr_t)buf_res.buffer) & 3)
   break;

  count = buf_res.length & ~3;
  if (count == 0)
   break;

  bus_space_read_region_4((sc)->sc_io_tag, (sc)->sc_io_hdl,
      offset, buf_res.buffer, count / 4);

  len -= count;
  offset += count;


  td->remainder -= count;
  td->offset += count;
 }

 if (len > 0) {

  bus_space_read_region_4((sc)->sc_io_tag, (sc)->sc_io_hdl,
      offset, sc->sc_bounce_buffer, (len + 3) / 4);
  usbd_copy_in(td->pc, td->offset,
      sc->sc_bounce_buffer, len);


  td->remainder -= len;
  td->offset += len;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct saf1761_otg_td {int ep_index; int error_any; int remainder; int max_packet_size; int short_pkt; scalar_t__ set_toggle; } ;
struct saf1761_otg_softc {int dummy; } ;


 int DPRINTFN (int,char*,...) ;
 int SAF1761_READ_LE_4 (struct saf1761_otg_softc*,int ) ;
 int SAF1761_WRITE_LE_4 (struct saf1761_otg_softc*,int ,int) ;
 int SOTG_BUF_LENGTH ;
 int SOTG_BUF_LENGTH_FILLED_MASK ;
 int SOTG_CTRL_FUNC ;
 int SOTG_CTRL_FUNC_DSEN ;
 int SOTG_CTRL_FUNC_VENDP ;
 int SOTG_EP_INDEX ;
 int SOTG_EP_INDEX_DIR_IN ;
 int SOTG_EP_INDEX_ENDP_INDEX_SHIFT ;
 int SOTG_EP_INDEX_EP0SETUP ;
 int SOTG_FS_MAX_PACKET_SIZE ;
 int SOTG_HS_MAX_PACKET_SIZE ;
 int saf1761_write_device_fifo (struct saf1761_otg_softc*,struct saf1761_otg_td*,int) ;

__attribute__((used)) static uint8_t
saf1761_device_data_tx(struct saf1761_otg_softc *sc, struct saf1761_otg_td *td)
{
 uint32_t count;

 if (td->ep_index == 0) {

  SAF1761_WRITE_LE_4(sc, SOTG_EP_INDEX, SOTG_EP_INDEX_EP0SETUP);

  count = SAF1761_READ_LE_4(sc, SOTG_BUF_LENGTH);


  if ((count & SOTG_BUF_LENGTH_FILLED_MASK) != 0) {
   DPRINTFN(5, "SETUP abort\n");



   td->error_any = 1;
   return (0);
  }
 }

 SAF1761_WRITE_LE_4(sc, SOTG_EP_INDEX,
     (td->ep_index << SOTG_EP_INDEX_ENDP_INDEX_SHIFT) |
     SOTG_EP_INDEX_DIR_IN);

 count = SAF1761_READ_LE_4(sc, SOTG_BUF_LENGTH);


 if ((count & SOTG_BUF_LENGTH_FILLED_MASK) != 0)
  return (1);


 if (td->set_toggle) {
  td->set_toggle = 0;
  SAF1761_WRITE_LE_4(sc, SOTG_CTRL_FUNC, SOTG_CTRL_FUNC_DSEN);
 }

 DPRINTFN(5, "rem=%u\n", td->remainder);

 count = td->max_packet_size;
 if (td->remainder < count) {

  td->short_pkt = 1;
  count = td->remainder;
 }

 saf1761_write_device_fifo(sc, td, count);

 if (td->ep_index == 0) {
  if (count < SOTG_FS_MAX_PACKET_SIZE) {

   SAF1761_WRITE_LE_4(sc, SOTG_CTRL_FUNC, SOTG_CTRL_FUNC_VENDP);
  }
 } else {
  if (count < SOTG_HS_MAX_PACKET_SIZE) {

   SAF1761_WRITE_LE_4(sc, SOTG_CTRL_FUNC, SOTG_CTRL_FUNC_VENDP);
  }
 }


 if (td->remainder == 0) {
  if (td->short_pkt) {
   return (0);
  }

 }
 return (1);
}

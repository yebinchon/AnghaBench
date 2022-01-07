
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct saf1761_otg_td {scalar_t__ channel; int dw1_value; int max_packet_size; int short_pkt; int error_any; int remainder; int uframe; int ep_index; } ;
struct saf1761_otg_softc {int sc_host_isoc_map; int sc_host_isoc_suspend_map; } ;


 int DPRINTFN (int,char*,int) ;
 int SAF1761_WRITE_LE_4 (struct saf1761_otg_softc*,int,int) ;
 int SOTG_DATA_ADDR (scalar_t__) ;
 int SOTG_HC_MEMORY_ADDR (int ) ;
 scalar_t__ SOTG_HOST_CHANNEL_MAX ;
 int SOTG_ISO_PTD_SKIP_PTD ;
 int SOTG_PTD (scalar_t__) ;
 int SOTG_PTD_DW0 ;
 int SOTG_PTD_DW0_VALID ;
 int SOTG_PTD_DW1 ;
 int SOTG_PTD_DW1_ENABLE_SPLIT ;
 int SOTG_PTD_DW2 ;
 int SOTG_PTD_DW3 ;
 int SOTG_PTD_DW3_ACTIVE ;
 int SOTG_PTD_DW3_CERR_3 ;
 int SOTG_PTD_DW3_HALTED ;
 int SOTG_PTD_DW3_XFER_COUNT_HS ;
 int SOTG_PTD_DW3_XFER_COUNT_SPLIT ;
 int SOTG_PTD_DW4 ;
 int SOTG_PTD_DW5 ;
 int SOTG_PTD_DW6 ;
 int SOTG_PTD_DW7 ;
 scalar_t__ saf1761_host_channel_alloc (struct saf1761_otg_softc*,struct saf1761_otg_td*) ;
 int saf1761_host_channel_free (struct saf1761_otg_softc*,struct saf1761_otg_td*) ;
 int saf1761_peek_host_status_le_4 (struct saf1761_otg_softc*,int) ;
 int saf1761_read_host_memory (struct saf1761_otg_softc*,struct saf1761_otg_td*,int) ;

__attribute__((used)) static uint8_t
saf1761_host_isoc_data_rx(struct saf1761_otg_softc *sc, struct saf1761_otg_td *td)
{
 uint32_t pdt_addr;
 uint32_t temp;

 if (td->channel < SOTG_HOST_CHANNEL_MAX) {
  uint32_t status;
  uint32_t count;

  pdt_addr = SOTG_PTD(td->channel);

  status = saf1761_peek_host_status_le_4(sc, pdt_addr + SOTG_PTD_DW3);

  DPRINTFN(5, "STATUS=0x%08x\n", status);

  if (status & SOTG_PTD_DW3_ACTIVE) {
   goto busy;
  } else if (status & SOTG_PTD_DW3_HALTED) {
   goto complete;
  }
  if (td->dw1_value & SOTG_PTD_DW1_ENABLE_SPLIT)
   count = (status & SOTG_PTD_DW3_XFER_COUNT_SPLIT);
  else
   count = (status & SOTG_PTD_DW3_XFER_COUNT_HS);


  if (count != td->max_packet_size) {
   if (count < td->max_packet_size) {

    td->short_pkt = 1;
   } else {

    td->error_any = 1;
    goto complete;
   }
  }


  if (count > td->remainder) {

   td->error_any = 1;
   goto complete;
  }

  saf1761_read_host_memory(sc, td, count);
  goto complete;
 }

 if (saf1761_host_channel_alloc(sc, td))
  goto busy;



 pdt_addr = SOTG_PTD(td->channel);

 SAF1761_WRITE_LE_4(sc, pdt_addr + SOTG_PTD_DW7, 0);
 SAF1761_WRITE_LE_4(sc, pdt_addr + SOTG_PTD_DW6, 0);

 if (td->dw1_value & SOTG_PTD_DW1_ENABLE_SPLIT) {
  temp = (0xFC << (td->uframe & 7)) & 0xFF;
 } else {
  temp = 0;
 }
 SAF1761_WRITE_LE_4(sc, pdt_addr + SOTG_PTD_DW5, temp);

 temp = (1U << (td->uframe & 7));
 SAF1761_WRITE_LE_4(sc, pdt_addr + SOTG_PTD_DW4, temp);

 temp = SOTG_PTD_DW3_ACTIVE | SOTG_PTD_DW3_CERR_3;
 SAF1761_WRITE_LE_4(sc, pdt_addr + SOTG_PTD_DW3, temp);

 temp = (SOTG_HC_MEMORY_ADDR(SOTG_DATA_ADDR(td->channel)) << 8) |
     (td->uframe & 0xF8);
 SAF1761_WRITE_LE_4(sc, pdt_addr + SOTG_PTD_DW2, temp);

 temp = td->dw1_value | (1 << 10) | (td->ep_index >> 1);
 SAF1761_WRITE_LE_4(sc, pdt_addr + SOTG_PTD_DW1, temp);

 temp = (td->ep_index << 31) | (1 << 29) |
     (td->max_packet_size << 18) |
     (td->max_packet_size << 3) |
     SOTG_PTD_DW0_VALID;
 SAF1761_WRITE_LE_4(sc, pdt_addr + SOTG_PTD_DW0, temp);


 SAF1761_WRITE_LE_4(sc, SOTG_ISO_PTD_SKIP_PTD,
     (~sc->sc_host_isoc_map) | sc->sc_host_isoc_suspend_map);
busy:
 return (1);
complete:
 saf1761_host_channel_free(sc, td);
 return (0);
}

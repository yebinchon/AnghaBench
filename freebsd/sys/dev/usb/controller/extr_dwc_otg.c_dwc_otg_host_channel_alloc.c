
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct dwc_otg_td {void** channel; int max_packet_count; int hcsplt; int hcchar; int pc; } ;
struct dwc_otg_softc {int sc_host_ch_max; int sc_active_rx_ep; TYPE_2__* sc_chan_state; } ;
struct TYPE_4__ {scalar_t__ self_suspended; } ;
struct TYPE_6__ {TYPE_1__ flags; } ;
struct TYPE_5__ {int allocated; int wait_halted; } ;


 int DPRINTF (char*,int,int ,int ) ;
 void* DWC_OTG_MAX_CHANNELS ;
 TYPE_3__* DWC_OTG_PC2UDEV (int ) ;
 int dwc_otg_clear_hcint (struct dwc_otg_softc*,int) ;
 int dwc_otg_enable_sof_irq (struct dwc_otg_softc*) ;
 scalar_t__ dwc_otg_host_check_tx_fifo_empty (struct dwc_otg_softc*,struct dwc_otg_td*) ;

__attribute__((used)) static uint8_t
dwc_otg_host_channel_alloc(struct dwc_otg_softc *sc,
    struct dwc_otg_td *td, uint8_t is_out)
{
 uint8_t x;
 uint8_t y;
 uint8_t z;

 if (td->channel[0] < DWC_OTG_MAX_CHANNELS)
  return (0);


 if (DWC_OTG_PC2UDEV(td->pc)->flags.self_suspended != 0)
  return (1);


 if (is_out != 0) {
  if (dwc_otg_host_check_tx_fifo_empty(sc, td) != 0)
   return (1);
 }
 z = td->max_packet_count;
 for (x = y = 0; x != sc->sc_host_ch_max; x++) {

  if (sc->sc_chan_state[x].allocated != 0)
   continue;

  if (sc->sc_chan_state[x].wait_halted != 0)
   continue;

  td->channel[y++] = x;

  if (y == z)
   break;
 }
 if (y != z) {

  td->channel[0] = DWC_OTG_MAX_CHANNELS;
  td->channel[1] = DWC_OTG_MAX_CHANNELS;
  td->channel[2] = DWC_OTG_MAX_CHANNELS;

  dwc_otg_enable_sof_irq(sc);
  return (1);
 }

 for (y = 0; y != z; y++) {
  x = td->channel[y];


  sc->sc_chan_state[x].allocated = 1;


  sc->sc_chan_state[x].wait_halted = 1;


  dwc_otg_clear_hcint(sc, x);

  DPRINTF("CH=%d HCCHAR=0x%08x "
      "HCSPLT=0x%08x\n", x, td->hcchar, td->hcsplt);


  sc->sc_active_rx_ep |= (1 << x);
 }
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct dwc_otg_softc {int sc_fifo_size; int sc_active_rx_ep; scalar_t__ sc_host_ch_max; int sc_irq_mask; scalar_t__ sc_dev_ep_max; scalar_t__ sc_dev_in_ep_max; int sc_chan_state; struct dwc_otg_profile* sc_hw_ep_profile; } ;
struct TYPE_2__ {int max_out_frame_size; int is_simplex; int support_bulk; int support_interrupt; int support_isochronous; int support_out; int support_in; int max_in_frame_size; } ;
struct dwc_otg_profile {int max_buffer; TYPE_1__ usb; } ;


 int DOTG_DIEPTXF (scalar_t__) ;
 int DOTG_GINTMSK ;
 int DOTG_GNPTXFSIZ ;
 int DOTG_GRXFSIZ ;
 int DOTG_HAINTMSK ;
 int DOTG_HCINTMSK (scalar_t__) ;
 int DOTG_HPTXFSIZ ;
 int DPRINTF (char*,...) ;
 int DPRINTFN (int,char*) ;
 scalar_t__ DWC_MODE_DEVICE ;
 scalar_t__ DWC_MODE_HOST ;
 scalar_t__ DWC_MODE_OTG ;
 int DWC_OTG_MAX_TXN ;
 int DWC_OTG_TX_MAX_FIFO_SIZE ;
 int DWC_OTG_WRITE_4 (struct dwc_otg_softc*,int ,int) ;
 int EINVAL ;
 int GINTMSK_HCHINTMSK ;
 int GINTMSK_IEPINTMSK ;
 int GRSTCTL_RXFFLSH ;
 int GRSTCTL_TXFFLSH ;
 int GRSTCTL_TXFIFO (int) ;
 int HCINT_DEFAULT_MASK ;
 int MIN (int,int) ;
 TYPE_1__* dwc_otg_ep_profile ;
 int dwc_otg_tx_fifo_reset (struct dwc_otg_softc*,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int
dwc_otg_init_fifo(struct dwc_otg_softc *sc, uint8_t mode)
{
 struct dwc_otg_profile *pf;
 uint32_t fifo_size;
 uint32_t fifo_regs;
 uint32_t tx_start;
 uint8_t x;

 fifo_size = sc->sc_fifo_size;





 fifo_regs = 4 * 16;

 if (fifo_size < fifo_regs) {
  DPRINTF("Too little FIFO\n");
  return (EINVAL);
 }


 fifo_size -= fifo_regs;


 fifo_size /= 2;


 fifo_size &= ~3;


 DWC_OTG_WRITE_4(sc, DOTG_GRXFSIZ, fifo_size / 4);

 tx_start = fifo_size;

 if (fifo_size < 64) {
  DPRINTFN(-1, "Not enough data space for EP0 FIFO.\n");
  return (EINVAL);
 }

 if (mode == DWC_MODE_HOST) {


  sc->sc_active_rx_ep = 0;


  fifo_size /= 2;

  DPRINTF("PTX/NPTX FIFO=%u\n", fifo_size);


  fifo_size &= ~3;

  DWC_OTG_WRITE_4(sc, DOTG_GNPTXFSIZ,
      ((fifo_size / 4) << 16) |
      (tx_start / 4));

  tx_start += fifo_size;

  for (x = 0; x != sc->sc_host_ch_max; x++) {

   DWC_OTG_WRITE_4(sc, DOTG_HCINTMSK(x),
       HCINT_DEFAULT_MASK);
  }

  DWC_OTG_WRITE_4(sc, DOTG_HPTXFSIZ,
      ((fifo_size / 4) << 16) |
      (tx_start / 4));


  memset(sc->sc_chan_state, 0, sizeof(sc->sc_chan_state));


  DWC_OTG_WRITE_4(sc, DOTG_HAINTMSK,
      (1U << sc->sc_host_ch_max) - 1U);


  sc->sc_irq_mask |= GINTMSK_HCHINTMSK;
  sc->sc_irq_mask &= ~GINTMSK_IEPINTMSK;
  DWC_OTG_WRITE_4(sc, DOTG_GINTMSK, sc->sc_irq_mask);
 }

 if (mode == DWC_MODE_DEVICE) {

     DWC_OTG_WRITE_4(sc, DOTG_GNPTXFSIZ,
  (0x10 << 16) | (tx_start / 4));
     fifo_size -= 0x40;
     tx_start += 0x40;


     sc->sc_hw_ep_profile[0].usb = dwc_otg_ep_profile[0];


     sc->sc_active_rx_ep = 1;

     for (x = 1; x != sc->sc_dev_ep_max; x++) {

  pf = sc->sc_hw_ep_profile + x;

  pf->usb.max_out_frame_size = 1024 * 3;
  pf->usb.is_simplex = 0;
  pf->usb.support_bulk = 1;
  pf->usb.support_interrupt = 1;
  pf->usb.support_isochronous = 1;
  pf->usb.support_out = 1;

  if (x < sc->sc_dev_in_ep_max) {
   uint32_t limit;

   limit = (x == 1) ? MIN(DWC_OTG_TX_MAX_FIFO_SIZE,
       DWC_OTG_MAX_TXN) : MIN(DWC_OTG_MAX_TXN / 2,
       DWC_OTG_TX_MAX_FIFO_SIZE);


   if (limit <= fifo_size) {
    pf->max_buffer = limit;
    pf->usb.support_in = 1;
   } else {
    limit = MIN(DWC_OTG_TX_MAX_FIFO_SIZE, 0x40);
    if (limit <= fifo_size) {
     pf->usb.support_in = 1;
    } else {
     pf->usb.is_simplex = 1;
     limit = 0;
    }
   }

   DWC_OTG_WRITE_4(sc, DOTG_DIEPTXF(x),
       ((limit / 4) << 16) | (tx_start / 4));
   tx_start += limit;
   fifo_size -= limit;
   pf->usb.max_in_frame_size = limit;
  } else {
   pf->usb.is_simplex = 1;
  }

  DPRINTF("FIFO%d = IN:%d / OUT:%d\n", x,
      pf->usb.max_in_frame_size,
      pf->usb.max_out_frame_size);
     }


     sc->sc_irq_mask &= ~GINTMSK_HCHINTMSK;
     sc->sc_irq_mask |= GINTMSK_IEPINTMSK;
     DWC_OTG_WRITE_4(sc, DOTG_GINTMSK, sc->sc_irq_mask);
 }


 dwc_otg_tx_fifo_reset(sc, GRSTCTL_RXFFLSH);

 if (mode != DWC_MODE_OTG) {

  dwc_otg_tx_fifo_reset(sc,
      GRSTCTL_TXFIFO(0x10) |
      GRSTCTL_TXFFLSH);
 } else {

  sc->sc_active_rx_ep = 0;


  memset(sc->sc_chan_state, 0, sizeof(sc->sc_chan_state));
 }
 return (0);
}

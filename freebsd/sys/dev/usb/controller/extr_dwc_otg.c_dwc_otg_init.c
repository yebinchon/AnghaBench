
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int bus_mtx; int * methods; int usbrev; } ;
struct dwc_otg_softc {int sc_mode; int sc_phy_type; int sc_phy_bits; int sc_fifo_size; scalar_t__ sc_dev_ep_max; scalar_t__ sc_host_ch_max; scalar_t__ sc_dev_in_ep_max; int sc_irq_mask; TYPE_1__ sc_bus; int sc_timer; } ;


 int DCTL_CGNPINNAK ;
 int DCTL_CGOUTNAK ;
 int DCTL_SFTDISCON ;
 int DIEPMSK_XFERCOMPLMSK ;
 int DOTG_DAINTMSK ;
 int DOTG_DCTL ;
 int DOTG_DEACHINTMSK ;
 int DOTG_DIEPEACHINTMSK (scalar_t__) ;
 int DOTG_DIEPMSK ;
 int DOTG_DOEPEACHINTMSK (scalar_t__) ;
 int DOTG_DOEPMSK ;
 int DOTG_GAHBCFG ;
 int DOTG_GGPIO ;
 int DOTG_GGPIO_I2CPADEN ;
 int DOTG_GGPIO_NOVBUSSENS ;
 int DOTG_GGPIO_PWRDWN ;
 int DOTG_GGPIO_VBUSASEN ;
 int DOTG_GGPIO_VBUSBSEN ;
 int DOTG_GHWCFG2 ;
 int DOTG_GHWCFG3 ;
 int DOTG_GHWCFG4 ;
 int DOTG_GINTMSK ;
 int DOTG_GLPMCFG ;
 int DOTG_GOTGCTL ;
 int DOTG_GRSTCTL ;
 int DOTG_GSNPSID ;
 int DOTG_GUSBCFG ;
 int DOTG_HCFG ;
 int DOTG_PCGCCTL ;
 int DPRINTF (char*,...) ;
 int DPRINTFN (int,char*,int) ;


 int DWC_MODE_OTG ;
 scalar_t__ DWC_OTG_MAX_CHANNELS ;
 scalar_t__ DWC_OTG_MAX_ENDPOINTS ;
 int DWC_OTG_MSK_GINT_THREAD_IRQ ;




 int DWC_OTG_READ_4 (struct dwc_otg_softc*,int ) ;
 int DWC_OTG_WRITE_4 (struct dwc_otg_softc*,int ,int) ;
 int EINVAL ;
 int GAHBCFG_GLBLINTRMSK ;
 int GHWCFG2_MPI ;
 scalar_t__ GHWCFG2_NUMDEVEPS_GET (int) ;
 scalar_t__ GHWCFG2_NUMHSTCHNL_GET (int) ;
 int GHWCFG3_DFIFODEPTH_GET (int) ;
 scalar_t__ GHWCFG4_NUM_IN_EP_GET (int) ;
 int GLPMCFG_HSIC_CONN ;
 int GOTGCTL_ASESVLD ;
 int GOTGCTL_BSESVLD ;
 int GRSTCTL_CSFTRST ;
 int GUSBCFG_FORCEDEVMODE ;
 int GUSBCFG_FORCEHOSTMODE ;
 int GUSBCFG_PHYIF ;
 int GUSBCFG_PHYSEL ;
 int GUSBCFG_TRD_TIM_SET (int) ;
 int GUSBCFG_ULPI_UTMI_SEL ;
 int HCFG_FSLSPCLKSEL_MASK ;
 int HCFG_FSLSPCLKSEL_SHIFT ;
 int HCFG_FSLSSUPP ;
 int USB_BUS_LOCK (TYPE_1__*) ;
 int USB_BUS_UNLOCK (TYPE_1__*) ;
 int USB_REV_2_0 ;
 int dwc_otg_bus_methods ;
 int dwc_otg_clocks_off (struct dwc_otg_softc*) ;
 int dwc_otg_clocks_on (struct dwc_otg_softc*) ;
 int dwc_otg_do_poll (TYPE_1__*) ;
 scalar_t__ dwc_otg_init_fifo (struct dwc_otg_softc*,int) ;
 int dwc_otg_phy_type ;
 int dwc_otg_vbus_interrupt (struct dwc_otg_softc*,int) ;
 int hz ;
 int usb_callout_init_mtx (int *,int *,int ) ;
 int usb_pause_mtx (int *,int) ;

int
dwc_otg_init(struct dwc_otg_softc *sc)
{
 uint32_t temp;

 DPRINTF("start\n");


 sc->sc_bus.usbrev = USB_REV_2_0;
 sc->sc_bus.methods = &dwc_otg_bus_methods;

 usb_callout_init_mtx(&sc->sc_timer,
     &sc->sc_bus.bus_mtx, 0);

 USB_BUS_LOCK(&sc->sc_bus);


 dwc_otg_clocks_on(sc);

 temp = DWC_OTG_READ_4(sc, DOTG_GSNPSID);
 DPRINTF("Version = 0x%08x\n", temp);


 DWC_OTG_WRITE_4(sc, DOTG_DCTL,
     DCTL_SFTDISCON);


 usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 32);

 DWC_OTG_WRITE_4(sc, DOTG_GRSTCTL,
     GRSTCTL_CSFTRST);


 usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 128);

 switch (sc->sc_mode) {
 case 133:
  temp = GUSBCFG_FORCEDEVMODE;
  break;
 case 132:
  temp = GUSBCFG_FORCEHOSTMODE;
  break;
 default:
  temp = 0;
  break;
 }

 if (sc->sc_phy_type == 0)
  sc->sc_phy_type = dwc_otg_phy_type + 1;
 if (sc->sc_phy_bits == 0)
  sc->sc_phy_bits = 16;


 switch (sc->sc_phy_type) {
 case 131:
  DWC_OTG_WRITE_4(sc, DOTG_GUSBCFG,
      GUSBCFG_PHYIF |
      GUSBCFG_TRD_TIM_SET(5) | temp);
  DWC_OTG_WRITE_4(sc, DOTG_GOTGCTL,
      0x000000EC);

  temp = DWC_OTG_READ_4(sc, DOTG_GLPMCFG);
  DWC_OTG_WRITE_4(sc, DOTG_GLPMCFG,
      temp & ~GLPMCFG_HSIC_CONN);
  DWC_OTG_WRITE_4(sc, DOTG_GLPMCFG,
      temp | GLPMCFG_HSIC_CONN);
  break;
 case 129:
  DWC_OTG_WRITE_4(sc, DOTG_GUSBCFG,
      GUSBCFG_ULPI_UTMI_SEL |
      GUSBCFG_TRD_TIM_SET(5) | temp);
  DWC_OTG_WRITE_4(sc, DOTG_GOTGCTL, 0);

  temp = DWC_OTG_READ_4(sc, DOTG_GLPMCFG);
  DWC_OTG_WRITE_4(sc, DOTG_GLPMCFG,
      temp & ~GLPMCFG_HSIC_CONN);
  break;
 case 128:
  DWC_OTG_WRITE_4(sc, DOTG_GUSBCFG,
      (sc->sc_phy_bits == 16 ? GUSBCFG_PHYIF : 0) |
      GUSBCFG_TRD_TIM_SET(5) | temp);
  DWC_OTG_WRITE_4(sc, DOTG_GOTGCTL, 0);

  temp = DWC_OTG_READ_4(sc, DOTG_GLPMCFG);
  DWC_OTG_WRITE_4(sc, DOTG_GLPMCFG,
      temp & ~GLPMCFG_HSIC_CONN);
  break;
 case 130:
  DWC_OTG_WRITE_4(sc, DOTG_GUSBCFG,
      GUSBCFG_PHYSEL |
      GUSBCFG_TRD_TIM_SET(5) | temp);
  DWC_OTG_WRITE_4(sc, DOTG_GOTGCTL, 0);

  temp = DWC_OTG_READ_4(sc, DOTG_GLPMCFG);
  DWC_OTG_WRITE_4(sc, DOTG_GLPMCFG,
      temp & ~GLPMCFG_HSIC_CONN);

  temp = DWC_OTG_READ_4(sc, DOTG_GGPIO);
  temp &= ~(DOTG_GGPIO_NOVBUSSENS | DOTG_GGPIO_I2CPADEN);
  temp |= (DOTG_GGPIO_VBUSASEN | DOTG_GGPIO_VBUSBSEN |
      DOTG_GGPIO_PWRDWN);
  DWC_OTG_WRITE_4(sc, DOTG_GGPIO, temp);
  break;
 default:
  break;
 }


 DWC_OTG_WRITE_4(sc, DOTG_DCTL,
     DCTL_CGOUTNAK |
     DCTL_CGNPINNAK);


 DWC_OTG_WRITE_4(sc, DOTG_PCGCCTL, 0xFFFFFFFF);


 usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 100);


 DWC_OTG_WRITE_4(sc, DOTG_PCGCCTL, 0);


 usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 100);

 temp = DWC_OTG_READ_4(sc, DOTG_GHWCFG3);

 sc->sc_fifo_size = 4 * GHWCFG3_DFIFODEPTH_GET(temp);

 temp = DWC_OTG_READ_4(sc, DOTG_GHWCFG2);

 sc->sc_dev_ep_max = GHWCFG2_NUMDEVEPS_GET(temp);

 if (sc->sc_dev_ep_max > DWC_OTG_MAX_ENDPOINTS)
  sc->sc_dev_ep_max = DWC_OTG_MAX_ENDPOINTS;

 sc->sc_host_ch_max = GHWCFG2_NUMHSTCHNL_GET(temp);

 if (sc->sc_host_ch_max > DWC_OTG_MAX_CHANNELS)
  sc->sc_host_ch_max = DWC_OTG_MAX_CHANNELS;

 temp = DWC_OTG_READ_4(sc, DOTG_GHWCFG4);

 sc->sc_dev_in_ep_max = GHWCFG4_NUM_IN_EP_GET(temp);

 DPRINTF("Total FIFO size = %d bytes, Device EPs = %d/%d Host CHs = %d\n",
     sc->sc_fifo_size, sc->sc_dev_ep_max, sc->sc_dev_in_ep_max,
     sc->sc_host_ch_max);


 if (dwc_otg_init_fifo(sc, sc->sc_mode)) {
  USB_BUS_UNLOCK(&sc->sc_bus);
  return (EINVAL);
 }


 sc->sc_irq_mask |= DWC_OTG_MSK_GINT_THREAD_IRQ;
 DWC_OTG_WRITE_4(sc, DOTG_GINTMSK, sc->sc_irq_mask);

 if (sc->sc_mode == DWC_MODE_OTG || sc->sc_mode == 133) {


  temp = DWC_OTG_READ_4(sc, DOTG_GHWCFG2);
  if (temp & GHWCFG2_MPI) {
   uint8_t x;

   DPRINTF("Disable Multi Process Interrupts\n");

   for (x = 0; x != sc->sc_dev_in_ep_max; x++) {
    DWC_OTG_WRITE_4(sc, DOTG_DIEPEACHINTMSK(x), 0);
    DWC_OTG_WRITE_4(sc, DOTG_DOEPEACHINTMSK(x), 0);
   }
   DWC_OTG_WRITE_4(sc, DOTG_DEACHINTMSK, 0);
  }
  DWC_OTG_WRITE_4(sc, DOTG_DIEPMSK,
      DIEPMSK_XFERCOMPLMSK);
  DWC_OTG_WRITE_4(sc, DOTG_DOEPMSK, 0);
  DWC_OTG_WRITE_4(sc, DOTG_DAINTMSK, 0xFFFF);
 }

 if (sc->sc_mode == DWC_MODE_OTG || sc->sc_mode == 132) {

  temp = DWC_OTG_READ_4(sc, DOTG_HCFG);
  temp &= ~(HCFG_FSLSSUPP | HCFG_FSLSPCLKSEL_MASK);
  temp |= (1 << HCFG_FSLSPCLKSEL_SHIFT);
  DWC_OTG_WRITE_4(sc, DOTG_HCFG, temp);
 }


 DWC_OTG_WRITE_4(sc, DOTG_GAHBCFG,
     GAHBCFG_GLBLINTRMSK);


 dwc_otg_clocks_off(sc);



 temp = DWC_OTG_READ_4(sc, DOTG_GOTGCTL);

 DPRINTFN(5, "GOTCTL=0x%08x\n", temp);

 dwc_otg_vbus_interrupt(sc,
     (temp & (GOTGCTL_ASESVLD | GOTGCTL_BSESVLD)) ? 1 : 0);

 USB_BUS_UNLOCK(&sc->sc_bus);



 dwc_otg_do_poll(&sc->sc_bus);

 return (0);
}

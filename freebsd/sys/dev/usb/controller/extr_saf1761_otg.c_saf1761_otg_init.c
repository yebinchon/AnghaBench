
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int usb_error_t ;
typedef int uint32_t ;
struct usb_hw_ep_profile {unsigned int max_in_frame_size; unsigned int max_out_frame_size; } ;
struct TYPE_4__ {int bus_mtx; int * methods; int usbrev; } ;
struct saf1761_otg_softc {int sc_hw_mode; int sc_interrupt_cfg; int sc_intr_enable; TYPE_1__ sc_bus; } ;


 int DELAY (int) ;
 int DPRINTF (char*,...) ;
 unsigned int SAF1761_READ_LE_4 (struct saf1761_otg_softc*,int) ;
 int SAF1761_WRITE_LE_4 (struct saf1761_otg_softc*,int,unsigned int) ;
 int SOTG_ADDRESS ;
 int SOTG_ATL_IRQ_MASK_AND ;
 int SOTG_ATL_IRQ_MASK_OR ;
 int SOTG_ATL_PTD_LAST_PTD ;
 int SOTG_ATL_PTD_SKIP_PTD ;
 int SOTG_CONFIGFLAG ;
 unsigned int SOTG_CONFIGFLAG_ENABLE ;
 int SOTG_CTRL_BDIS_ACON_EN ;
 unsigned int SOTG_CTRL_CLR (int) ;
 int SOTG_CTRL_SEL_CP_EXT ;
 unsigned int SOTG_CTRL_SET (int) ;
 int SOTG_CTRL_SET_CLR ;
 int SOTG_CTRL_SW_SEL_HC_DC ;
 int SOTG_CTRL_VBUS_DRV ;
 int SOTG_DCCHIP_ID ;
 int SOTG_DCINTERRUPT_EN ;
 int SOTG_DCINTERRUPT_IEBRST ;
 int SOTG_DCINTERRUPT_IESUSP ;
 int SOTG_DCINTERRUPT_IEVBUS ;
 int SOTG_DCSCRATCH ;
 int SOTG_EP_INDEX ;
 int SOTG_EP_INDEX_DIR_IN ;
 int SOTG_EP_INDEX_DIR_OUT ;
 int SOTG_EP_INDEX_ENDP_INDEX_SHIFT ;
 int SOTG_EP_MAXPACKET ;
 int SOTG_HCBUFFERSTATUS ;
 unsigned int SOTG_HCBUFFERSTATUS_ATL_BUF_FILL ;
 unsigned int SOTG_HCBUFFERSTATUS_INT_BUF_FILL ;
 unsigned int SOTG_HCBUFFERSTATUS_ISO_BUF_FILL ;
 unsigned int SOTG_HCINTERRUPT_ALT_IRQ ;
 int SOTG_HCINTERRUPT_ENABLE ;
 unsigned int SOTG_HCINTERRUPT_INT_IRQ ;
 unsigned int SOTG_HCINTERRUPT_ISO_IRQ ;
 unsigned int SOTG_HCINTERRUPT_OTG_IRQ ;
 int SOTG_HCSCRATCH ;
 int SOTG_HW_MODE_CTRL ;
 unsigned int SOTG_HW_MODE_CTRL_ALL_ATX_RESET ;
 int SOTG_HW_MODE_CTRL_COMN_INT ;
 int SOTG_HW_MODE_CTRL_GLOBAL_INTR_EN ;
 int SOTG_INTERRUPT_CFG ;
 int SOTG_INTERRUPT_CFG_CDBGMOD ;
 int SOTG_INTERRUPT_CFG_DDBGMODIN ;
 int SOTG_INTERRUPT_CFG_DDBGMODOUT ;
 int SOTG_INT_IRQ_MASK_AND ;
 int SOTG_INT_IRQ_MASK_OR ;
 int SOTG_INT_PTD_LAST_PTD ;
 int SOTG_INT_PTD_SKIP_PTD ;
 unsigned int SOTG_IRQ_ENABLE_CLR (int) ;
 unsigned int SOTG_IRQ_ENABLE_SET (int) ;
 int SOTG_IRQ_ENABLE_SET_CLR ;
 int SOTG_IRQ_ID ;
 int SOTG_IRQ_VBUS_VLD ;
 int SOTG_ISO_IRQ_MASK_AND ;
 int SOTG_ISO_IRQ_MASK_OR ;
 int SOTG_ISO_PTD_LAST_PTD ;
 int SOTG_ISO_PTD_SKIP_PTD ;
 int SOTG_MODE ;
 unsigned int SOTG_MODE_CLKAON ;
 unsigned int SOTG_MODE_GLINTENA ;
 unsigned int SOTG_MODE_SFRESET ;
 unsigned int SOTG_MODE_WKUPCS ;
 int SOTG_POWER_DOWN ;
 int SOTG_POWER_DOWN_HC_CLK_EN ;
 int SOTG_SW_RESET ;
 unsigned int SOTG_SW_RESET_ALL ;
 unsigned int SOTG_SW_RESET_HC ;
 int SOTG_UNLOCK_DEVICE ;
 unsigned int SOTG_UNLOCK_DEVICE_CODE ;
 int SOTG_USBCMD ;
 unsigned int SOTG_USBCMD_HCRESET ;
 unsigned int SOTG_USBCMD_RS ;
 int SOTG_VEND_PROD_ID ;
 int USB_BUS_LOCK (TYPE_1__*) ;
 int USB_BUS_UNLOCK (TYPE_1__*) ;
 int USB_REV_2_0 ;
 int hz ;
 int saf1761_otg_bus_methods ;
 int saf1761_otg_do_poll (TYPE_1__*) ;
 int saf1761_otg_get_hw_ep_profile (int *,struct usb_hw_ep_profile const**,int) ;
 int saf1761_otg_pull_down (struct saf1761_otg_softc*) ;
 int saf1761_otg_update_vbus (struct saf1761_otg_softc*) ;
 int usb_pause_mtx (int *,int) ;

usb_error_t
saf1761_otg_init(struct saf1761_otg_softc *sc)
{
 const struct usb_hw_ep_profile *pf;
 uint32_t x;

 DPRINTF("\n");


 sc->sc_bus.usbrev = USB_REV_2_0;
 sc->sc_bus.methods = &saf1761_otg_bus_methods;

 USB_BUS_LOCK(&sc->sc_bus);


 SAF1761_WRITE_LE_4(sc, SOTG_SW_RESET, SOTG_SW_RESET_ALL);

 DELAY(1000);


 SAF1761_WRITE_LE_4(sc, SOTG_SW_RESET, SOTG_SW_RESET_HC);


 DELAY(1000);

 SAF1761_WRITE_LE_4(sc, SOTG_SW_RESET, 0);


 DELAY(1000);


 sc->sc_hw_mode |= SOTG_HW_MODE_CTRL_GLOBAL_INTR_EN |
     SOTG_HW_MODE_CTRL_COMN_INT;


 SAF1761_WRITE_LE_4(sc, SOTG_UNLOCK_DEVICE, SOTG_UNLOCK_DEVICE_CODE);





 SAF1761_WRITE_LE_4(sc, SOTG_HW_MODE_CTRL, sc->sc_hw_mode);
 SAF1761_WRITE_LE_4(sc, SOTG_HW_MODE_CTRL, sc->sc_hw_mode);

 SAF1761_WRITE_LE_4(sc, SOTG_DCSCRATCH, 0xdeadbeef);
 SAF1761_WRITE_LE_4(sc, SOTG_HCSCRATCH, 0xdeadbeef);

 DPRINTF("DCID=0x%08x VEND_PROD=0x%08x HWMODE=0x%08x SCRATCH=0x%08x,0x%08x\n",
     SAF1761_READ_LE_4(sc, SOTG_DCCHIP_ID),
     SAF1761_READ_LE_4(sc, SOTG_VEND_PROD_ID),
     SAF1761_READ_LE_4(sc, SOTG_HW_MODE_CTRL),
     SAF1761_READ_LE_4(sc, SOTG_DCSCRATCH),
     SAF1761_READ_LE_4(sc, SOTG_HCSCRATCH));


 SAF1761_WRITE_LE_4(sc, SOTG_MODE, SOTG_MODE_SFRESET);
 SAF1761_WRITE_LE_4(sc, SOTG_MODE, 0);


 DELAY(1000);


 SAF1761_WRITE_LE_4(sc, SOTG_USBCMD, SOTG_USBCMD_HCRESET);


 for (x = 0; x != 10; x++) {
  if ((SAF1761_READ_LE_4(sc, SOTG_USBCMD) & SOTG_USBCMD_HCRESET) == 0)
   break;
  usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 10);
 }

 SAF1761_WRITE_LE_4(sc, SOTG_HW_MODE_CTRL, sc->sc_hw_mode |
     SOTG_HW_MODE_CTRL_ALL_ATX_RESET);


 DELAY(1000);

 SAF1761_WRITE_LE_4(sc, SOTG_HW_MODE_CTRL, sc->sc_hw_mode);


 DELAY(1000);


 saf1761_otg_pull_down(sc);


 usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 100);

 for (x = 1;; x++) {

  saf1761_otg_get_hw_ep_profile(((void*)0), &pf, x);
  if (pf == ((void*)0))
   break;


  SAF1761_WRITE_LE_4(sc, SOTG_EP_INDEX,
      (x << SOTG_EP_INDEX_ENDP_INDEX_SHIFT) |
      SOTG_EP_INDEX_DIR_IN);


  SAF1761_WRITE_LE_4(sc, SOTG_EP_MAXPACKET, pf->max_in_frame_size);


  SAF1761_WRITE_LE_4(sc, SOTG_EP_INDEX,
      (x << SOTG_EP_INDEX_ENDP_INDEX_SHIFT) |
      SOTG_EP_INDEX_DIR_OUT);


  SAF1761_WRITE_LE_4(sc, SOTG_EP_MAXPACKET, pf->max_out_frame_size);
 }


 SAF1761_WRITE_LE_4(sc, SOTG_MODE, SOTG_MODE_GLINTENA |
     SOTG_MODE_CLKAON | SOTG_MODE_WKUPCS);

 sc->sc_interrupt_cfg |=
     SOTG_INTERRUPT_CFG_CDBGMOD |
     SOTG_INTERRUPT_CFG_DDBGMODIN |
     SOTG_INTERRUPT_CFG_DDBGMODOUT;


 SAF1761_WRITE_LE_4(sc, SOTG_INTERRUPT_CFG, sc->sc_interrupt_cfg);


 SAF1761_WRITE_LE_4(sc, SOTG_IRQ_ENABLE_SET_CLR,
     SOTG_IRQ_ENABLE_CLR(0xFFFF));
 SAF1761_WRITE_LE_4(sc, SOTG_IRQ_ENABLE_SET_CLR,
     SOTG_IRQ_ENABLE_SET(SOTG_IRQ_ID | SOTG_IRQ_VBUS_VLD));


 sc->sc_intr_enable = SOTG_DCINTERRUPT_IEVBUS |
     SOTG_DCINTERRUPT_IEBRST | SOTG_DCINTERRUPT_IESUSP;
 SAF1761_WRITE_LE_4(sc, SOTG_DCINTERRUPT_EN, sc->sc_intr_enable);





 SAF1761_WRITE_LE_4(sc, SOTG_CTRL_SET_CLR,
     SOTG_CTRL_CLR(0xFFFF));




 SAF1761_WRITE_LE_4(sc, SOTG_CTRL_SET_CLR,
     SOTG_CTRL_SET(SOTG_CTRL_SW_SEL_HC_DC |
     SOTG_CTRL_BDIS_ACON_EN | SOTG_CTRL_SEL_CP_EXT |
     SOTG_CTRL_VBUS_DRV));


 SAF1761_WRITE_LE_4(sc, SOTG_ADDRESS, 0);


 x = SAF1761_READ_LE_4(sc, SOTG_POWER_DOWN);
 SAF1761_WRITE_LE_4(sc, SOTG_POWER_DOWN, x | SOTG_POWER_DOWN_HC_CLK_EN);


 usb_pause_mtx(&sc->sc_bus.bus_mtx, hz / 100);


 SAF1761_WRITE_LE_4(sc, SOTG_CONFIGFLAG, SOTG_CONFIGFLAG_ENABLE);


 for (x = 0x400; x != 0x10000; x += 4)
  SAF1761_WRITE_LE_4(sc, x, 0);


 SAF1761_WRITE_LE_4(sc, SOTG_USBCMD, SOTG_USBCMD_RS);

 DPRINTF("USBCMD=0x%08x\n", SAF1761_READ_LE_4(sc, SOTG_USBCMD));


 SAF1761_WRITE_LE_4(sc, SOTG_ATL_PTD_LAST_PTD, (1 << 31));
 SAF1761_WRITE_LE_4(sc, SOTG_INT_PTD_LAST_PTD, (1 << 31));
 SAF1761_WRITE_LE_4(sc, SOTG_ISO_PTD_LAST_PTD, (1 << 31));


 SAF1761_WRITE_LE_4(sc, SOTG_ATL_PTD_SKIP_PTD, -1U);
 SAF1761_WRITE_LE_4(sc, SOTG_INT_PTD_SKIP_PTD, -1U);
 SAF1761_WRITE_LE_4(sc, SOTG_ISO_PTD_SKIP_PTD, -1U);


 SAF1761_WRITE_LE_4(sc, SOTG_HCBUFFERSTATUS,
     SOTG_HCBUFFERSTATUS_ISO_BUF_FILL |
     SOTG_HCBUFFERSTATUS_INT_BUF_FILL |
     SOTG_HCBUFFERSTATUS_ATL_BUF_FILL);


 SAF1761_WRITE_LE_4(sc, SOTG_ISO_IRQ_MASK_AND, 0);
 SAF1761_WRITE_LE_4(sc, SOTG_INT_IRQ_MASK_AND, 0);
 SAF1761_WRITE_LE_4(sc, SOTG_ATL_IRQ_MASK_AND, 0);


 SAF1761_WRITE_LE_4(sc, SOTG_ISO_IRQ_MASK_OR, -1U);
 SAF1761_WRITE_LE_4(sc, SOTG_INT_IRQ_MASK_OR, -1U);
 SAF1761_WRITE_LE_4(sc, SOTG_ATL_IRQ_MASK_OR, -1U);


 SAF1761_WRITE_LE_4(sc, SOTG_HCINTERRUPT_ENABLE,
     SOTG_HCINTERRUPT_OTG_IRQ |
     SOTG_HCINTERRUPT_ISO_IRQ |
     SOTG_HCINTERRUPT_ALT_IRQ |
     SOTG_HCINTERRUPT_INT_IRQ);


 saf1761_otg_update_vbus(sc);

 USB_BUS_UNLOCK(&sc->sc_bus);



 saf1761_otg_do_poll(&sc->sc_bus);

 return (0);
}

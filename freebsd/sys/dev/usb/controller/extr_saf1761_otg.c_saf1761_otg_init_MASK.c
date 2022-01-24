#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int uint32_t ;
struct usb_hw_ep_profile {unsigned int max_in_frame_size; unsigned int max_out_frame_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  bus_mtx; int /*<<< orphan*/ * methods; int /*<<< orphan*/  usbrev; } ;
struct saf1761_otg_softc {int sc_hw_mode; int sc_interrupt_cfg; int sc_intr_enable; TYPE_1__ sc_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 unsigned int FUNC2 (struct saf1761_otg_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct saf1761_otg_softc*,int,unsigned int) ; 
 int SOTG_ADDRESS ; 
 int SOTG_ATL_IRQ_MASK_AND ; 
 int SOTG_ATL_IRQ_MASK_OR ; 
 int SOTG_ATL_PTD_LAST_PTD ; 
 int SOTG_ATL_PTD_SKIP_PTD ; 
 int SOTG_CONFIGFLAG ; 
 unsigned int SOTG_CONFIGFLAG_ENABLE ; 
 int SOTG_CTRL_BDIS_ACON_EN ; 
 unsigned int FUNC4 (int) ; 
 int SOTG_CTRL_SEL_CP_EXT ; 
 unsigned int FUNC5 (int) ; 
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
 unsigned int FUNC6 (int) ; 
 unsigned int FUNC7 (int) ; 
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
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  USB_REV_2_0 ; 
 int hz ; 
 int /*<<< orphan*/  saf1761_otg_bus_methods ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct usb_hw_ep_profile const**,int) ; 
 int /*<<< orphan*/  FUNC12 (struct saf1761_otg_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct saf1761_otg_softc*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 

usb_error_t
FUNC15(struct saf1761_otg_softc *sc)
{
	const struct usb_hw_ep_profile *pf;
	uint32_t x;

	FUNC1("\n");

	/* set up the bus structure */
	sc->sc_bus.usbrev = USB_REV_2_0;
	sc->sc_bus.methods = &saf1761_otg_bus_methods;

	FUNC8(&sc->sc_bus);

	/* Reset Host controller, including HW mode */
	FUNC3(sc, SOTG_SW_RESET, SOTG_SW_RESET_ALL);

	FUNC0(1000);

	/* Reset Host controller, including HW mode */
	FUNC3(sc, SOTG_SW_RESET, SOTG_SW_RESET_HC);

	/* wait a bit */
	FUNC0(1000);

	FUNC3(sc, SOTG_SW_RESET, 0);

	/* wait a bit */
	FUNC0(1000);

	/* Enable interrupts */
	sc->sc_hw_mode |= SOTG_HW_MODE_CTRL_GLOBAL_INTR_EN |
	    SOTG_HW_MODE_CTRL_COMN_INT;

	/* unlock device */
	FUNC3(sc, SOTG_UNLOCK_DEVICE, SOTG_UNLOCK_DEVICE_CODE);

	/*
	 * Set correct hardware mode, must be written twice if bus
	 * width is changed:
	 */
	FUNC3(sc, SOTG_HW_MODE_CTRL, sc->sc_hw_mode);
	FUNC3(sc, SOTG_HW_MODE_CTRL, sc->sc_hw_mode);

	FUNC3(sc, SOTG_DCSCRATCH, 0xdeadbeef);
	FUNC3(sc, SOTG_HCSCRATCH, 0xdeadbeef);

	FUNC1("DCID=0x%08x VEND_PROD=0x%08x HWMODE=0x%08x SCRATCH=0x%08x,0x%08x\n",
	    FUNC2(sc, SOTG_DCCHIP_ID),
	    FUNC2(sc, SOTG_VEND_PROD_ID),
	    FUNC2(sc, SOTG_HW_MODE_CTRL),
	    FUNC2(sc, SOTG_DCSCRATCH),
	    FUNC2(sc, SOTG_HCSCRATCH));

	/* reset device controller */
	FUNC3(sc, SOTG_MODE, SOTG_MODE_SFRESET);
	FUNC3(sc, SOTG_MODE, 0);

	/* wait a bit */
	FUNC0(1000);

	/* reset host controller */
	FUNC3(sc, SOTG_USBCMD, SOTG_USBCMD_HCRESET);

	/* wait for reset to clear */
	for (x = 0; x != 10; x++) {
		if ((FUNC2(sc, SOTG_USBCMD) & SOTG_USBCMD_HCRESET) == 0)
			break;
		FUNC14(&sc->sc_bus.bus_mtx, hz / 10);
	}

	FUNC3(sc, SOTG_HW_MODE_CTRL, sc->sc_hw_mode |
	    SOTG_HW_MODE_CTRL_ALL_ATX_RESET);

	/* wait a bit */
	FUNC0(1000);

	FUNC3(sc, SOTG_HW_MODE_CTRL, sc->sc_hw_mode);

	/* wait a bit */
	FUNC0(1000);

	/* do a pulldown */
	FUNC12(sc);

	/* wait 10ms for pulldown to stabilise */
	FUNC14(&sc->sc_bus.bus_mtx, hz / 100);

	for (x = 1;; x++) {

		FUNC11(NULL, &pf, x);
		if (pf == NULL)
			break;

		/* select the correct endpoint */
		FUNC3(sc, SOTG_EP_INDEX,
		    (x << SOTG_EP_INDEX_ENDP_INDEX_SHIFT) |
		    SOTG_EP_INDEX_DIR_IN);

		/* select the maximum packet size */
		FUNC3(sc, SOTG_EP_MAXPACKET, pf->max_in_frame_size);

		/* select the correct endpoint */
		FUNC3(sc, SOTG_EP_INDEX,
		    (x << SOTG_EP_INDEX_ENDP_INDEX_SHIFT) |
		    SOTG_EP_INDEX_DIR_OUT);

		/* select the maximum packet size */
		FUNC3(sc, SOTG_EP_MAXPACKET, pf->max_out_frame_size);
	}

	/* enable interrupts */
	FUNC3(sc, SOTG_MODE, SOTG_MODE_GLINTENA |
	    SOTG_MODE_CLKAON | SOTG_MODE_WKUPCS);

	sc->sc_interrupt_cfg |=
	    SOTG_INTERRUPT_CFG_CDBGMOD |
	    SOTG_INTERRUPT_CFG_DDBGMODIN |
	    SOTG_INTERRUPT_CFG_DDBGMODOUT;

	/* set default values */
	FUNC3(sc, SOTG_INTERRUPT_CFG, sc->sc_interrupt_cfg);

	/* enable VBUS and ID interrupt */
	FUNC3(sc, SOTG_IRQ_ENABLE_SET_CLR,
	    FUNC6(0xFFFF));
	FUNC3(sc, SOTG_IRQ_ENABLE_SET_CLR,
	    FUNC7(SOTG_IRQ_ID | SOTG_IRQ_VBUS_VLD));

	/* enable interrupts */
	sc->sc_intr_enable = SOTG_DCINTERRUPT_IEVBUS |
	    SOTG_DCINTERRUPT_IEBRST | SOTG_DCINTERRUPT_IESUSP;
	FUNC3(sc, SOTG_DCINTERRUPT_EN, sc->sc_intr_enable);

	/*
	 * Connect ATX port 1 to device controller, select external
	 * charge pump and driver VBUS to +5V:
	 */
	FUNC3(sc, SOTG_CTRL_SET_CLR,
	    FUNC4(0xFFFF));
#ifdef __rtems__
	SAF1761_WRITE_LE_4(sc, SOTG_CTRL_SET_CLR,
	    SOTG_CTRL_SET(SOTG_CTRL_SEL_CP_EXT | SOTG_CTRL_VBUS_DRV));
#else
	FUNC3(sc, SOTG_CTRL_SET_CLR,
	    FUNC5(SOTG_CTRL_SW_SEL_HC_DC |
	    SOTG_CTRL_BDIS_ACON_EN | SOTG_CTRL_SEL_CP_EXT |
	    SOTG_CTRL_VBUS_DRV));
#endif
	/* disable device address */
	FUNC3(sc, SOTG_ADDRESS, 0);

	/* enable host controller clock and preserve reserved bits */
	x = FUNC2(sc, SOTG_POWER_DOWN);
	FUNC3(sc, SOTG_POWER_DOWN, x | SOTG_POWER_DOWN_HC_CLK_EN);

	/* wait 10ms for clock */
	FUNC14(&sc->sc_bus.bus_mtx, hz / 100);

	/* enable configuration flag */
	FUNC3(sc, SOTG_CONFIGFLAG, SOTG_CONFIGFLAG_ENABLE);

	/* clear RAM block */
	for (x = 0x400; x != 0x10000; x += 4)
		FUNC3(sc, x, 0);

	/* start the HC */
	FUNC3(sc, SOTG_USBCMD, SOTG_USBCMD_RS);

	FUNC1("USBCMD=0x%08x\n", FUNC2(sc, SOTG_USBCMD));

	/* make HC scan all PTDs */
	FUNC3(sc, SOTG_ATL_PTD_LAST_PTD, (1 << 31));
	FUNC3(sc, SOTG_INT_PTD_LAST_PTD, (1 << 31));
	FUNC3(sc, SOTG_ISO_PTD_LAST_PTD, (1 << 31));

	/* skip all PTDs by default */
	FUNC3(sc, SOTG_ATL_PTD_SKIP_PTD, -1U);
	FUNC3(sc, SOTG_INT_PTD_SKIP_PTD, -1U);
	FUNC3(sc, SOTG_ISO_PTD_SKIP_PTD, -1U);

	/* activate all PTD types */
	FUNC3(sc, SOTG_HCBUFFERSTATUS,
	    SOTG_HCBUFFERSTATUS_ISO_BUF_FILL |
	    SOTG_HCBUFFERSTATUS_INT_BUF_FILL |
	    SOTG_HCBUFFERSTATUS_ATL_BUF_FILL);

	/* we don't use the AND mask */
	FUNC3(sc, SOTG_ISO_IRQ_MASK_AND, 0);
	FUNC3(sc, SOTG_INT_IRQ_MASK_AND, 0);
	FUNC3(sc, SOTG_ATL_IRQ_MASK_AND, 0);

	/* enable all PTD OR interrupts by default */
	FUNC3(sc, SOTG_ISO_IRQ_MASK_OR, -1U);
	FUNC3(sc, SOTG_INT_IRQ_MASK_OR, -1U);
	FUNC3(sc, SOTG_ATL_IRQ_MASK_OR, -1U);

	/* enable HC interrupts */
	FUNC3(sc, SOTG_HCINTERRUPT_ENABLE,
	    SOTG_HCINTERRUPT_OTG_IRQ |
	    SOTG_HCINTERRUPT_ISO_IRQ |
	    SOTG_HCINTERRUPT_ALT_IRQ |
	    SOTG_HCINTERRUPT_INT_IRQ);

	/* poll initial VBUS status */
	FUNC13(sc);

	FUNC9(&sc->sc_bus);

	/* catch any lost interrupts */

	FUNC10(&sc->sc_bus);

	return (0);			/* success */
}
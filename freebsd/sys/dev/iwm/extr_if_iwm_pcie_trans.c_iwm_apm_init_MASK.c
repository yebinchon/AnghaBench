#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iwm_softc {int /*<<< orphan*/  sc_dev; TYPE_2__* cfg; } ;
struct TYPE_4__ {scalar_t__ device_family; scalar_t__ host_interrupt_operation_mode; TYPE_1__* base_params; } ;
struct TYPE_3__ {scalar_t__ pll_cfg_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  IWM_APMG_CLK_EN_REG ; 
 int /*<<< orphan*/  IWM_APMG_CLK_VAL_DMA_CLK_RQT ; 
 int /*<<< orphan*/  IWM_APMG_PCIDEV_STT_REG ; 
 int /*<<< orphan*/  IWM_APMG_PCIDEV_STT_VAL_L1_ACT_DIS ; 
 int /*<<< orphan*/  IWM_APMG_RTC_INT_STT_REG ; 
 int /*<<< orphan*/  IWM_APMG_RTC_INT_STT_RFKILL ; 
 int /*<<< orphan*/  IWM_CSR_ANA_PLL_CFG ; 
 int /*<<< orphan*/  IWM_CSR_DBG_HPET_MEM_REG ; 
 scalar_t__ IWM_CSR_DBG_HPET_MEM_REG_VAL ; 
 int /*<<< orphan*/  IWM_CSR_GIO_CHICKEN_BITS ; 
 scalar_t__ IWM_CSR_GIO_CHICKEN_BITS_REG_BIT_DIS_L0S_EXIT_TIMER ; 
 scalar_t__ IWM_CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX ; 
 int /*<<< orphan*/  IWM_CSR_GP_CNTRL ; 
 scalar_t__ IWM_CSR_GP_CNTRL_REG_FLAG_INIT_DONE ; 
 int /*<<< orphan*/  IWM_CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY ; 
 int /*<<< orphan*/  IWM_CSR_HW_IF_CONFIG_REG ; 
 scalar_t__ IWM_CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A ; 
 int /*<<< orphan*/  IWM_DEBUG_RESET ; 
 scalar_t__ IWM_DEVICE_FAMILY_7000 ; 
 scalar_t__ IWM_DEVICE_FAMILY_8000 ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IWM_OSC_CLK ; 
 int /*<<< orphan*/  IWM_OSC_CLK_FORCE_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (struct iwm_softc*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct iwm_softc*) ; 
 scalar_t__ FUNC5 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwm_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct iwm_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iwm_softc* trans ; 

int
FUNC11(struct iwm_softc *sc)
{
	int error = 0;

	FUNC1(sc, IWM_DEBUG_RESET, "iwm apm start\n");

	/* Disable L0S exit timer (platform NMI Work/Around) */
	if (sc->cfg->device_family < IWM_DEVICE_FAMILY_8000) {
		FUNC2(sc, IWM_CSR_GIO_CHICKEN_BITS,
		    IWM_CSR_GIO_CHICKEN_BITS_REG_BIT_DIS_L0S_EXIT_TIMER);
	}

	/*
	 * Disable L0s without affecting L1;
	 *  don't wait for ICH L0s (ICH bug W/A)
	 */
	FUNC2(sc, IWM_CSR_GIO_CHICKEN_BITS,
	    IWM_CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX);

	/* Set FH wait threshold to maximum (HW error during stress W/A) */
	FUNC2(sc, IWM_CSR_DBG_HPET_MEM_REG, IWM_CSR_DBG_HPET_MEM_REG_VAL);

	/*
	 * Enable HAP INTA (interrupt from management bus) to
	 * wake device's PCI Express link L1a -> L0s
	 */
	FUNC2(sc, IWM_CSR_HW_IF_CONFIG_REG,
	    IWM_CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A);

	FUNC4(sc);

#if 0 /* not for 7k/8k */
	/* Configure analog phase-lock-loop before activating to D0A */
	if (trans->cfg->base_params->pll_cfg_val)
		IWM_SETBITS(trans, IWM_CSR_ANA_PLL_CFG,
		    trans->cfg->base_params->pll_cfg_val);
#endif

	/*
	 * Set "initialization complete" bit to move adapter from
	 * D0U* --> D0A* (powered-up active) state.
	 */
	FUNC2(sc, IWM_CSR_GP_CNTRL, IWM_CSR_GP_CNTRL_REG_FLAG_INIT_DONE);

	/*
	 * Wait for clock stabilization; once stabilized, access to
	 * device-internal resources is supported, e.g. iwm_write_prph()
	 * and accesses to uCode SRAM.
	 */
	if (!FUNC7(sc, IWM_CSR_GP_CNTRL,
	    IWM_CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY,
	    IWM_CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY, 25000)) {
		FUNC3(sc->sc_dev,
		    "timeout waiting for clock stabilization\n");
		error = ETIMEDOUT;
		goto out;
	}

	if (sc->cfg->host_interrupt_operation_mode) {
		/*
		 * This is a bit of an abuse - This is needed for 7260 / 3160
		 * only check host_interrupt_operation_mode even if this is
		 * not related to host_interrupt_operation_mode.
		 *
		 * Enable the oscillator to count wake up time for L1 exit. This
		 * consumes slightly more power (100uA) - but allows to be sure
		 * that we wake up from L1 on time.
		 *
		 * This looks weird: read twice the same register, discard the
		 * value, set a bit, and yet again, read that same register
		 * just to discard the value. But that's the way the hardware
		 * seems to like it.
		 */
		if (FUNC5(sc)) {
			FUNC8(sc, IWM_OSC_CLK);
			FUNC8(sc, IWM_OSC_CLK);
			FUNC6(sc);
		}
		FUNC9(sc, IWM_OSC_CLK, IWM_OSC_CLK_FORCE_CONTROL);
		if (FUNC5(sc)) {
			FUNC8(sc, IWM_OSC_CLK);
			FUNC8(sc, IWM_OSC_CLK);
			FUNC6(sc);
		}
	}

	/*
	 * Enable DMA clock and wait for it to stabilize.
	 *
	 * Write to "CLK_EN_REG"; "1" bits enable clocks, while "0" bits
	 * do not disable clocks.  This preserves any hardware bits already
	 * set by default in "CLK_CTRL_REG" after reset.
	 */
	if (sc->cfg->device_family == IWM_DEVICE_FAMILY_7000) {
		if (FUNC5(sc)) {
			FUNC10(sc, IWM_APMG_CLK_EN_REG,
			    IWM_APMG_CLK_VAL_DMA_CLK_RQT);
			FUNC6(sc);
		}
		FUNC0(20);

		/* Disable L1-Active */
		FUNC9(sc, IWM_APMG_PCIDEV_STT_REG,
		    IWM_APMG_PCIDEV_STT_VAL_L1_ACT_DIS);

		/* Clear the interrupt in APMG if the NIC is in RFKILL */
		if (FUNC5(sc)) {
			FUNC10(sc, IWM_APMG_RTC_INT_STT_REG,
			    IWM_APMG_RTC_INT_STT_RFKILL);
			FUNC6(sc);
		}
	}
 out:
	if (error)
		FUNC3(sc->sc_dev, "apm init error %d\n", error);
	return error;
}
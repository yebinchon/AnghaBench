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
typedef  int uint32_t ;
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  u_int16_t ;
struct ath_hal {int dummy; } ;
typedef  int /*<<< orphan*/  reg16 ;
struct TYPE_4__ {int ah_phyPowerOn; } ;
struct TYPE_3__ {scalar_t__ ah_bustype; scalar_t__ ah_ispcie; } ;
typedef  scalar_t__ HAL_BOOL ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct ath_hal*) ; 
 TYPE_1__* FUNC1 (struct ath_hal*) ; 
 scalar_t__ AH_TRUE ; 
 int /*<<< orphan*/  AR_CFG ; 
 int AR_CFG_SWRD ; 
 int AR_CFG_SWTD ; 
 int /*<<< orphan*/  AR_IER ; 
 int AR_IER_DISABLE ; 
 int /*<<< orphan*/  AR_ISR_RAC ; 
 int /*<<< orphan*/  AR_RC ; 
 int AR_RC_BB ; 
 int AR_RC_MAC ; 
 int AR_RC_PCI ; 
 int /*<<< orphan*/  AR_RXDP ; 
 scalar_t__ HAL_BUS_TYPE_PCI ; 
 int /*<<< orphan*/  HAL_PM_AWAKE ; 
 int INIT_CONFIG_STATUS ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PCI_COMMON_CONFIG_STATUS ; 
 scalar_t__ FUNC6 (struct ath_hal*) ; 
 scalar_t__ FUNC7 (struct ath_hal*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (struct ath_hal*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC10 () ; 

__attribute__((used)) static HAL_BOOL
FUNC11(struct ath_hal *ah, uint32_t resetMask)
{
	uint32_t mask = resetMask ? resetMask : ~0;
	HAL_BOOL rt;

	/* Never reset the PCIE core */
	if (FUNC1(ah)->ah_ispcie) {
		resetMask &= ~AR_RC_PCI;
	}

	if (resetMask & (AR_RC_MAC | AR_RC_PCI)) {
		/*
		 * To ensure that the driver can reset the
		 * MAC, wake up the chip
		 */
		rt = FUNC7(ah, HAL_PM_AWAKE, AH_TRUE);

		if (rt != AH_TRUE) {
			return rt;
		}

		/*
		 * Disable interrupts
		 */
		FUNC5(ah, AR_IER, AR_IER_DISABLE);
		FUNC4(ah, AR_IER);

		if (FUNC6(ah) != AH_TRUE) {
			/*
			 * Failed to stop the MAC gracefully; let's be more forceful then
			 */

			/* need some delay before flush any pending MMR writes */
			FUNC3(15);
			FUNC4(ah, AR_RXDP);

			resetMask |= AR_RC_MAC | AR_RC_BB;
			/* _Never_ reset PCI Express core */
			if (! FUNC1(ah)->ah_ispcie) {
				resetMask |= AR_RC_PCI;
			}
#if 0
			/*
			 * Flush the park address of the PCI controller
			*/
			/* Read PCI slot information less than Hainan revision */
			if (AH_PRIVATE(ah)->ah_bustype == HAL_BUS_TYPE_PCI) {
				if (!IS_5112_REV5_UP(ah)) {
#define PCI_COMMON_CONFIG_STATUS    0x06
					u_int32_t    i;
					u_int16_t    reg16;

					for (i = 0; i < 32; i++) {
						ath_hal_read_pci_config_space(ah,
						    PCI_COMMON_CONFIG_STATUS,
						    &reg16, sizeof(reg16));
					}
				}
#undef PCI_COMMON_CONFIG_STATUS
			}
#endif
		} else {
			/*
			 * MAC stopped gracefully; no need to warm-reset the PCI bus
			 */

			resetMask &= ~AR_RC_PCI;

			/* need some delay before flush any pending MMR writes */
			FUNC3(15);
			FUNC4(ah, AR_RXDP);
		}
	}

	(void) FUNC4(ah, AR_RXDP);/* flush any pending MMR writes */
	FUNC5(ah, AR_RC, resetMask);
	FUNC3(15);			/* need to wait at least 128 clocks
					   when reseting PCI before read */
	mask &= (AR_RC_MAC | AR_RC_BB);
	resetMask &= (AR_RC_MAC | AR_RC_BB);
	rt = FUNC9(ah, AR_RC, mask, resetMask);
        if ((resetMask & AR_RC_MAC) == 0) {
		if (FUNC10()) {
			/*
			 * Set CFG, little-endian for descriptor accesses.
			 */
			mask = INIT_CONFIG_STATUS | AR_CFG_SWRD;
#ifndef AH_NEED_DESC_SWAP
			mask |= AR_CFG_SWTD;
#endif
			FUNC5(ah, AR_CFG, mask);
		} else
			FUNC5(ah, AR_CFG, INIT_CONFIG_STATUS);
		if (FUNC7(ah, HAL_PM_AWAKE, AH_TRUE))
			(void) FUNC4(ah, AR_ISR_RAC);
	}

	/* track PHY power state so we don't try to r/w BB registers */
	FUNC0(ah)->ah_phyPowerOn = ((resetMask & AR_RC_BB) == 0);
	return rt;
}
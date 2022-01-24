#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ah_miscMode; } ;
struct TYPE_4__ {int halRxChainMask; int halRxStreams; int halTxChainMask; int halTxStreams; } ;
struct TYPE_5__ {TYPE_1__ ah_caps; } ;
typedef  int /*<<< orphan*/  HAL_STATUS ;
typedef  int HAL_CAPABILITY_TYPE ;
typedef  TYPE_1__ HAL_CAPABILITIES ;
typedef  int /*<<< orphan*/  HAL_BOOL ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_FALSE ; 
 TYPE_2__* FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  AH_TRUE ; 
 int /*<<< orphan*/  AR_EEP_RXMASK ; 
 int /*<<< orphan*/  AR_EEP_TXMASK ; 
 int /*<<< orphan*/  AR_MISC_MODE ; 
 int /*<<< orphan*/  AR_PCU_TXOP_TBTT_LIMIT_ENA ; 
#define  HAL_CAP_ENFORCE_TXOP 130 
#define  HAL_CAP_RX_CHAINMASK 129 
#define  HAL_CAP_TX_CHAINMASK 128 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int,int,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int) ; 

HAL_BOOL
FUNC7(struct ath_hal *ah, HAL_CAPABILITY_TYPE type,
    u_int32_t capability, u_int32_t setting, HAL_STATUS *status)
{
	HAL_CAPABILITIES *pCap = &FUNC1(ah)->ah_caps;

	switch (type) {
	case HAL_CAP_RX_CHAINMASK:
		setting &= FUNC5(ah, AR_EEP_RXMASK, NULL);
		pCap->halRxChainMask = setting;
		if (FUNC6(setting) > 2)
			pCap->halRxStreams = 2;
		else
			pCap->halRxStreams = 1;
		return AH_TRUE;
	case HAL_CAP_TX_CHAINMASK:
		setting &= FUNC5(ah, AR_EEP_TXMASK, NULL);
		pCap->halTxChainMask = setting;
		if (FUNC6(setting) > 2)
			pCap->halTxStreams = 2;
		else
			pCap->halTxStreams = 1;
		return AH_TRUE;
	case HAL_CAP_ENFORCE_TXOP:
		if (capability != 1)
			return AH_FALSE;
		if (setting) {
			FUNC0(ah)->ah_miscMode
			    |= AR_PCU_TXOP_TBTT_LIMIT_ENA;
			FUNC3(ah, AR_MISC_MODE,
			    AR_PCU_TXOP_TBTT_LIMIT_ENA);
		} else {
			FUNC0(ah)->ah_miscMode
			    &= ~AR_PCU_TXOP_TBTT_LIMIT_ENA;
			FUNC2(ah, AR_MISC_MODE,
			    AR_PCU_TXOP_TBTT_LIMIT_ENA);
		}
		return AH_TRUE;
	default:
		break;
	}
	return FUNC4(ah, type, capability, setting, status);
}
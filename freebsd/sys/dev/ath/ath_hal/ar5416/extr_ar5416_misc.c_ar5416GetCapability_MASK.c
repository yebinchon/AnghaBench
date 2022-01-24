#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ath_hal {int /*<<< orphan*/  ah_macVersion; } ;
struct TYPE_2__ {int ah_miscMode; } ;
typedef  int /*<<< orphan*/  HAL_STATUS ;
typedef  int HAL_CAPABILITY_TYPE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct ath_hal*) ; 
 int AR_PCU_TXOP_TBTT_LIMIT_ENA ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_XSREV_VERSION_OWL_PCI ; 
 int /*<<< orphan*/  AR_XSREV_VERSION_OWL_PCIE ; 
#define  HAL_BB_HANG_DFS 134 
#define  HAL_BB_HANG_RIFS 133 
#define  HAL_BB_HANG_RX_CLEAR 132 
#define  HAL_CAP_BB_HANG 131 
#define  HAL_CAP_DIVERSITY 130 
#define  HAL_CAP_ENFORCE_TXOP 129 
#define  HAL_CAP_MAC_HANG 128 
 int /*<<< orphan*/  HAL_ENOTSUPP ; 
 int /*<<< orphan*/  HAL_ENXIO ; 
 int /*<<< orphan*/  HAL_OK ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int,int,int*) ; 

HAL_STATUS
FUNC5(struct ath_hal *ah, HAL_CAPABILITY_TYPE type,
        uint32_t capability, uint32_t *result)
{
	switch (type) {
	case HAL_CAP_BB_HANG:
		switch (capability) {
		case HAL_BB_HANG_RIFS:
			return (FUNC1(ah) || FUNC3(ah)) ? HAL_OK : HAL_ENOTSUPP;
		case HAL_BB_HANG_DFS:
			return (FUNC1(ah) || FUNC3(ah)) ? HAL_OK : HAL_ENOTSUPP;
		case HAL_BB_HANG_RX_CLEAR:
			return FUNC2(ah) ? HAL_OK : HAL_ENOTSUPP;
		}
		break;
	case HAL_CAP_MAC_HANG:
		return ((ah->ah_macVersion == AR_XSREV_VERSION_OWL_PCI) ||
		    (ah->ah_macVersion == AR_XSREV_VERSION_OWL_PCIE) ||
		    FUNC1(ah) || FUNC3(ah)) ?
			HAL_OK : HAL_ENOTSUPP;
	case HAL_CAP_DIVERSITY:		/* disable classic fast diversity */
		return HAL_ENXIO;
	case HAL_CAP_ENFORCE_TXOP:
		if (capability == 0)
			return (HAL_OK);
		if (capability != 1)
			return (HAL_ENOTSUPP);
		(*result) =
		    !! (FUNC0(ah)->ah_miscMode & AR_PCU_TXOP_TBTT_LIMIT_ENA);
		return (HAL_OK);
	default:
		break;
	}
	return FUNC4(ah, type, capability, result);
}
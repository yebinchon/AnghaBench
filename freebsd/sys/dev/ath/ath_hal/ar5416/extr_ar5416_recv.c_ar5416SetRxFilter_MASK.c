#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
typedef  int u_int32_t ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_ERR ; 
 int AR_PHY_ERR_CCK_TIMING ; 
 int AR_PHY_ERR_OFDM_TIMING ; 
 int AR_PHY_ERR_RADAR ; 
 int /*<<< orphan*/  AR_RXCFG ; 
 int AR_RXCFG_ZLFDMA ; 
 int /*<<< orphan*/  AR_RX_FILTER ; 
 int HAL_RX_FILTER_PHYERR ; 
 int HAL_RX_FILTER_PHYRADAR ; 
 int FUNC0 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct ath_hal *ah, u_int32_t bits)
{
	uint32_t phybits;

	FUNC1(ah, AR_RX_FILTER, (bits & 0xffff));
	phybits = 0;
	if (bits & HAL_RX_FILTER_PHYRADAR)
		phybits |= AR_PHY_ERR_RADAR;
	if (bits & HAL_RX_FILTER_PHYERR)
		phybits |= AR_PHY_ERR_OFDM_TIMING | AR_PHY_ERR_CCK_TIMING;
	FUNC1(ah, AR_PHY_ERR, phybits);
	if (phybits) {
		FUNC1(ah, AR_RXCFG,
		    FUNC0(ah, AR_RXCFG) | AR_RXCFG_ZLFDMA);
	} else {
		FUNC1(ah, AR_RXCFG,
		    FUNC0(ah, AR_RXCFG) &~ AR_RXCFG_ZLFDMA);
	}
}
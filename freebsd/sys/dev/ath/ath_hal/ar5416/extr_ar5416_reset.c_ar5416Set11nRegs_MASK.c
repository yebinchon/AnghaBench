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
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {scalar_t__ ht_extprotspacing; } ;
typedef  int /*<<< orphan*/  HAL_HT_MACMODE ;

/* Variables and functions */
 int /*<<< orphan*/  AR_CST ; 
 int AR_CST_TIMEOUT_LIMIT_S ; 
 int /*<<< orphan*/  AR_GTTM ; 
 int /*<<< orphan*/  AR_GTTM_CST_USEC ; 
 int /*<<< orphan*/  AR_GTXTO ; 
 int AR_GTXTO_TIMEOUT_LIMIT_S ; 
 int AR_PHY_FC_DYN2040_EN ; 
 int AR_PHY_FC_DYN2040_EXT_CH ; 
 int AR_PHY_FC_DYN2040_PRI_CH ; 
 int AR_PHY_FC_ENABLE_DAC_FIFO ; 
 int AR_PHY_FC_HT_EN ; 
 int AR_PHY_FC_SHORT_GI_40 ; 
 int AR_PHY_FC_SINGLE_HT_LTF1 ; 
 int AR_PHY_FC_WALSH ; 
 int /*<<< orphan*/  AR_PHY_TURBO ; 
 scalar_t__ FUNC0 (struct ath_hal*) ; 
 scalar_t__ HAL_HT_EXTPROTSPACING_25 ; 
 int /*<<< orphan*/  HAL_HT_MACMODE_20 ; 
 int /*<<< orphan*/  HAL_HT_MACMODE_2040 ; 
 scalar_t__ FUNC1 (struct ieee80211_channel const*) ; 
 scalar_t__ FUNC2 (struct ieee80211_channel const*) ; 
 int FUNC3 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 TYPE_1__* ht ; 

__attribute__((used)) static void
FUNC7(struct ath_hal *ah, const struct ieee80211_channel *chan)
{
	uint32_t phymode;
	uint32_t enableDacFifo = 0;
	HAL_HT_MACMODE macmode;		/* MAC - 20/40 mode */

	if (FUNC0(ah))
		enableDacFifo = (FUNC3(ah, AR_PHY_TURBO) & AR_PHY_FC_ENABLE_DAC_FIFO);

	/* Enable 11n HT, 20 MHz */
	phymode = AR_PHY_FC_HT_EN | AR_PHY_FC_SHORT_GI_40
		| AR_PHY_FC_SINGLE_HT_LTF1 | AR_PHY_FC_WALSH | enableDacFifo;

	/* Configure baseband for dynamic 20/40 operation */
	if (FUNC1(chan)) {
		phymode |= AR_PHY_FC_DYN2040_EN;

		/* Configure control (primary) channel at +-10MHz */
		if (FUNC2(chan))
			phymode |= AR_PHY_FC_DYN2040_PRI_CH;
#if 0
		/* Configure 20/25 spacing */
		if (ht->ht_extprotspacing == HAL_HT_EXTPROTSPACING_25)
			phymode |= AR_PHY_FC_DYN2040_EXT_CH;
#endif
		macmode = HAL_HT_MACMODE_2040;
	} else
		macmode = HAL_HT_MACMODE_20;
	FUNC5(ah, AR_PHY_TURBO, phymode);

	/* Configure MAC for 20/40 operation */
	FUNC6(ah, macmode);

	/* global transmit timeout (25 TUs default)*/
	/* XXX - put this elsewhere??? */
	FUNC5(ah, AR_GTXTO, 25 << AR_GTXTO_TIMEOUT_LIMIT_S) ;

	/* carrier sense timeout */
	FUNC4(ah, AR_GTTM, AR_GTTM_CST_USEC);
	FUNC5(ah, AR_CST, 0xF << AR_CST_TIMEOUT_LIMIT_S);
}
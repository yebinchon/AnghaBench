#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {scalar_t__ pe_firpwr; scalar_t__ pe_rrssi; scalar_t__ pe_height; scalar_t__ pe_prssi; scalar_t__ pe_inband; int pe_blockradar; int pe_en_relstep_check; int pe_usefir128; int pe_enmaxrssi; int pe_enrelpwr; scalar_t__ pe_relpwr; scalar_t__ pe_relstep; scalar_t__ pe_maxlen; scalar_t__ pe_enabled; } ;
typedef  TYPE_1__ HAL_PHYERR_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_RADAR_0 ; 
 int /*<<< orphan*/  AR_PHY_RADAR_0_ENA ; 
 int /*<<< orphan*/  AR_PHY_RADAR_0_FIRPWR ; 
 int /*<<< orphan*/  AR_PHY_RADAR_0_HEIGHT ; 
 int /*<<< orphan*/  AR_PHY_RADAR_0_INBAND ; 
 int /*<<< orphan*/  AR_PHY_RADAR_0_PRSSI ; 
 int /*<<< orphan*/  AR_PHY_RADAR_0_RRSSI ; 
 int /*<<< orphan*/  AR_PHY_RADAR_2 ; 
 int /*<<< orphan*/  AR_PHY_RADAR_2_BLOCKOFDMWEAK ; 
 int /*<<< orphan*/  AR_PHY_RADAR_2_ENMAXRSSI ; 
 int /*<<< orphan*/  AR_PHY_RADAR_2_ENRELPWRCHK ; 
 int /*<<< orphan*/  AR_PHY_RADAR_2_ENRELSTEPCHK ; 
 int /*<<< orphan*/  AR_PHY_RADAR_2_MAXLEN ; 
 int /*<<< orphan*/  AR_PHY_RADAR_2_RELPWR ; 
 int /*<<< orphan*/  AR_PHY_RADAR_2_RELSTEP ; 
 int /*<<< orphan*/  AR_PHY_RADAR_2_USEFIR128 ; 
 scalar_t__ HAL_PHYERR_PARAM_NOVAL ; 
 scalar_t__ FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC7(struct ath_hal *ah, HAL_PHYERR_PARAM *pe)
{
	uint32_t val;
	val = FUNC2(ah, AR_PHY_RADAR_0);

	if (pe->pe_firpwr != HAL_PHYERR_PARAM_NOVAL) {
		val &= ~AR_PHY_RADAR_0_FIRPWR;
		val |= FUNC6(pe->pe_firpwr, AR_PHY_RADAR_0_FIRPWR);
	}
	if (pe->pe_rrssi != HAL_PHYERR_PARAM_NOVAL) {
		val &= ~AR_PHY_RADAR_0_RRSSI;
		val |= FUNC6(pe->pe_rrssi, AR_PHY_RADAR_0_RRSSI);
	}
	if (pe->pe_height != HAL_PHYERR_PARAM_NOVAL) {
		val &= ~AR_PHY_RADAR_0_HEIGHT;
		val |= FUNC6(pe->pe_height, AR_PHY_RADAR_0_HEIGHT);
	}
	if (pe->pe_prssi != HAL_PHYERR_PARAM_NOVAL) {
		val &= ~AR_PHY_RADAR_0_PRSSI;
		val |= FUNC6(pe->pe_prssi, AR_PHY_RADAR_0_PRSSI);
	}
	if (pe->pe_inband != HAL_PHYERR_PARAM_NOVAL) {
		val &= ~AR_PHY_RADAR_0_INBAND;
		val |= FUNC6(pe->pe_inband, AR_PHY_RADAR_0_INBAND);
	}
	if (pe->pe_enabled)
		val |= AR_PHY_RADAR_0_ENA;
	else
		val &= ~ AR_PHY_RADAR_0_ENA;

	if (FUNC0(ah)) {

		if (pe->pe_blockradar == 1)
			FUNC4(ah, AR_PHY_RADAR_2,
			    AR_PHY_RADAR_2_BLOCKOFDMWEAK);
		else
			FUNC1(ah, AR_PHY_RADAR_2,
			    AR_PHY_RADAR_2_BLOCKOFDMWEAK);

		if (pe->pe_en_relstep_check == 1)
			FUNC4(ah, AR_PHY_RADAR_2,
			    AR_PHY_RADAR_2_ENRELSTEPCHK);
		else
			FUNC1(ah, AR_PHY_RADAR_2,
			    AR_PHY_RADAR_2_ENRELSTEPCHK);

		if (pe->pe_usefir128 == 1)
			FUNC4(ah, AR_PHY_RADAR_2,
			    AR_PHY_RADAR_2_USEFIR128);
		else
			FUNC1(ah, AR_PHY_RADAR_2,
			    AR_PHY_RADAR_2_USEFIR128);

		if (pe->pe_enmaxrssi == 1)
			FUNC4(ah, AR_PHY_RADAR_2,
			    AR_PHY_RADAR_2_ENMAXRSSI);
		else
			FUNC1(ah, AR_PHY_RADAR_2,
			    AR_PHY_RADAR_2_ENMAXRSSI);

		if (pe->pe_enrelpwr == 1)
			FUNC4(ah, AR_PHY_RADAR_2,
			    AR_PHY_RADAR_2_ENRELPWRCHK);
		else
			FUNC1(ah, AR_PHY_RADAR_2,
			    AR_PHY_RADAR_2_ENRELPWRCHK);

		if (pe->pe_relpwr != HAL_PHYERR_PARAM_NOVAL)
			FUNC3(ah, AR_PHY_RADAR_2,
			    AR_PHY_RADAR_2_RELPWR, pe->pe_relpwr);

		if (pe->pe_relstep != HAL_PHYERR_PARAM_NOVAL)
			FUNC3(ah, AR_PHY_RADAR_2,
			    AR_PHY_RADAR_2_RELSTEP, pe->pe_relstep);

		if (pe->pe_maxlen != HAL_PHYERR_PARAM_NOVAL)
			FUNC3(ah, AR_PHY_RADAR_2,
			    AR_PHY_RADAR_2_MAXLEN, pe->pe_maxlen);
	}

	FUNC5(ah, AR_PHY_RADAR_0, val);
}
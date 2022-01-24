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
typedef  scalar_t__ u_int16_t ;
struct an_req {int an_len; int /*<<< orphan*/  an_type; } ;
struct an_ltv_caps {int an_radiotype; scalar_t__ an_rx_diversity; scalar_t__ an_tx_diversity; int /*<<< orphan*/  an_bootblockrev; int /*<<< orphan*/  an_ifacerev; int /*<<< orphan*/  an_fwsubrev; int /*<<< orphan*/  an_fwrev; int /*<<< orphan*/  an_hwrev; int /*<<< orphan*/ * an_tx_powerlevels; int /*<<< orphan*/  an_rates; int /*<<< orphan*/  an_callid; int /*<<< orphan*/  an_regdomain; int /*<<< orphan*/  an_aironetaddr; int /*<<< orphan*/  an_oemaddr; int /*<<< orphan*/  an_prodvers; int /*<<< orphan*/  an_prodname; int /*<<< orphan*/  an_manufname; int /*<<< orphan*/  an_prodnum; int /*<<< orphan*/  an_oui; } ;
typedef  int /*<<< orphan*/  areq ;

/* Variables and functions */
 scalar_t__ AN_DIVERSITY_ANTENNA_1_AND_2 ; 
 scalar_t__ AN_DIVERSITY_ANTENNA_1_ONLY ; 
 scalar_t__ AN_DIVERSITY_ANTENNA_2_ONLY ; 
 scalar_t__ AN_DIVERSITY_FACTORY_DEFAULT ; 
 int AN_RADIOTYPE_80211_DS ; 
 int AN_RADIOTYPE_80211_FH ; 
 int AN_RADIOTYPE_LM2000_DS ; 
 int /*<<< orphan*/  AN_RID_CAPABILITIES ; 
 int ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (char const*,struct an_req*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void
FUNC7(const char *iface)
{
	struct an_ltv_caps	*caps;
	struct an_req		areq;
	u_int16_t		tmp;

	areq.an_len = sizeof(areq);
	areq.an_type = AN_RID_CAPABILITIES;

	FUNC0(iface, &areq);

	caps = (struct an_ltv_caps *)&areq;

	FUNC6("OUI:\t\t\t");
	FUNC1((char *)&caps->an_oui, 3);
	FUNC6("\nProduct number:\t\t");
	FUNC4(&caps->an_prodnum, 1);
	FUNC6("\nManufacturer name:\t");
	FUNC3((char *)&caps->an_manufname, 32);
	FUNC6("\nProduce name:\t\t");
	FUNC3((char *)&caps->an_prodname, 16);
	FUNC6("\nFirmware version:\t");
	FUNC3((char *)&caps->an_prodvers, 1);
	FUNC6("\nOEM MAC address:\t");
	FUNC1((char *)&caps->an_oemaddr, ETHER_ADDR_LEN);
	FUNC6("\nAironet MAC address:\t");
	FUNC1((char *)&caps->an_aironetaddr, ETHER_ADDR_LEN);
	FUNC6("\nRadio type:\t\t[ ");
	if (caps->an_radiotype & AN_RADIOTYPE_80211_FH)
		FUNC6("802.11 FH");
	else if (caps->an_radiotype & AN_RADIOTYPE_80211_DS)
		FUNC6("802.11 DS");
	else if (caps->an_radiotype & AN_RADIOTYPE_LM2000_DS)
		FUNC6("LM2000 DS");
	else
		FUNC6("unknown (%x)", caps->an_radiotype);
	FUNC6(" ]");
	FUNC6("\nRegulatory domain:\t");
	FUNC4(&caps->an_regdomain, 1);
	FUNC6("\nAssigned CallID:\t");
	FUNC1((char *)&caps->an_callid, 6);
	FUNC6("\nSupported speeds:\t");
	FUNC2(caps->an_rates, 8);
	FUNC6("\nRX Diversity:\t\t[ ");
	if (caps->an_rx_diversity == AN_DIVERSITY_FACTORY_DEFAULT)
		FUNC6("factory default");
	else if (caps->an_rx_diversity == AN_DIVERSITY_ANTENNA_1_ONLY)
		FUNC6("antenna 1 only");
	else if (caps->an_rx_diversity == AN_DIVERSITY_ANTENNA_2_ONLY)
		FUNC6("antenna 2 only");
	else if (caps->an_rx_diversity == AN_DIVERSITY_ANTENNA_1_AND_2)
		FUNC6("antenna 1 and 2");
	FUNC6(" ]");
	FUNC6("\nTX Diversity:\t\t[ ");
	if (caps->an_tx_diversity == AN_DIVERSITY_FACTORY_DEFAULT)
		FUNC6("factory default");
	else if (caps->an_tx_diversity == AN_DIVERSITY_ANTENNA_1_ONLY)
		FUNC6("antenna 1 only");
	else if (caps->an_tx_diversity == AN_DIVERSITY_ANTENNA_2_ONLY)
		FUNC6("antenna 2 only");
	else if (caps->an_tx_diversity == AN_DIVERSITY_ANTENNA_1_AND_2)
		FUNC6("antenna 1 and 2");
	FUNC6(" ]");
	FUNC6("\nSupported power levels:\t");
	FUNC4(caps->an_tx_powerlevels, 8);
	FUNC6("\nHardware revision:\t");
	tmp = FUNC5(caps->an_hwrev);
	FUNC1((char *)&tmp, 2);
	FUNC6("\nSoftware revision:\t");
	tmp = FUNC5(caps->an_fwrev);
	FUNC1((char *)&tmp, 2);
	FUNC6("\nSoftware subrevision:\t");
	tmp = FUNC5(caps->an_fwsubrev);
	FUNC1((char *)&tmp, 2);
	FUNC6("\nInterface revision:\t");
	tmp = FUNC5(caps->an_ifacerev);
	FUNC1((char *)&tmp, 2);
	FUNC6("\nBootblock revision:\t");
	tmp = FUNC5(caps->an_bootblockrev);
	FUNC1((char *)&tmp, 2);
	FUNC6("\n");
	return;
}
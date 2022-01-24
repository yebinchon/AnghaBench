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
struct an_req {int an_len; int /*<<< orphan*/  an_type; } ;
struct an_ltv_genconfig {int an_opmode; int an_rxmode; scalar_t__ an_devtype; scalar_t__ an_scanmode; int an_authtype; scalar_t__ an_psave_mode; int an_radiotype; int an_diversity; int an_home_product; int /*<<< orphan*/  an_arl_delay; int /*<<< orphan*/  an_arl_decay; int /*<<< orphan*/  an_arl_thresh; int /*<<< orphan*/  an_nodename; int /*<<< orphan*/  an_rss_thresh; int /*<<< orphan*/  an_tx_power; int /*<<< orphan*/  an_dtim_period; int /*<<< orphan*/  an_ds_channel; int /*<<< orphan*/  an_atim_duration; int /*<<< orphan*/  an_beacon_period; int /*<<< orphan*/  an_fast_listen_decay; int /*<<< orphan*/  an_listen_decay; int /*<<< orphan*/  an_fast_listen_interval; int /*<<< orphan*/  an_listen_interval; int /*<<< orphan*/  an_sleep_for_dtims; int /*<<< orphan*/  an_refresh_interval; int /*<<< orphan*/  an_max_beacon_lost_time; int /*<<< orphan*/  an_link_loss_delay; int /*<<< orphan*/  an_offline_scan_duration; int /*<<< orphan*/  an_offline_scan_interval; int /*<<< orphan*/  an_specified_ap_timeout; int /*<<< orphan*/  an_assoc_timeout; int /*<<< orphan*/  an_auth_timeout; int /*<<< orphan*/  an_ibss_join_net_timeout; int /*<<< orphan*/  an_beacon_listen_timeout; int /*<<< orphan*/  an_probe_response_timeout; int /*<<< orphan*/  an_probe_energy_timeout; int /*<<< orphan*/  an_probedelay; int /*<<< orphan*/  an_ordering; int /*<<< orphan*/  an_stationary; int /*<<< orphan*/  an_rx_msdu_lifetime; int /*<<< orphan*/  an_tx_msdu_lifetime; int /*<<< orphan*/  an_longretry_limit; int /*<<< orphan*/  an_shortretry_limit; int /*<<< orphan*/  an_rates; int /*<<< orphan*/  an_macaddr; int /*<<< orphan*/  an_rtsthresh; int /*<<< orphan*/  an_fragthresh; } ;
typedef  int /*<<< orphan*/  areq ;

/* Variables and functions */
 int AN_AUTHTYPE_ALLOW_UNENCRYPTED ; 
 int AN_AUTHTYPE_LEAP ; 
 int AN_AUTHTYPE_MASK ; 
 int AN_AUTHTYPE_NONE ; 
 int AN_AUTHTYPE_OPEN ; 
 int AN_AUTHTYPE_PRIVACY_IN_USE ; 
 int AN_AUTHTYPE_SHAREDKEY ; 
 scalar_t__ AN_DEVTYPE_PC4500 ; 
 scalar_t__ AN_DEVTYPE_PC4800 ; 
 unsigned char AN_DIVERSITY_ANTENNA_1_AND_2 ; 
 unsigned char AN_DIVERSITY_ANTENNA_1_ONLY ; 
 unsigned char AN_DIVERSITY_ANTENNA_2_ONLY ; 
 unsigned char AN_DIVERSITY_FACTORY_DEFAULT ; 
 int AN_HOME_NETWORK ; 
 int AN_OPMODE_AP ; 
 int AN_OPMODE_AP_REPEATER ; 
 int AN_OPMODE_IBSS_ADHOC ; 
 int AN_OPMODE_INFRASTRUCTURE_STATION ; 
 scalar_t__ AN_PSAVE_CAM ; 
 scalar_t__ AN_PSAVE_NONE ; 
 scalar_t__ AN_PSAVE_PSP ; 
 scalar_t__ AN_PSAVE_PSP_CAM ; 
 int AN_RADIOTYPE_80211_DS ; 
 int AN_RADIOTYPE_80211_FH ; 
 int AN_RADIOTYPE_LM2000_DS ; 
 int /*<<< orphan*/  AN_RID_ACTUALCFG ; 
 int AN_RXMODE_80211_MONITOR_ANYBSS ; 
 int AN_RXMODE_80211_MONITOR_CURBSS ; 
 int AN_RXMODE_ADDR ; 
 int AN_RXMODE_BC_ADDR ; 
 int AN_RXMODE_BC_MC_ADDR ; 
 int AN_RXMODE_LAN_MONITOR_CURBSS ; 
 scalar_t__ AN_SCANMODE_ACTIVE ; 
 scalar_t__ AN_SCANMODE_AIRONET_ACTIVE ; 
 scalar_t__ AN_SCANMODE_PASSIVE ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (char const*,struct an_req*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static void
FUNC8(const char *iface)
{
	struct an_ltv_genconfig	*cfg;
	struct an_req		areq;
	unsigned char		diversity;

	areq.an_len = sizeof(areq);
	areq.an_type = AN_RID_ACTUALCFG;

	FUNC0(iface, &areq);

	cfg = (struct an_ltv_genconfig *)&areq;

	FUNC7("Operating mode:\t\t\t\t[ ");
	if ((cfg->an_opmode & 0x7) == AN_OPMODE_IBSS_ADHOC)
		FUNC7("ad-hoc");
	if ((cfg->an_opmode & 0x7) == AN_OPMODE_INFRASTRUCTURE_STATION)
		FUNC7("infrastructure");
	if ((cfg->an_opmode & 0x7) == AN_OPMODE_AP)
		FUNC7("access point");
	if ((cfg->an_opmode & 0x7) == AN_OPMODE_AP_REPEATER)
		FUNC7("access point repeater");
	FUNC7(" ]");
	FUNC7("\nReceive mode:\t\t\t\t[ ");
	if ((cfg->an_rxmode & 0x7) == AN_RXMODE_BC_MC_ADDR)
		FUNC7("broadcast/multicast/unicast");
	if ((cfg->an_rxmode & 0x7) == AN_RXMODE_BC_ADDR)
		FUNC7("broadcast/unicast");
	if ((cfg->an_rxmode & 0x7) == AN_RXMODE_ADDR)
		FUNC7("unicast");
	if ((cfg->an_rxmode & 0x7) == AN_RXMODE_80211_MONITOR_CURBSS)
		FUNC7("802.11 monitor, current BSSID");
	if ((cfg->an_rxmode & 0x7) == AN_RXMODE_80211_MONITOR_ANYBSS)
		FUNC7("802.11 monitor, any BSSID");
	if ((cfg->an_rxmode & 0x7) == AN_RXMODE_LAN_MONITOR_CURBSS)
		FUNC7("LAN monitor, current BSSID");
	FUNC7(" ]");
	FUNC7("\nFragment threshold:\t\t\t");
	FUNC5(&cfg->an_fragthresh, 1);
	FUNC7("\nRTS threshold:\t\t\t\t");
	FUNC5(&cfg->an_rtsthresh, 1);
	FUNC7("\nMAC address:\t\t\t\t");
	FUNC2((char *)&cfg->an_macaddr, ETHER_ADDR_LEN);
	FUNC7("\nSupported rates:\t\t\t");
	FUNC3(cfg->an_rates, 8);
	FUNC7("\nShort retry limit:\t\t\t");
	FUNC5(&cfg->an_shortretry_limit, 1);
	FUNC7("\nLong retry limit:\t\t\t");
	FUNC5(&cfg->an_longretry_limit, 1);
	FUNC7("\nTX MSDU lifetime:\t\t\t");
	FUNC5(&cfg->an_tx_msdu_lifetime, 1);
	FUNC7("\nRX MSDU lifetime:\t\t\t");
	FUNC5(&cfg->an_rx_msdu_lifetime, 1);
	FUNC7("\nStationary:\t\t\t\t");
	FUNC1(cfg->an_stationary);
	FUNC7("\nOrdering:\t\t\t\t");
	FUNC1(cfg->an_ordering);
	FUNC7("\nDevice type:\t\t\t\t[ ");
	if (cfg->an_devtype == AN_DEVTYPE_PC4500)
		FUNC7("PC4500");
	else if (cfg->an_devtype == AN_DEVTYPE_PC4800)
		FUNC7("PC4800");
	else
		FUNC7("unknown (%x)", cfg->an_devtype);
	FUNC7(" ]");
	FUNC7("\nScanning mode:\t\t\t\t[ ");
	if (cfg->an_scanmode == AN_SCANMODE_ACTIVE)
		FUNC7("active");
	if (cfg->an_scanmode == AN_SCANMODE_PASSIVE)
		FUNC7("passive");
	if (cfg->an_scanmode == AN_SCANMODE_AIRONET_ACTIVE)
		FUNC7("Aironet active");
	FUNC7(" ]");
	FUNC7("\nProbe delay:\t\t\t\t");
	FUNC5(&cfg->an_probedelay, 1);
	FUNC7("\nProbe energy timeout:\t\t\t");
	FUNC5(&cfg->an_probe_energy_timeout, 1);
	FUNC7("\nProbe response timeout:\t\t\t");
	FUNC5(&cfg->an_probe_response_timeout, 1);
	FUNC7("\nBeacon listen timeout:\t\t\t");
	FUNC5(&cfg->an_beacon_listen_timeout, 1);
	FUNC7("\nIBSS join network timeout:\t\t");
	FUNC5(&cfg->an_ibss_join_net_timeout, 1);
	FUNC7("\nAuthentication timeout:\t\t\t");
	FUNC5(&cfg->an_auth_timeout, 1);
	FUNC7("\nWEP enabled:\t\t\t\t[ ");
	if (cfg->an_authtype & AN_AUTHTYPE_PRIVACY_IN_USE)
	{
		if (cfg->an_authtype & AN_AUTHTYPE_LEAP)
			 FUNC7("LEAP");
		else if (cfg->an_authtype & AN_AUTHTYPE_ALLOW_UNENCRYPTED)
			 FUNC7("mixed cell");
		else
			 FUNC7("full");
	}
	else
		FUNC7("no");
	FUNC7(" ]");
	FUNC7("\nAuthentication type:\t\t\t[ ");
	if ((cfg->an_authtype & AN_AUTHTYPE_MASK) == AN_AUTHTYPE_NONE)
		FUNC7("none");
	if ((cfg->an_authtype & AN_AUTHTYPE_MASK) == AN_AUTHTYPE_OPEN)
		FUNC7("open");
	if ((cfg->an_authtype & AN_AUTHTYPE_MASK) == AN_AUTHTYPE_SHAREDKEY)
		FUNC7("shared key");
	FUNC7(" ]");
	FUNC7("\nAssociation timeout:\t\t\t");
	FUNC5(&cfg->an_assoc_timeout, 1);
	FUNC7("\nSpecified AP association timeout:\t");
	FUNC5(&cfg->an_specified_ap_timeout, 1);
	FUNC7("\nOffline scan interval:\t\t\t");
	FUNC5(&cfg->an_offline_scan_interval, 1);
	FUNC7("\nOffline scan duration:\t\t\t");
	FUNC5(&cfg->an_offline_scan_duration, 1);
	FUNC7("\nLink loss delay:\t\t\t");
	FUNC5(&cfg->an_link_loss_delay, 1);
	FUNC7("\nMax beacon loss time:\t\t\t");
	FUNC5(&cfg->an_max_beacon_lost_time, 1);
	FUNC7("\nRefresh interval:\t\t\t");
	FUNC5(&cfg->an_refresh_interval, 1);
	FUNC7("\nPower save mode:\t\t\t[ ");
	if (cfg->an_psave_mode == AN_PSAVE_NONE)
		FUNC7("none");
	if (cfg->an_psave_mode == AN_PSAVE_CAM)
		FUNC7("constantly awake mode");
	if (cfg->an_psave_mode == AN_PSAVE_PSP)
		FUNC7("PSP");
	if (cfg->an_psave_mode == AN_PSAVE_PSP_CAM)
		FUNC7("PSP-CAM (fast PSP)");
	FUNC7(" ]");
	FUNC7("\nSleep through DTIMs:\t\t\t");
	FUNC1(cfg->an_sleep_for_dtims);
	FUNC7("\nPower save listen interval:\t\t");
	FUNC5(&cfg->an_listen_interval, 1);
	FUNC7("\nPower save fast listen interval:\t");
	FUNC5(&cfg->an_fast_listen_interval, 1);
	FUNC7("\nPower save listen decay:\t\t");
	FUNC5(&cfg->an_listen_decay, 1);
	FUNC7("\nPower save fast listen decay:\t\t");
	FUNC5(&cfg->an_fast_listen_decay, 1);
	FUNC7("\nAP/ad-hoc Beacon period:\t\t");
	FUNC5(&cfg->an_beacon_period, 1);
	FUNC7("\nAP/ad-hoc ATIM duration:\t\t");
	FUNC5(&cfg->an_atim_duration, 1);
	FUNC7("\nAP/ad-hoc current channel:\t\t");
	FUNC5(&cfg->an_ds_channel, 1);
	FUNC7("\nAP/ad-hoc DTIM period:\t\t\t");
	FUNC5(&cfg->an_dtim_period, 1);
	FUNC7("\nRadio type:\t\t\t\t[ ");
	if (cfg->an_radiotype & AN_RADIOTYPE_80211_FH)
		FUNC7("802.11 FH");
	else if (cfg->an_radiotype & AN_RADIOTYPE_80211_DS)
		FUNC7("802.11 DS");
	else if (cfg->an_radiotype & AN_RADIOTYPE_LM2000_DS)
		FUNC7("LM2000 DS");
	else
		FUNC7("unknown (%x)", cfg->an_radiotype);
	FUNC7(" ]");
	FUNC7("\nRX Diversity:\t\t\t\t[ ");
	diversity = cfg->an_diversity & 0xFF;
	if (diversity == AN_DIVERSITY_FACTORY_DEFAULT)
		FUNC7("factory default");
	else if (diversity == AN_DIVERSITY_ANTENNA_1_ONLY)
		FUNC7("antenna 1 only");
	else if (diversity == AN_DIVERSITY_ANTENNA_2_ONLY)
		FUNC7("antenna 2 only");
	else if (diversity == AN_DIVERSITY_ANTENNA_1_AND_2)
		FUNC7("antenna 1 and 2");
	FUNC7(" ]");
	FUNC7("\nTX Diversity:\t\t\t\t[ ");
	diversity = (cfg->an_diversity >> 8) & 0xFF;
	if (diversity == AN_DIVERSITY_FACTORY_DEFAULT)
		FUNC7("factory default");
	else if (diversity == AN_DIVERSITY_ANTENNA_1_ONLY)
		FUNC7("antenna 1 only");
	else if (diversity == AN_DIVERSITY_ANTENNA_2_ONLY)
		FUNC7("antenna 2 only");
	else if (diversity == AN_DIVERSITY_ANTENNA_1_AND_2)
		FUNC7("antenna 1 and 2");
	FUNC7(" ]");
	FUNC7("\nTransmit power level:\t\t\t");
	FUNC5(&cfg->an_tx_power, 1);
	FUNC7("\nRSS threshold:\t\t\t\t");
	FUNC5(&cfg->an_rss_thresh, 1);
	FUNC7("\nNode name:\t\t\t\t");
	FUNC4((char *)&cfg->an_nodename, 16);
	FUNC7("\nARL threshold:\t\t\t\t");
	FUNC5(&cfg->an_arl_thresh, 1);
	FUNC7("\nARL decay:\t\t\t\t");
	FUNC5(&cfg->an_arl_decay, 1);
	FUNC7("\nARL delay:\t\t\t\t");
	FUNC5(&cfg->an_arl_delay, 1);
	FUNC7("\nConfiguration:\t\t\t\t[ ");
	if (cfg->an_home_product & AN_HOME_NETWORK)
		FUNC7("Home Configuration");
	else
		FUNC7("Enterprise Configuration");
	FUNC7(" ]");

	FUNC7("\n");
	FUNC7("\n");
	FUNC6(iface);
}
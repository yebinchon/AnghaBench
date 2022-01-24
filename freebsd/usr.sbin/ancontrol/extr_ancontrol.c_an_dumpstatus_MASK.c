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
struct an_req {int an_len; int /*<<< orphan*/  an_type; } ;
struct an_ltv_status {int an_opmode; size_t an_normalized_strength; int an_avg_noise_prev_min_pc; size_t an_cur_signal_quality; int an_max_noise_prev_min_pc; int an_current_tx_rate; int an_ssidlen; int /*<<< orphan*/  an_accumulated_arl; int /*<<< orphan*/  an_our_generated_load; int /*<<< orphan*/  an_ap_total_load; int /*<<< orphan*/  an_hops_to_backbone; int /*<<< orphan*/  an_cur_channel; int /*<<< orphan*/  an_channel_set; int /*<<< orphan*/  an_hop_period; int /*<<< orphan*/  an_atim_duration; int /*<<< orphan*/  an_dtim_period; int /*<<< orphan*/  an_beacon_period; int /*<<< orphan*/  an_cur_bssid; int /*<<< orphan*/  an_ap_name; int /*<<< orphan*/  an_ssid; int /*<<< orphan*/  an_errcode; int /*<<< orphan*/  an_macaddr; } ;
struct an_ltv_rssi_map {int an_len; TYPE_1__* an_entries; int /*<<< orphan*/  an_type; } ;
typedef  int /*<<< orphan*/  areq ;
typedef  int /*<<< orphan*/  an_rssimap ;
struct TYPE_2__ {int an_rss_pct; } ;

/* Variables and functions */
 int /*<<< orphan*/  AN_RID_RSSI_MAP ; 
 int /*<<< orphan*/  AN_RID_STATUS ; 
 int AN_STATUS_OPMODE_ASSOCIATED ; 
 int AN_STATUS_OPMODE_CONFIGURED ; 
 int AN_STATUS_OPMODE_ERROR ; 
 int AN_STATUS_OPMODE_IN_SYNC ; 
 int AN_STATUS_OPMODE_LEAP ; 
 int AN_STATUS_OPMODE_MAC_ENABLED ; 
 int AN_STATUS_OPMODE_RX_ENABLED ; 
 int ETHER_ADDR_LEN ; 
 int FUNC0 (char const*,struct an_req*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void
FUNC5(const char *iface)
{
	struct an_ltv_status	*sts;
	struct an_req		areq;
	struct an_ltv_rssi_map	an_rssimap;
	int rssimap_valid = 0;

	/*
	 * Try to get RSSI to percent and dBM table
	 */

	an_rssimap.an_len = sizeof(an_rssimap);
	an_rssimap.an_type = AN_RID_RSSI_MAP;
	rssimap_valid = FUNC0(iface, (struct an_req*)&an_rssimap);	

	if (rssimap_valid)
		FUNC4("RSSI table:\t\t[ present ]\n");
	else
		FUNC4("RSSI table:\t\t[ not available ]\n");

	areq.an_len = sizeof(areq);
	areq.an_type = AN_RID_STATUS;

	FUNC0(iface, &areq);

	sts = (struct an_ltv_status *)&areq;

	FUNC4("MAC address:\t\t");
	FUNC1((char *)&sts->an_macaddr, ETHER_ADDR_LEN);
	FUNC4("\nOperating mode:\t\t[ ");
	if (sts->an_opmode & AN_STATUS_OPMODE_CONFIGURED)
		FUNC4("configured ");
	if (sts->an_opmode & AN_STATUS_OPMODE_MAC_ENABLED)
		FUNC4("MAC ON ");
	if (sts->an_opmode & AN_STATUS_OPMODE_RX_ENABLED)
		FUNC4("RX ON ");
	if (sts->an_opmode & AN_STATUS_OPMODE_IN_SYNC)
		FUNC4("synced ");
	if (sts->an_opmode & AN_STATUS_OPMODE_ASSOCIATED)
		FUNC4("associated ");
	if (sts->an_opmode & AN_STATUS_OPMODE_LEAP)
		FUNC4("LEAP ");
	if (sts->an_opmode & AN_STATUS_OPMODE_ERROR)
		FUNC4("error ");
	FUNC4("]\n");
	FUNC4("Error code:\t\t");
	FUNC1((char *)&sts->an_errcode, 1);
	if (rssimap_valid)
		FUNC4("\nSignal strength:\t[ %u%% ]",
		    an_rssimap.an_entries[
			sts->an_normalized_strength].an_rss_pct);
	else 
		FUNC4("\nSignal strength:\t[ %u%% ]",
		    sts->an_normalized_strength);
	FUNC4("\nAverage Noise:\t\t[ %u%% ]", sts->an_avg_noise_prev_min_pc);
	if (rssimap_valid)
		FUNC4("\nSignal quality:\t\t[ %u%% ]", 
		    an_rssimap.an_entries[
			sts->an_cur_signal_quality].an_rss_pct);
	else 
		FUNC4("\nSignal quality:\t\t[ %u ]", 
		    sts->an_cur_signal_quality);
	FUNC4("\nMax Noise:\t\t[ %u%% ]", sts->an_max_noise_prev_min_pc);
	/*
	 * XXX: This uses the old definition of the rate field (units of
	 * 500kbps).  Technically the new definition is that this field
	 * contains arbitrary values, but no devices which need this
	 * support exist and the IEEE seems to intend to use the old
	 * definition until they get something big so we'll keep using
	 * it as well because this will work with new cards with
	 * rate <= 63.5Mbps.
	 */
	FUNC4("\nCurrent TX rate:\t[ %u%s ]", sts->an_current_tx_rate / 2,
	    (sts->an_current_tx_rate % 2) ? ".5" : "");
	FUNC4("\nCurrent SSID:\t\t");
	FUNC2((char *)&sts->an_ssid, sts->an_ssidlen);
	FUNC4("\nCurrent AP name:\t");
	FUNC2((char *)&sts->an_ap_name, 16);
	FUNC4("\nCurrent BSSID:\t\t");
	FUNC1((char *)&sts->an_cur_bssid, ETHER_ADDR_LEN);
	FUNC4("\nBeacon period:\t\t");
	FUNC3(&sts->an_beacon_period, 1);
	FUNC4("\nDTIM period:\t\t");
	FUNC3(&sts->an_dtim_period, 1);
	FUNC4("\nATIM duration:\t\t");
	FUNC3(&sts->an_atim_duration, 1);
	FUNC4("\nHOP period:\t\t");
	FUNC3(&sts->an_hop_period, 1);
	FUNC4("\nChannel set:\t\t");
	FUNC3(&sts->an_channel_set, 1);
	FUNC4("\nCurrent channel:\t");
	FUNC3(&sts->an_cur_channel, 1);
	FUNC4("\nHops to backbone:\t");
	FUNC3(&sts->an_hops_to_backbone, 1);
	FUNC4("\nTotal AP load:\t\t");
	FUNC3(&sts->an_ap_total_load, 1);
	FUNC4("\nOur generated load:\t");
	FUNC3(&sts->an_our_generated_load, 1);
	FUNC4("\nAccumulated ARL:\t");
	FUNC3(&sts->an_accumulated_arl, 1);
	FUNC4("\n");
	return;
}
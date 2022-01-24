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
typedef  int /*<<< orphan*/  uint16_t ;
struct an_req {int an_len; int /*<<< orphan*/  an_type; } ;
struct an_ltv_stats {int an_rx_overruns; int an_rx_plcp_csum_errs; int an_rx_plcp_format_errs; int an_rx_plcp_len_errs; int an_rx_mac_crc_errs; int an_rx_mac_crc_ok; int an_rx_wep_errs; int an_rx_wep_ok; int an_retry_long; int an_retry_short; int an_retry_max; int an_no_ack; int an_no_cts; int an_rx_ack_ok; int an_rx_cts_ok; int an_tx_ack_ok; int an_tx_rts_ok; int an_tx_cts_ok; int an_tx_lmac_mcasts; int an_tx_lmac_bcasts; int an_tx_lmac_ucast_frags; int an_tx_lmac_ucasts; int an_tx_beacons; int an_rx_beacons; int an_tx_single_cols; int an_tx_multi_cols; int an_tx_defers_no; int an_tx_defers_prot; int an_tx_defers_energy; int an_rx_dups; int an_rx_partial; int an_tx_too_old; int an_lostsync_missed_beacons; int an_lostsync_arl_exceeded; int an_lostsync_deauthed; int an_lostsync_disassociated; int an_lostsync_tsf_timing; int an_tx_host_mcasts; int an_tx_host_bcasts; int an_tx_host_ucasts; int an_tx_host_failed; int an_rx_host_mcasts; int an_rx_host_bcasts; int an_rx_host_ucasts; int an_rx_host_discarded; int an_tx_hmac_mcasts; int an_tx_hmac_bcasts; int an_tx_hmac_ucasts; int an_tx_hmac_failed; int an_rx_hmac_mcasts; int an_rx_hmac_bcasts; int an_rx_hmac_ucasts; int an_rx_hmac_discarded; int an_tx_hmac_accepted; int an_ssid_mismatches; int an_ap_mismatches; int an_rates_mismatches; int an_auth_rejects; int an_auth_timeouts; int an_assoc_rejects; int an_assoc_timeouts; int an_rx_mgmt_pkts; int an_tx_mgmt_pkts; int an_rx_refresh_pkts; int an_tx_refresh_pkts; int an_rx_poll_pkts; int an_tx_poll_pkts; int an_lostsync_hostreq; int an_host_tx_bytes; int an_host_rx_bytes; int an_uptime_usecs; int an_uptime_secs; int an_lostsync_better_ap; } ;
typedef  int /*<<< orphan*/  areq ;

/* Variables and functions */
 int /*<<< orphan*/  AN_RID_32BITS_CUM ; 
 int /*<<< orphan*/  FUNC0 (char const*,struct an_req*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void
FUNC2(const char *iface)
{
	struct an_ltv_stats	*stats;
	struct an_req		areq;

	areq.an_len = sizeof(areq);
	areq.an_type = AN_RID_32BITS_CUM;

	FUNC0(iface, &areq);

	stats = (struct an_ltv_stats *)((uint16_t *)&areq - 1);

	FUNC1("RX overruns:\t\t\t\t\t[ %u ]\n", stats->an_rx_overruns);
	FUNC1("RX PLCP CSUM errors:\t\t\t\t[ %u ]\n",
	    stats->an_rx_plcp_csum_errs);
	FUNC1("RX PLCP format errors:\t\t\t\t[ %u ]\n",
	    stats->an_rx_plcp_format_errs);
	FUNC1("RX PLCP length errors:\t\t\t\t[ %u ]\n",
	    stats->an_rx_plcp_len_errs);
	FUNC1("RX MAC CRC errors:\t\t\t\t[ %u ]\n",
	    stats->an_rx_mac_crc_errs);
	FUNC1("RX MAC CRC OK:\t\t\t\t\t[ %u ]\n",
	    stats->an_rx_mac_crc_ok);
	FUNC1("RX WEP errors:\t\t\t\t\t[ %u ]\n",
	    stats->an_rx_wep_errs);
	FUNC1("RX WEP OK:\t\t\t\t\t[ %u ]\n",
	    stats->an_rx_wep_ok);
	FUNC1("Long retries:\t\t\t\t\t[ %u ]\n",
	    stats->an_retry_long);
	FUNC1("Short retries:\t\t\t\t\t[ %u ]\n",
	    stats->an_retry_short);
	FUNC1("Retries exhausted:\t\t\t\t[ %u ]\n",
	    stats->an_retry_max);
	FUNC1("Bad ACK:\t\t\t\t\t[ %u ]\n",
	    stats->an_no_ack);
	FUNC1("Bad CTS:\t\t\t\t\t[ %u ]\n",
	    stats->an_no_cts);
	FUNC1("RX good ACKs:\t\t\t\t\t[ %u ]\n",
	    stats->an_rx_ack_ok);
	FUNC1("RX good CTSs:\t\t\t\t\t[ %u ]\n",
	    stats->an_rx_cts_ok);
	FUNC1("TX good ACKs:\t\t\t\t\t[ %u ]\n",
	    stats->an_tx_ack_ok);
	FUNC1("TX good RTSs:\t\t\t\t\t[ %u ]\n",
	    stats->an_tx_rts_ok);
	FUNC1("TX good CTSs:\t\t\t\t\t[ %u ]\n",
	    stats->an_tx_cts_ok);
	FUNC1("LMAC multicasts transmitted:\t\t\t[ %u ]\n",
	    stats->an_tx_lmac_mcasts);
	FUNC1("LMAC broadcasts transmitted:\t\t\t[ %u ]\n",
	    stats->an_tx_lmac_bcasts);
	FUNC1("LMAC unicast frags transmitted:\t\t\t[ %u ]\n",
	    stats->an_tx_lmac_ucast_frags);
	FUNC1("LMAC unicasts transmitted:\t\t\t[ %u ]\n",
	    stats->an_tx_lmac_ucasts);
	FUNC1("Beacons transmitted:\t\t\t\t[ %u ]\n",
	    stats->an_tx_beacons);
	FUNC1("Beacons received:\t\t\t\t[ %u ]\n",
	    stats->an_rx_beacons);
	FUNC1("Single transmit collisions:\t\t\t[ %u ]\n",
	    stats->an_tx_single_cols);
	FUNC1("Multiple transmit collisions:\t\t\t[ %u ]\n",
	    stats->an_tx_multi_cols);
	FUNC1("Transmits without deferrals:\t\t\t[ %u ]\n",
	    stats->an_tx_defers_no);
	FUNC1("Transmits deferred due to protocol:\t\t[ %u ]\n",
	    stats->an_tx_defers_prot);
	FUNC1("Transmits deferred due to energy detect:\t\t[ %u ]\n",
	    stats->an_tx_defers_energy);
	FUNC1("RX duplicate frames/frags:\t\t\t[ %u ]\n",
	    stats->an_rx_dups);
	FUNC1("RX partial frames:\t\t\t\t[ %u ]\n",
	    stats->an_rx_partial);
	FUNC1("TX max lifetime exceeded:\t\t\t[ %u ]\n",
	    stats->an_tx_too_old);
	FUNC1("RX max lifetime exceeded:\t\t\t[ %u ]\n",
	    stats->an_tx_too_old);
	FUNC1("Sync lost due to too many missed beacons:\t[ %u ]\n",
	    stats->an_lostsync_missed_beacons);
	FUNC1("Sync lost due to ARL exceeded:\t\t\t[ %u ]\n",
	    stats->an_lostsync_arl_exceeded);
	FUNC1("Sync lost due to deauthentication:\t\t[ %u ]\n",
	    stats->an_lostsync_deauthed);
	FUNC1("Sync lost due to disassociation:\t\t[ %u ]\n",
	    stats->an_lostsync_disassociated);
	FUNC1("Sync lost due to excess change in TSF timing:\t[ %u ]\n",
	    stats->an_lostsync_tsf_timing);
	FUNC1("Host transmitted multicasts:\t\t\t[ %u ]\n",
	    stats->an_tx_host_mcasts);
	FUNC1("Host transmitted broadcasts:\t\t\t[ %u ]\n",
	    stats->an_tx_host_bcasts);
	FUNC1("Host transmitted unicasts:\t\t\t[ %u ]\n",
	    stats->an_tx_host_ucasts);
	FUNC1("Host transmission failures:\t\t\t[ %u ]\n",
	    stats->an_tx_host_failed);
	FUNC1("Host received multicasts:\t\t\t[ %u ]\n",
	    stats->an_rx_host_mcasts);
	FUNC1("Host received broadcasts:\t\t\t[ %u ]\n",
	    stats->an_rx_host_bcasts);
	FUNC1("Host received unicasts:\t\t\t\t[ %u ]\n",
	    stats->an_rx_host_ucasts);
	FUNC1("Host receive discards:\t\t\t\t[ %u ]\n",
	    stats->an_rx_host_discarded);
	FUNC1("HMAC transmitted multicasts:\t\t\t[ %u ]\n",
	    stats->an_tx_hmac_mcasts);
	FUNC1("HMAC transmitted broadcasts:\t\t\t[ %u ]\n",
	    stats->an_tx_hmac_bcasts);
	FUNC1("HMAC transmitted unicasts:\t\t\t[ %u ]\n",
	    stats->an_tx_hmac_ucasts);
	FUNC1("HMAC transmissions failed:\t\t\t[ %u ]\n",
	    stats->an_tx_hmac_failed);
	FUNC1("HMAC received multicasts:\t\t\t[ %u ]\n",
	    stats->an_rx_hmac_mcasts);
	FUNC1("HMAC received broadcasts:\t\t\t[ %u ]\n",
	    stats->an_rx_hmac_bcasts);
	FUNC1("HMAC received unicasts:\t\t\t\t[ %u ]\n",
	    stats->an_rx_hmac_ucasts);
	FUNC1("HMAC receive discards:\t\t\t\t[ %u ]\n",
	    stats->an_rx_hmac_discarded);
	FUNC1("HMAC transmits accepted:\t\t\t[ %u ]\n",
	    stats->an_tx_hmac_accepted);
	FUNC1("SSID mismatches:\t\t\t\t[ %u ]\n",
	    stats->an_ssid_mismatches);
	FUNC1("Access point mismatches:\t\t\t[ %u ]\n",
	    stats->an_ap_mismatches);
	FUNC1("Speed mismatches:\t\t\t\t[ %u ]\n",
	    stats->an_rates_mismatches);
	FUNC1("Authentication rejects:\t\t\t\t[ %u ]\n",
	    stats->an_auth_rejects);
	FUNC1("Authentication timeouts:\t\t\t[ %u ]\n",
	    stats->an_auth_timeouts);
	FUNC1("Association rejects:\t\t\t\t[ %u ]\n",
	    stats->an_assoc_rejects);
	FUNC1("Association timeouts:\t\t\t\t[ %u ]\n",
	    stats->an_assoc_timeouts);
	FUNC1("Management frames received:\t\t\t[ %u ]\n",
	    stats->an_rx_mgmt_pkts);
	FUNC1("Management frames transmitted:\t\t\t[ %u ]\n",
	    stats->an_tx_mgmt_pkts);
	FUNC1("Refresh frames received:\t\t\t[ %u ]\n",
	    stats->an_rx_refresh_pkts);
	FUNC1("Refresh frames transmitted:\t\t\t[ %u ]\n",
	    stats->an_tx_refresh_pkts);
	FUNC1("Poll frames received:\t\t\t\t[ %u ]\n",
	    stats->an_rx_poll_pkts);
	FUNC1("Poll frames transmitted:\t\t\t[ %u ]\n",
	    stats->an_tx_poll_pkts);
	FUNC1("Host requested sync losses:\t\t\t[ %u ]\n",
	    stats->an_lostsync_hostreq);
	FUNC1("Host transmitted bytes:\t\t\t\t[ %u ]\n",
	    stats->an_host_tx_bytes);
	FUNC1("Host received bytes:\t\t\t\t[ %u ]\n",
	    stats->an_host_rx_bytes);
	FUNC1("Uptime in microseconds:\t\t\t\t[ %u ]\n",
	    stats->an_uptime_usecs);
	FUNC1("Uptime in seconds:\t\t\t\t[ %u ]\n",
	    stats->an_uptime_secs);
	FUNC1("Sync lost due to better AP:\t\t\t[ %u ]\n",
	    stats->an_lostsync_better_ap);
}
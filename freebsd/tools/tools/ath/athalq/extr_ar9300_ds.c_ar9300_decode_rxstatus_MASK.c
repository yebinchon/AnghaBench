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
struct TYPE_2__ {int /*<<< orphan*/  tstamp_usec; int /*<<< orphan*/  tstamp_sec; int /*<<< orphan*/  threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int /*<<< orphan*/  payload; } ;
struct ar9300_rxs {int status3; int status6; int status7; int status8; int status9; int /*<<< orphan*/  status11; int /*<<< orphan*/  status4; int /*<<< orphan*/  status2; int /*<<< orphan*/  status1; int /*<<< orphan*/  status5; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_2040 ; 
 int /*<<< orphan*/  AR_apsd_trig ; 
 int /*<<< orphan*/  AR_crc_err ; 
 int /*<<< orphan*/  AR_data_len ; 
 int /*<<< orphan*/  AR_decrypt_busy_err ; 
 int /*<<< orphan*/  AR_decrypt_crc_err ; 
 int /*<<< orphan*/  AR_gi ; 
 int /*<<< orphan*/  AR_hi_rx_chain ; 
 int /*<<< orphan*/  AR_hw_upload_data ; 
 int /*<<< orphan*/  AR_hw_upload_data_type ; 
 int /*<<< orphan*/  AR_hw_upload_data_valid ; 
 int /*<<< orphan*/  AR_key_idx ; 
 int /*<<< orphan*/  AR_key_miss ; 
 int /*<<< orphan*/  AR_michael_err ; 
 int /*<<< orphan*/  AR_num_delim ; 
 int /*<<< orphan*/  AR_parallel40 ; 
 int /*<<< orphan*/  AR_phy_err_code ; 
 int /*<<< orphan*/  AR_phyerr ; 
 int /*<<< orphan*/  AR_position_bit ; 
 int /*<<< orphan*/  AR_post_delim_crc_err ; 
 int /*<<< orphan*/  AR_pre_delim_crc_err ; 
 int /*<<< orphan*/  AR_rx_aggr ; 
 int /*<<< orphan*/  AR_rx_antenna ; 
 int /*<<< orphan*/  AR_rx_done ; 
 int /*<<< orphan*/  AR_rx_first_aggr ; 
 int /*<<< orphan*/  AR_rx_frame_ok ; 
 int /*<<< orphan*/  AR_rx_key_idx_valid ; 
 int /*<<< orphan*/  AR_rx_more ; 
 int /*<<< orphan*/  AR_rx_more_aggr ; 
 int /*<<< orphan*/  AR_rx_ness ; 
 int /*<<< orphan*/  AR_rx_not_sounding ; 
 int /*<<< orphan*/  AR_rx_rate ; 
 int /*<<< orphan*/  AR_rx_rssi_ant00 ; 
 int /*<<< orphan*/  AR_rx_rssi_ant01 ; 
 int /*<<< orphan*/  AR_rx_rssi_ant02 ; 
 int /*<<< orphan*/  AR_rx_rssi_ant10 ; 
 int /*<<< orphan*/  AR_rx_rssi_ant11 ; 
 int /*<<< orphan*/  AR_rx_rssi_ant12 ; 
 int /*<<< orphan*/  AR_rx_rssi_combined ; 
 int /*<<< orphan*/  AR_rx_stbc ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int last_ts ; 
 int /*<<< orphan*/  FUNC4 (struct ar9300_rxs*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 

__attribute__((used)) static void
FUNC6(struct if_ath_alq_payload *a)
{
	struct ar9300_rxs rxs;

	/* XXX assumes rxs is smaller than PAYLOAD_LEN! */
	FUNC4(&rxs, &a->payload, sizeof(struct ar9300_rxs));

	FUNC5("[%u.%06u] [%llu] RXSTATUS RxTimestamp: %u (%d)\n",
	    (unsigned int) FUNC2(a->hdr.tstamp_sec),
	    (unsigned int) FUNC2(a->hdr.tstamp_usec),
	    (unsigned long long) FUNC3(a->hdr.threadid),
	    rxs.status3,
	    rxs.status3 - last_ts);

	/* status1 */
	/* .. and status5 */
	FUNC5("    RSSI %d/%d/%d / %d/%d/%d; combined: %d; rate=0x%02x\n",
	    FUNC1(rxs.status1, AR_rx_rssi_ant00),
	    FUNC1(rxs.status1, AR_rx_rssi_ant01),
	    FUNC1(rxs.status1, AR_rx_rssi_ant02),
	    FUNC1(rxs.status5, AR_rx_rssi_ant10),
	    FUNC1(rxs.status5, AR_rx_rssi_ant11),
	    FUNC1(rxs.status5, AR_rx_rssi_ant12),
	    FUNC1(rxs.status5, AR_rx_rssi_combined),
	    FUNC1(rxs.status1, AR_rx_rate));

	/* status2 */
	FUNC5("    Len: %d; more=%d, delim=%d, upload=%d\n",
	    FUNC1(rxs.status2, AR_data_len),
	    FUNC0(rxs.status2, AR_rx_more),
	    FUNC1(rxs.status2, AR_num_delim),
	    FUNC1(rxs.status2, AR_hw_upload_data));

	/* status3 */
	FUNC5("    RX timestamp: %u\n", rxs.status3);
	last_ts = rxs.status3;

	/* status4 */
	FUNC5("    GI: %d, 2040: %d, parallel40: %d, stbc=%d\n",
	    FUNC0(rxs.status4, AR_gi),
	    FUNC0(rxs.status4, AR_2040),
	    FUNC0(rxs.status4, AR_parallel40),
	    FUNC0(rxs.status4, AR_rx_stbc));
	FUNC5("    Not sounding: %d, ness: %d, upload_valid: %d\n",
	    FUNC0(rxs.status4, AR_rx_not_sounding),
	    FUNC1(rxs.status4, AR_rx_ness),
	    FUNC1(rxs.status4, AR_hw_upload_data_valid));
	FUNC5("    RX antenna: 0x%08x\n",
	    FUNC1(rxs.status4, AR_rx_antenna));

	/* EVM */
	/* status6 - 9 */
	FUNC5("    EVM: 0x%08x; 0x%08x; 0x%08x; 0x%08x\n",
	    rxs.status6,
	    rxs.status7,
	    rxs.status8,
	    rxs.status9);

	/* status10 - ? */

	/* status11 */
	FUNC5("    RX done: %d, RX frame ok: %d, CRC error: %d\n",
	    FUNC0(rxs.status11, AR_rx_done),
	    FUNC0(rxs.status11, AR_rx_frame_ok),
	    FUNC0(rxs.status11, AR_crc_err));
	FUNC5("    Decrypt CRC err: %d, PHY err: %d, MIC err: %d\n",
	    FUNC0(rxs.status11, AR_decrypt_crc_err),
	    FUNC0(rxs.status11, AR_phyerr),
	    FUNC0(rxs.status11, AR_michael_err));
	FUNC5("    Pre delim CRC err: %d, uAPSD Trig: %d\n",
	    FUNC0(rxs.status11, AR_pre_delim_crc_err),
	    FUNC0(rxs.status11, AR_apsd_trig));
	FUNC5("    RXKeyIdxValid: %d, KeyIdx: %d, PHY error: %d\n",
	    FUNC0(rxs.status11, AR_rx_key_idx_valid),
	    FUNC1(rxs.status11, AR_key_idx),
	    FUNC1(rxs.status11, AR_phy_err_code));
	FUNC5("    RX more Aggr: %d, RX aggr %d, post delim CRC err: %d\n",
	    FUNC0(rxs.status11, AR_rx_more_aggr),
	    FUNC0(rxs.status11, AR_rx_aggr),
	    FUNC0(rxs.status11, AR_post_delim_crc_err));
	FUNC5("    hw upload data type: %d; position bit: %d\n",
	    FUNC1(rxs.status11, AR_hw_upload_data_type),
	    FUNC0(rxs.status11, AR_position_bit));
	FUNC5("    Hi RX chain: %d, RxFirstAggr: %d, DecryptBusy: %d, KeyMiss: %d\n",
	    FUNC0(rxs.status11, AR_hi_rx_chain),
	    FUNC0(rxs.status11, AR_rx_first_aggr),
	    FUNC0(rxs.status11, AR_decrypt_busy_err),
	    FUNC0(rxs.status11, AR_key_miss));
}
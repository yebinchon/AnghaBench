
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tstamp_usec; int tstamp_sec; int threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int payload; } ;
struct ar9300_rxs {int status3; int status6; int status7; int status8; int status9; int status11; int status4; int status2; int status1; int status5; } ;


 int AR_2040 ;
 int AR_apsd_trig ;
 int AR_crc_err ;
 int AR_data_len ;
 int AR_decrypt_busy_err ;
 int AR_decrypt_crc_err ;
 int AR_gi ;
 int AR_hi_rx_chain ;
 int AR_hw_upload_data ;
 int AR_hw_upload_data_type ;
 int AR_hw_upload_data_valid ;
 int AR_key_idx ;
 int AR_key_miss ;
 int AR_michael_err ;
 int AR_num_delim ;
 int AR_parallel40 ;
 int AR_phy_err_code ;
 int AR_phyerr ;
 int AR_position_bit ;
 int AR_post_delim_crc_err ;
 int AR_pre_delim_crc_err ;
 int AR_rx_aggr ;
 int AR_rx_antenna ;
 int AR_rx_done ;
 int AR_rx_first_aggr ;
 int AR_rx_frame_ok ;
 int AR_rx_key_idx_valid ;
 int AR_rx_more ;
 int AR_rx_more_aggr ;
 int AR_rx_ness ;
 int AR_rx_not_sounding ;
 int AR_rx_rate ;
 int AR_rx_rssi_ant00 ;
 int AR_rx_rssi_ant01 ;
 int AR_rx_rssi_ant02 ;
 int AR_rx_rssi_ant10 ;
 int AR_rx_rssi_ant11 ;
 int AR_rx_rssi_ant12 ;
 int AR_rx_rssi_combined ;
 int AR_rx_stbc ;
 int MF (int ,int ) ;
 int MS (int ,int ) ;
 scalar_t__ be32toh (int ) ;
 scalar_t__ be64toh (int ) ;
 int last_ts ;
 int memcpy (struct ar9300_rxs*,int *,int) ;
 int printf (char*,int,...) ;

__attribute__((used)) static void
ar9300_decode_rxstatus(struct if_ath_alq_payload *a)
{
 struct ar9300_rxs rxs;


 memcpy(&rxs, &a->payload, sizeof(struct ar9300_rxs));

 printf("[%u.%06u] [%llu] RXSTATUS RxTimestamp: %u (%d)\n",
     (unsigned int) be32toh(a->hdr.tstamp_sec),
     (unsigned int) be32toh(a->hdr.tstamp_usec),
     (unsigned long long) be64toh(a->hdr.threadid),
     rxs.status3,
     rxs.status3 - last_ts);



 printf("    RSSI %d/%d/%d / %d/%d/%d; combined: %d; rate=0x%02x\n",
     MS(rxs.status1, AR_rx_rssi_ant00),
     MS(rxs.status1, AR_rx_rssi_ant01),
     MS(rxs.status1, AR_rx_rssi_ant02),
     MS(rxs.status5, AR_rx_rssi_ant10),
     MS(rxs.status5, AR_rx_rssi_ant11),
     MS(rxs.status5, AR_rx_rssi_ant12),
     MS(rxs.status5, AR_rx_rssi_combined),
     MS(rxs.status1, AR_rx_rate));


 printf("    Len: %d; more=%d, delim=%d, upload=%d\n",
     MS(rxs.status2, AR_data_len),
     MF(rxs.status2, AR_rx_more),
     MS(rxs.status2, AR_num_delim),
     MS(rxs.status2, AR_hw_upload_data));


 printf("    RX timestamp: %u\n", rxs.status3);
 last_ts = rxs.status3;


 printf("    GI: %d, 2040: %d, parallel40: %d, stbc=%d\n",
     MF(rxs.status4, AR_gi),
     MF(rxs.status4, AR_2040),
     MF(rxs.status4, AR_parallel40),
     MF(rxs.status4, AR_rx_stbc));
 printf("    Not sounding: %d, ness: %d, upload_valid: %d\n",
     MF(rxs.status4, AR_rx_not_sounding),
     MS(rxs.status4, AR_rx_ness),
     MS(rxs.status4, AR_hw_upload_data_valid));
 printf("    RX antenna: 0x%08x\n",
     MS(rxs.status4, AR_rx_antenna));



 printf("    EVM: 0x%08x; 0x%08x; 0x%08x; 0x%08x\n",
     rxs.status6,
     rxs.status7,
     rxs.status8,
     rxs.status9);




 printf("    RX done: %d, RX frame ok: %d, CRC error: %d\n",
     MF(rxs.status11, AR_rx_done),
     MF(rxs.status11, AR_rx_frame_ok),
     MF(rxs.status11, AR_crc_err));
 printf("    Decrypt CRC err: %d, PHY err: %d, MIC err: %d\n",
     MF(rxs.status11, AR_decrypt_crc_err),
     MF(rxs.status11, AR_phyerr),
     MF(rxs.status11, AR_michael_err));
 printf("    Pre delim CRC err: %d, uAPSD Trig: %d\n",
     MF(rxs.status11, AR_pre_delim_crc_err),
     MF(rxs.status11, AR_apsd_trig));
 printf("    RXKeyIdxValid: %d, KeyIdx: %d, PHY error: %d\n",
     MF(rxs.status11, AR_rx_key_idx_valid),
     MS(rxs.status11, AR_key_idx),
     MS(rxs.status11, AR_phy_err_code));
 printf("    RX more Aggr: %d, RX aggr %d, post delim CRC err: %d\n",
     MF(rxs.status11, AR_rx_more_aggr),
     MF(rxs.status11, AR_rx_aggr),
     MF(rxs.status11, AR_post_delim_crc_err));
 printf("    hw upload data type: %d; position bit: %d\n",
     MS(rxs.status11, AR_hw_upload_data_type),
     MF(rxs.status11, AR_position_bit));
 printf("    Hi RX chain: %d, RxFirstAggr: %d, DecryptBusy: %d, KeyMiss: %d\n",
     MF(rxs.status11, AR_hi_rx_chain),
     MF(rxs.status11, AR_rx_first_aggr),
     MF(rxs.status11, AR_decrypt_busy_err),
     MF(rxs.status11, AR_key_miss));
}

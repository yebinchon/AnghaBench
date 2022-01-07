
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {char* name; char* fwname; int fwsig; int ackto; int txdesc_len; int ntxchains; int nrxchains; scalar_t__ rcr; void** bcn_status_reg; int temp_delta; int fwsize_limit; int cam_entry_limit; scalar_t__ macid_limit; int rx_dma_size; int efuse_maplen; int efuse_maxlen; int page_size; int npubqpages; int pktbuf_count; int page_count; int * rf_prog; void* agc_size; int * agc_prog; void* bb_size; int * bb_prog; void* mac_size; int * mac_prog; int sc_init_bcnq1_boundary; int sc_post_init; void* sc_init_antsel; int sc_init_rf; int sc_init_bb; int sc_init_edca; int sc_init_intr; void* sc_init_ampdu; int sc_init_rx_agg; int sc_init_tx_agg; int sc_temp_read; int sc_temp_measure; int sc_beacon_select; int sc_beacon_set_rate; int sc_beacon_enable; int sc_beacon_init; void* sc_set_rssi; int sc_set_pwrmode; int sc_set_rsvd_page; int sc_set_media_status; int sc_detach_private; int sc_postattach; int sc_vap_preattach; int sc_adj_devcaps; int sc_read_chipid_vendor; int sc_iq_calib; int sc_lc_calib; int sc_set_page_size; int sc_llt_init; int sc_fw_download_enable; int sc_fw_reset; int sc_power_off; int sc_power_on; int sc_set_led; int sc_parse_rom; void* sc_efuse_postread; int sc_check_condition; int sc_rf_write; int sc_rf_read; int sc_check_frame; int sc_handle_c2h_report; int sc_handle_tx_report; int sc_classify_intr; int sc_get_rssi_ofdm; int sc_get_rssi_cck; int sc_get_rx_stats; int sc_rx_radiotap_flags; int sc_tx_radiotap_flags; int sc_dump_tx_desc; int sc_fill_tx_desc_null; int sc_fill_tx_desc_raw; int sc_fill_tx_desc; int sc_set_chan; int sc_flags; } ;
struct rtwn_usb_softc {int tx_agg_desc_num; int uc_align_rx; struct rtwn_softc uc_sc; } ;
struct r92cu_tx_desc {int dummy; } ;


 int R88EU_PUBQ_NPAGES ;
 int R88EU_TX_PAGE_COUNT ;
 int R88E_CALIB_THRESHOLD ;
 int R88E_EFUSE_MAP_LEN ;
 int R88E_EFUSE_MAX_LEN ;
 scalar_t__ R88E_MACID_MAX ;
 int R88E_RX_DMA_BUFFER_SIZE ;
 int R88E_TXPKTBUF_COUNT ;
 int R92C_CAM_ENTRY_COUNT ;
 int R92C_MAX_FW_SIZE ;
 void* R92C_TDECTRL ;
 int R92C_TX_PAGE_SIZE ;
 int RTWN_FLAG_EXT_HDR ;
 void* nitems (int *) ;
 int r88e_beacon_enable ;
 int r88e_classify_intr ;
 int r88e_fw_download_enable ;
 int r88e_fw_reset ;
 int r88e_get_rssi_cck ;
 int r88e_get_rssi_ofdm ;
 int r88e_get_rx_stats ;
 int r88e_handle_c2h_report ;
 int r88e_iq_calib ;
 int r88e_parse_rom ;
 int r88e_postattach ;
 int r88e_ratectl_tx_complete ;
 int r88e_rf_write ;
 int r88e_set_led ;
 int r88e_set_media_status ;
 int r88e_set_pwrmode ;
 int r88e_set_rsvd_page ;
 int r88e_temp_measure ;
 int r88e_temp_read ;
 int r88eu_adj_devcaps ;
 int r88eu_attach_private (struct rtwn_softc*) ;
 int r88eu_init_bb ;
 int r88eu_init_intr ;
 int r88eu_init_rx_agg ;
 int r88eu_post_init ;
 int r88eu_power_off ;
 int r88eu_power_on ;
 int r92c_beacon_init ;
 int r92c_check_condition ;
 int r92c_detach_private ;
 int r92c_fill_tx_desc ;
 int r92c_fill_tx_desc_null ;
 int r92c_fill_tx_desc_raw ;
 int r92c_init_edca ;
 int r92c_init_rf ;
 int r92c_lc_calib ;
 int r92c_llt_init ;
 int r92c_rf_read ;
 int r92c_rx_radiotap_flags ;
 int r92c_set_chan ;
 int r92c_set_page_size ;
 int r92c_tx_radiotap_flags ;
 int r92cu_align_rx ;
 int r92cu_dump_tx_desc ;
 int r92cu_init_tx_agg ;
 int * rtl8188e_agc ;
 int * rtl8188e_bb ;
 int * rtl8188e_mac ;
 int * rtl8188e_rf ;
 int rtwn_nop_int_softc ;
 int rtwn_nop_int_softc_mbuf ;
 void* rtwn_nop_softc ;
 int rtwn_nop_softc_int ;
 int rtwn_nop_softc_uint32 ;
 int rtwn_nop_softc_vap ;
 int rtwn_nop_void_int ;

void
r88eu_attach(struct rtwn_usb_softc *uc)
{
 struct rtwn_softc *sc = &uc->uc_sc;


 uc->uc_align_rx = r92cu_align_rx;
 uc->tx_agg_desc_num = 6;


 sc->sc_flags = RTWN_FLAG_EXT_HDR;

 sc->sc_set_chan = r92c_set_chan;
 sc->sc_fill_tx_desc = r92c_fill_tx_desc;
 sc->sc_fill_tx_desc_raw = r92c_fill_tx_desc_raw;
 sc->sc_fill_tx_desc_null = r92c_fill_tx_desc_null;
 sc->sc_dump_tx_desc = r92cu_dump_tx_desc;
 sc->sc_tx_radiotap_flags = r92c_tx_radiotap_flags;
 sc->sc_rx_radiotap_flags = r92c_rx_radiotap_flags;
 sc->sc_get_rx_stats = r88e_get_rx_stats;
 sc->sc_get_rssi_cck = r88e_get_rssi_cck;
 sc->sc_get_rssi_ofdm = r88e_get_rssi_ofdm;
 sc->sc_classify_intr = r88e_classify_intr;
 sc->sc_handle_tx_report = r88e_ratectl_tx_complete;
 sc->sc_handle_c2h_report = r88e_handle_c2h_report;
 sc->sc_check_frame = rtwn_nop_int_softc_mbuf;
 sc->sc_rf_read = r92c_rf_read;
 sc->sc_rf_write = r88e_rf_write;
 sc->sc_check_condition = r92c_check_condition;
 sc->sc_efuse_postread = rtwn_nop_softc;
 sc->sc_parse_rom = r88e_parse_rom;
 sc->sc_set_led = r88e_set_led;
 sc->sc_power_on = r88eu_power_on;
 sc->sc_power_off = r88eu_power_off;

 sc->sc_fw_reset = r88e_fw_reset;
 sc->sc_fw_download_enable = r88e_fw_download_enable;

 sc->sc_llt_init = r92c_llt_init;
 sc->sc_set_page_size = r92c_set_page_size;
 sc->sc_lc_calib = r92c_lc_calib;
 sc->sc_iq_calib = r88e_iq_calib;
 sc->sc_read_chipid_vendor = rtwn_nop_softc_uint32;
 sc->sc_adj_devcaps = r88eu_adj_devcaps;
 sc->sc_vap_preattach = rtwn_nop_softc_vap;
 sc->sc_postattach = r88e_postattach;
 sc->sc_detach_private = r92c_detach_private;
 sc->sc_set_media_status = r88e_set_media_status;

 sc->sc_set_rsvd_page = r88e_set_rsvd_page;
 sc->sc_set_pwrmode = r88e_set_pwrmode;
 sc->sc_set_rssi = rtwn_nop_softc;

 sc->sc_beacon_init = r92c_beacon_init;
 sc->sc_beacon_enable = r88e_beacon_enable;
 sc->sc_beacon_set_rate = rtwn_nop_void_int;
 sc->sc_beacon_select = rtwn_nop_softc_int;
 sc->sc_temp_measure = r88e_temp_measure;
 sc->sc_temp_read = r88e_temp_read;
 sc->sc_init_tx_agg = r92cu_init_tx_agg;
 sc->sc_init_rx_agg = r88eu_init_rx_agg;
 sc->sc_init_ampdu = rtwn_nop_softc;
 sc->sc_init_intr = r88eu_init_intr;
 sc->sc_init_edca = r92c_init_edca;
 sc->sc_init_bb = r88eu_init_bb;
 sc->sc_init_rf = r92c_init_rf;
 sc->sc_init_antsel = rtwn_nop_softc;
 sc->sc_post_init = r88eu_post_init;
 sc->sc_init_bcnq1_boundary = rtwn_nop_int_softc;

 sc->mac_prog = &rtl8188e_mac[0];
 sc->mac_size = nitems(rtl8188e_mac);
 sc->bb_prog = &rtl8188e_bb[0];
 sc->bb_size = nitems(rtl8188e_bb);
 sc->agc_prog = &rtl8188e_agc[0];
 sc->agc_size = nitems(rtl8188e_agc);
 sc->rf_prog = &rtl8188e_rf[0];

 sc->name = "RTL8188EU";
 sc->fwname = "rtwn-rtl8188eufw";
 sc->fwsig = 0x88e;

 sc->page_count = R88EU_TX_PAGE_COUNT;
 sc->pktbuf_count = R88E_TXPKTBUF_COUNT;

 sc->ackto = 0x40;
 sc->npubqpages = R88EU_PUBQ_NPAGES;
 sc->page_size = R92C_TX_PAGE_SIZE;

 sc->txdesc_len = sizeof(struct r92cu_tx_desc);
 sc->efuse_maxlen = R88E_EFUSE_MAX_LEN;
 sc->efuse_maplen = R88E_EFUSE_MAP_LEN;
 sc->rx_dma_size = R88E_RX_DMA_BUFFER_SIZE;

 sc->macid_limit = R88E_MACID_MAX + 1;
 sc->cam_entry_limit = R92C_CAM_ENTRY_COUNT;
 sc->fwsize_limit = R92C_MAX_FW_SIZE;
 sc->temp_delta = R88E_CALIB_THRESHOLD;

 sc->bcn_status_reg[0] = R92C_TDECTRL;
 sc->bcn_status_reg[1] = R92C_TDECTRL;
 sc->rcr = 0;

 sc->ntxchains = 1;
 sc->nrxchains = 1;

 r88eu_attach_private(sc);
}

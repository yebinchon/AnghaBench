
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct an_req {int an_len; int an_type; } ;
struct an_ltv_status {int an_opmode; size_t an_normalized_strength; int an_avg_noise_prev_min_pc; size_t an_cur_signal_quality; int an_max_noise_prev_min_pc; int an_current_tx_rate; int an_ssidlen; int an_accumulated_arl; int an_our_generated_load; int an_ap_total_load; int an_hops_to_backbone; int an_cur_channel; int an_channel_set; int an_hop_period; int an_atim_duration; int an_dtim_period; int an_beacon_period; int an_cur_bssid; int an_ap_name; int an_ssid; int an_errcode; int an_macaddr; } ;
struct an_ltv_rssi_map {int an_len; TYPE_1__* an_entries; int an_type; } ;
typedef int areq ;
typedef int an_rssimap ;
struct TYPE_2__ {int an_rss_pct; } ;


 int AN_RID_RSSI_MAP ;
 int AN_RID_STATUS ;
 int AN_STATUS_OPMODE_ASSOCIATED ;
 int AN_STATUS_OPMODE_CONFIGURED ;
 int AN_STATUS_OPMODE_ERROR ;
 int AN_STATUS_OPMODE_IN_SYNC ;
 int AN_STATUS_OPMODE_LEAP ;
 int AN_STATUS_OPMODE_MAC_ENABLED ;
 int AN_STATUS_OPMODE_RX_ENABLED ;
 int ETHER_ADDR_LEN ;
 int an_getval (char const*,struct an_req*) ;
 int an_printhex (char*,int) ;
 int an_printstr (char*,int) ;
 int an_printwords (int *,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
an_dumpstatus(const char *iface)
{
 struct an_ltv_status *sts;
 struct an_req areq;
 struct an_ltv_rssi_map an_rssimap;
 int rssimap_valid = 0;





 an_rssimap.an_len = sizeof(an_rssimap);
 an_rssimap.an_type = AN_RID_RSSI_MAP;
 rssimap_valid = an_getval(iface, (struct an_req*)&an_rssimap);

 if (rssimap_valid)
  printf("RSSI table:\t\t[ present ]\n");
 else
  printf("RSSI table:\t\t[ not available ]\n");

 areq.an_len = sizeof(areq);
 areq.an_type = AN_RID_STATUS;

 an_getval(iface, &areq);

 sts = (struct an_ltv_status *)&areq;

 printf("MAC address:\t\t");
 an_printhex((char *)&sts->an_macaddr, ETHER_ADDR_LEN);
 printf("\nOperating mode:\t\t[ ");
 if (sts->an_opmode & AN_STATUS_OPMODE_CONFIGURED)
  printf("configured ");
 if (sts->an_opmode & AN_STATUS_OPMODE_MAC_ENABLED)
  printf("MAC ON ");
 if (sts->an_opmode & AN_STATUS_OPMODE_RX_ENABLED)
  printf("RX ON ");
 if (sts->an_opmode & AN_STATUS_OPMODE_IN_SYNC)
  printf("synced ");
 if (sts->an_opmode & AN_STATUS_OPMODE_ASSOCIATED)
  printf("associated ");
 if (sts->an_opmode & AN_STATUS_OPMODE_LEAP)
  printf("LEAP ");
 if (sts->an_opmode & AN_STATUS_OPMODE_ERROR)
  printf("error ");
 printf("]\n");
 printf("Error code:\t\t");
 an_printhex((char *)&sts->an_errcode, 1);
 if (rssimap_valid)
  printf("\nSignal strength:\t[ %u%% ]",
      an_rssimap.an_entries[
   sts->an_normalized_strength].an_rss_pct);
 else
  printf("\nSignal strength:\t[ %u%% ]",
      sts->an_normalized_strength);
 printf("\nAverage Noise:\t\t[ %u%% ]", sts->an_avg_noise_prev_min_pc);
 if (rssimap_valid)
  printf("\nSignal quality:\t\t[ %u%% ]",
      an_rssimap.an_entries[
   sts->an_cur_signal_quality].an_rss_pct);
 else
  printf("\nSignal quality:\t\t[ %u ]",
      sts->an_cur_signal_quality);
 printf("\nMax Noise:\t\t[ %u%% ]", sts->an_max_noise_prev_min_pc);
 printf("\nCurrent TX rate:\t[ %u%s ]", sts->an_current_tx_rate / 2,
     (sts->an_current_tx_rate % 2) ? ".5" : "");
 printf("\nCurrent SSID:\t\t");
 an_printstr((char *)&sts->an_ssid, sts->an_ssidlen);
 printf("\nCurrent AP name:\t");
 an_printstr((char *)&sts->an_ap_name, 16);
 printf("\nCurrent BSSID:\t\t");
 an_printhex((char *)&sts->an_cur_bssid, ETHER_ADDR_LEN);
 printf("\nBeacon period:\t\t");
 an_printwords(&sts->an_beacon_period, 1);
 printf("\nDTIM period:\t\t");
 an_printwords(&sts->an_dtim_period, 1);
 printf("\nATIM duration:\t\t");
 an_printwords(&sts->an_atim_duration, 1);
 printf("\nHOP period:\t\t");
 an_printwords(&sts->an_hop_period, 1);
 printf("\nChannel set:\t\t");
 an_printwords(&sts->an_channel_set, 1);
 printf("\nCurrent channel:\t");
 an_printwords(&sts->an_cur_channel, 1);
 printf("\nHops to backbone:\t");
 an_printwords(&sts->an_hops_to_backbone, 1);
 printf("\nTotal AP load:\t\t");
 an_printwords(&sts->an_ap_total_load, 1);
 printf("\nOur generated load:\t");
 an_printwords(&sts->an_our_generated_load, 1);
 printf("\nAccumulated ARL:\t");
 an_printwords(&sts->an_accumulated_arl, 1);
 printf("\n");
 return;
}

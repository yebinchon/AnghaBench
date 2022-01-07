
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_rx_stats {int r_flags; int c_chain; int * c_nf_ext; int * c_nf_ctl; int * c_rssi_ext; int * c_rssi_ctl; } ;
struct ieee80211_node {int ni_mimo_chains; int * ni_mimo_noise_ext; int * ni_mimo_noise_ctl; int * ni_mimo_rssi_ext; int * ni_mimo_rssi_ctl; } ;


 int IEEE80211_MAX_CHAINS ;
 int IEEE80211_RSSI_LPF (int ,int ) ;
 int IEEE80211_R_C_CHAIN ;
 int IEEE80211_R_C_NF ;
 int IEEE80211_R_C_RSSI ;
 int MIN (int ,int ) ;

__attribute__((used)) static void
ieee80211_process_mimo(struct ieee80211_node *ni, struct ieee80211_rx_stats *rx)
{
 int i;


 if ((rx->r_flags & (IEEE80211_R_C_CHAIN | IEEE80211_R_C_NF | IEEE80211_R_C_RSSI)) !=
     (IEEE80211_R_C_CHAIN | IEEE80211_R_C_NF | IEEE80211_R_C_RSSI))
  return;


 for (i = 0; i < MIN(rx->c_chain, IEEE80211_MAX_CHAINS); i++) {
  IEEE80211_RSSI_LPF(ni->ni_mimo_rssi_ctl[i], rx->c_rssi_ctl[i]);
  IEEE80211_RSSI_LPF(ni->ni_mimo_rssi_ext[i], rx->c_rssi_ext[i]);
 }


 for(i = 0; i < MIN(rx->c_chain, IEEE80211_MAX_CHAINS); i++) {
  ni->ni_mimo_noise_ctl[i] = rx->c_nf_ctl[i];
  ni->ni_mimo_noise_ext[i] = rx->c_nf_ext[i];
 }
 ni->ni_mimo_chains = rx->c_chain;
}

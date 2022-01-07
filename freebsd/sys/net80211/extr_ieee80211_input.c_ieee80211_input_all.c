
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ieee80211com {int dummy; } ;
struct ieee80211_rx_stats {int r_flags; int c_nf; int c_rssi; } ;


 int IEEE80211_R_NF ;
 int IEEE80211_R_RSSI ;
 int ieee80211_add_rx_params (struct mbuf*,struct ieee80211_rx_stats*) ;
 int ieee80211_input_mimo_all (struct ieee80211com*,struct mbuf*) ;

int
ieee80211_input_all(struct ieee80211com *ic, struct mbuf *m, int rssi, int nf)
{
 struct ieee80211_rx_stats rx;

 rx.r_flags = IEEE80211_R_NF | IEEE80211_R_RSSI;
 rx.c_nf = nf;
 rx.c_rssi = rssi;

 if (!ieee80211_add_rx_params(m, &rx))
  return (-1);

 return ieee80211_input_mimo_all(ic, m);
}

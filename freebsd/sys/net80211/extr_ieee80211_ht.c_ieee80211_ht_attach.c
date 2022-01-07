
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_curhtprotmode; int ic_htprotmode; int ic_ampdu_rx_stop; int ic_ampdu_rx_start; int ic_bar_response; int ic_addba_stop; int ic_addba_response_timeout; int ic_addba_response; int ic_addba_request; int ic_ampdu_enable; int ic_send_action; int ic_recv_action; } ;


 int IEEE80211_HTINFO_OPMODE_PURE ;
 int IEEE80211_PROT_RTSCTS ;
 int ampdu_rx_start ;
 int ampdu_rx_stop ;
 int ieee80211_addba_request ;
 int ieee80211_addba_response ;
 int ieee80211_addba_stop ;
 int ieee80211_ampdu_enable ;
 int ieee80211_bar_response ;
 int ieee80211_recv_action ;
 int ieee80211_send_action ;
 int null_addba_response_timeout ;

void
ieee80211_ht_attach(struct ieee80211com *ic)
{

 ic->ic_recv_action = ieee80211_recv_action;
 ic->ic_send_action = ieee80211_send_action;
 ic->ic_ampdu_enable = ieee80211_ampdu_enable;
 ic->ic_addba_request = ieee80211_addba_request;
 ic->ic_addba_response = ieee80211_addba_response;
 ic->ic_addba_response_timeout = null_addba_response_timeout;
 ic->ic_addba_stop = ieee80211_addba_stop;
 ic->ic_bar_response = ieee80211_bar_response;
 ic->ic_ampdu_rx_start = ampdu_rx_start;
 ic->ic_ampdu_rx_stop = ampdu_rx_stop;

 ic->ic_htprotmode = IEEE80211_PROT_RTSCTS;
 ic->ic_curhtprotmode = IEEE80211_HTINFO_OPMODE_PURE;
}

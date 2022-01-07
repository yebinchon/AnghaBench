
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {int wme_hipri_switch_hysteresis; } ;
struct ieee80211com {int ic_raw_xmit; int ic_send_mgmt; TYPE_1__ ic_wme; int ic_restart_task; int ic_chw_task; int ic_bmiss_task; int ic_chan_task; int ic_promisc_task; int ic_mcast_task; int ic_parent_task; int ic_protmode; scalar_t__ ic_headroom; } ;
struct ieee80211_qosframe_addr4 {int dummy; } ;


 int AGGRESSIVE_MODE_SWITCH_HYSTERESIS ;
 scalar_t__ ALIGN (scalar_t__) ;
 int IEEE80211_PROT_CTSONLY ;
 scalar_t__ IEEE80211_WEP_EXTIVLEN ;
 scalar_t__ IEEE80211_WEP_IVLEN ;
 scalar_t__ IEEE80211_WEP_KIDLEN ;
 scalar_t__ MHLEN ;
 int TASK_INIT (int *,int ,int ,struct ieee80211com*) ;
 int beacon_miss ;
 int ieee80211_adhoc_attach (struct ieee80211com*) ;
 int ieee80211_hostap_attach (struct ieee80211com*) ;
 int ieee80211_mesh_attach (struct ieee80211com*) ;
 int ieee80211_monitor_attach (struct ieee80211com*) ;
 int ieee80211_send_mgmt ;
 int ieee80211_sta_attach (struct ieee80211com*) ;
 int ieee80211_wds_attach (struct ieee80211com*) ;
 scalar_t__ max_datalen ;
 scalar_t__ max_hdr ;
 scalar_t__ max_linkhdr ;
 scalar_t__ max_protohdr ;
 int null_raw_xmit ;
 int parent_updown ;
 int restart_vaps ;
 int update_channel ;
 int update_chw ;
 int update_mcast ;
 int update_promisc ;

void
ieee80211_proto_attach(struct ieee80211com *ic)
{
 uint8_t hdrlen;


 hdrlen = ic->ic_headroom
  + sizeof(struct ieee80211_qosframe_addr4)
  + IEEE80211_WEP_IVLEN + IEEE80211_WEP_KIDLEN
  + IEEE80211_WEP_EXTIVLEN;

 if (ALIGN(hdrlen) > max_linkhdr) {

  max_linkhdr = ALIGN(hdrlen);
  max_hdr = max_linkhdr + max_protohdr;
  max_datalen = MHLEN - max_hdr;
 }
 ic->ic_protmode = IEEE80211_PROT_CTSONLY;

 TASK_INIT(&ic->ic_parent_task, 0, parent_updown, ic);
 TASK_INIT(&ic->ic_mcast_task, 0, update_mcast, ic);
 TASK_INIT(&ic->ic_promisc_task, 0, update_promisc, ic);
 TASK_INIT(&ic->ic_chan_task, 0, update_channel, ic);
 TASK_INIT(&ic->ic_bmiss_task, 0, beacon_miss, ic);
 TASK_INIT(&ic->ic_chw_task, 0, update_chw, ic);
 TASK_INIT(&ic->ic_restart_task, 0, restart_vaps, ic);

 ic->ic_wme.wme_hipri_switch_hysteresis =
  AGGRESSIVE_MODE_SWITCH_HYSTERESIS;


 ic->ic_send_mgmt = ieee80211_send_mgmt;
 ic->ic_raw_xmit = null_raw_xmit;

 ieee80211_adhoc_attach(ic);
 ieee80211_sta_attach(ic);
 ieee80211_wds_attach(ic);
 ieee80211_hostap_attach(ic);



 ieee80211_monitor_attach(ic);
}

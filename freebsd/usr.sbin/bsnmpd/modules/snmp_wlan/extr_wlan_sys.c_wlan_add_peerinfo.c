
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_peer {int peer_id; int local_id; int state; int capinfo; int txpower; int rxseqs; int txseqs; int idle; int rssi; int txrate; int fflags; int frequency; int vlan; int associd; } ;
struct ieee80211req_sta_info {int isi_peerid; int isi_localid; int isi_state; int isi_capinfo; int isi_txpower; int * isi_rxseqs; int * isi_txseqs; int isi_inact; int isi_rssi; int isi_txrate; int isi_flags; int isi_freq; int isi_vlan; int isi_associd; int isi_macaddr; } ;


 int IEEE80211_AID (int ) ;
 struct wlan_peer* wlan_new_peer (int ) ;
 int wlan_peercaps_to_snmp (int ) ;
 int wlan_peerstate_to_snmp (int ) ;

__attribute__((used)) static struct wlan_peer *
wlan_add_peerinfo(const struct ieee80211req_sta_info *si)
{
 struct wlan_peer *wip;

 if ((wip = wlan_new_peer(si->isi_macaddr))== ((void*)0))
  return (((void*)0));

 wip->associd = IEEE80211_AID(si->isi_associd);
 wip->vlan = si->isi_vlan;
 wip->frequency = si->isi_freq;
 wip->fflags = si->isi_flags;
 wip->txrate = si->isi_txrate;
 wip->rssi = si->isi_rssi;
 wip->idle = si->isi_inact;
 wip->txseqs = si->isi_txseqs[0];
 wip->rxseqs = si->isi_rxseqs[0];
 wip->txpower = si->isi_txpower;
 wip->capinfo = wlan_peercaps_to_snmp(si->isi_capinfo);
 wip->state = wlan_peerstate_to_snmp(si->isi_state);
 wip->local_id = si->isi_localid;
 wip->peer_id = si->isi_peerid;

 return (wip);
}

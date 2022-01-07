
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rssiinfo {int rssi_total; int rssi_samples; } ;
struct ieee80211vap {int iv_opmode; int * iv_bss; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int (* ic_node_getrssi ) (int *) ;int ic_sta; } ;
typedef int int8_t ;
 int NZ (int) ;
 int get_adhoc_rssi ;
 int get_hostap_rssi ;
 int get_mesh_rssi ;
 int ieee80211_iterate_nodes_vap (int *,struct ieee80211vap*,int ,struct rssiinfo*) ;
 int stub1 (int *) ;

int8_t
ieee80211_getrssi(struct ieee80211vap *vap)
{

 struct ieee80211com *ic = vap->iv_ic;
 struct rssiinfo info;

 info.rssi_total = 0;
 info.rssi_samples = 0;
 switch (vap->iv_opmode) {
 case 131:
 case 133:
  ieee80211_iterate_nodes_vap(&ic->ic_sta, vap, get_adhoc_rssi,
      &info);
  break;
 case 132:
  ieee80211_iterate_nodes_vap(&ic->ic_sta, vap, get_hostap_rssi,
      &info);
  break;






 case 129:
 case 128:
 default:
  if (vap->iv_bss != ((void*)0))
   info.rssi_total = ic->ic_node_getrssi(vap->iv_bss);
  info.rssi_samples = 1;
  break;
 }
 return info.rssi_total / ((info.rssi_samples) == 0 ? 1 : (info.rssi_samples));

}

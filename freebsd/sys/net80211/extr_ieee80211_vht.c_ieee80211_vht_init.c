
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IEEE80211_ACTION_CAT_VHT ;
 int WLAN_ACTION_VHT_COMPRESSED_BF ;
 int WLAN_ACTION_VHT_GROUPID_MGMT ;
 int WLAN_ACTION_VHT_OPMODE_NOTIF ;
 int ieee80211_recv_action_register (int ,int ,int ) ;
 int ieee80211_send_action_register (int ,int ,int ) ;
 int vht_recv_action_placeholder ;
 int vht_send_action_placeholder ;

__attribute__((used)) static void
ieee80211_vht_init(void)
{

 ieee80211_recv_action_register(IEEE80211_ACTION_CAT_VHT,
     WLAN_ACTION_VHT_COMPRESSED_BF, vht_recv_action_placeholder);
 ieee80211_recv_action_register(IEEE80211_ACTION_CAT_VHT,
     WLAN_ACTION_VHT_GROUPID_MGMT, vht_recv_action_placeholder);
 ieee80211_recv_action_register(IEEE80211_ACTION_CAT_VHT,
     WLAN_ACTION_VHT_OPMODE_NOTIF, vht_recv_action_placeholder);

 ieee80211_send_action_register(IEEE80211_ACTION_CAT_VHT,
     WLAN_ACTION_VHT_COMPRESSED_BF, vht_send_action_placeholder);
 ieee80211_send_action_register(IEEE80211_ACTION_CAT_VHT,
     WLAN_ACTION_VHT_GROUPID_MGMT, vht_send_action_placeholder);
 ieee80211_send_action_register(IEEE80211_ACTION_CAT_VHT,
     WLAN_ACTION_VHT_OPMODE_NOTIF, vht_send_action_placeholder);
}

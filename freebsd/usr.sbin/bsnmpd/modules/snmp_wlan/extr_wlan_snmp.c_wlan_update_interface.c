
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_iface {scalar_t__ mode; } ;


 int LEAF_wlanHWMPMaxHops ;
 int LEAF_wlanHWMPRootMode ;
 int LEAF_wlanIfacePacketBurst ;
 int LEAF_wlanIfaceTdmaBeaconInterval ;
 int LEAF_wlanMeshPath ;
 int LEAF_wlanMeshTTL ;
 scalar_t__ WlanIfaceOperatingModeType_meshPoint ;
 int wlan_config_get_ioctl (struct wlan_iface*,int) ;
 int wlan_config_state (struct wlan_iface*,int ) ;
 int wlan_get_channel_list (struct wlan_iface*) ;
 int wlan_get_driver_caps (struct wlan_iface*) ;
 int wlan_get_mac_acl_macs (struct wlan_iface*) ;
 int wlan_get_mac_policy (struct wlan_iface*) ;
 int wlan_get_peerinfo (struct wlan_iface*) ;
 int wlan_get_roam_params (struct wlan_iface*) ;
 int wlan_get_scan_results (struct wlan_iface*) ;
 int wlan_get_stats (struct wlan_iface*) ;
 int wlan_get_tx_params (struct wlan_iface*) ;
 int wlan_get_wepmode (struct wlan_iface*) ;
 int wlan_get_weptxkey (struct wlan_iface*) ;
 int wlan_hwmp_config_get (struct wlan_iface*,int) ;
 int wlan_mesh_config_get (struct wlan_iface*,int) ;
 int wlan_mesh_get_routelist (struct wlan_iface*) ;

__attribute__((used)) static int
wlan_update_interface(struct wlan_iface *wif)
{
 int i;

 (void)wlan_config_state(wif, 0);
 (void)wlan_get_driver_caps(wif);
 for (i = LEAF_wlanIfacePacketBurst;
     i <= LEAF_wlanIfaceTdmaBeaconInterval; i++)
  (void)wlan_config_get_ioctl(wif, i);
 (void)wlan_get_stats(wif);




 (void)wlan_get_channel_list(wif);
 (void)wlan_get_roam_params(wif);
 (void)wlan_get_tx_params(wif);
 (void)wlan_get_scan_results(wif);
 (void)wlan_get_wepmode(wif);
 (void)wlan_get_weptxkey(wif);
 (void)wlan_get_mac_policy(wif);
 (void)wlan_get_mac_acl_macs(wif);
 (void)wlan_get_peerinfo(wif);

 if (wif->mode == WlanIfaceOperatingModeType_meshPoint) {
  for (i = LEAF_wlanMeshTTL; i <= LEAF_wlanMeshPath; i++)
   (void)wlan_mesh_config_get(wif, i);
  (void)wlan_mesh_get_routelist(wif);
  for (i = LEAF_wlanHWMPRootMode; i <= LEAF_wlanHWMPMaxHops; i++)
   (void)wlan_hwmp_config_get(wif, i);
 }

 return (0);
}

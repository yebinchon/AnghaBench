
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
struct wlan_iface {int mesh_ttl; int mesh_path; int mesh_metric; int mesh_forwarding; int mesh_peering; int wname; } ;
typedef int data ;


 int IEEE80211_IOC_MESH_AP ;
 int IEEE80211_IOC_MESH_FWRD ;
 int IEEE80211_IOC_MESH_PR_METRIC ;
 int IEEE80211_IOC_MESH_PR_PATH ;
 int IEEE80211_IOC_MESH_TTL ;






 int strcmp (char*,char*) ;
 int wlanMeshForwardingEnabled_false ;
 int wlanMeshForwardingEnabled_true ;
 int wlanMeshMetric_airtime ;
 int wlanMeshMetric_unknown ;
 int wlanMeshPath_hwmp ;
 int wlanMeshPath_unknown ;
 int wlanMeshPeeringEnabled_false ;
 int wlanMeshPeeringEnabled_true ;
 scalar_t__ wlan_ioctl (int ,int,int*,char*,size_t*,int ) ;

int
wlan_mesh_config_get(struct wlan_iface *wif, int which)
{
 int op, val = 0;
 size_t argsize = 0;
 uint8_t data[32], *pd = ((void*)0);

 switch (which) {
 case 128:
  op = IEEE80211_IOC_MESH_TTL;
  break;
 case 130:
  op = IEEE80211_IOC_MESH_AP;
  break;
 case 133:
  op = IEEE80211_IOC_MESH_FWRD;
  break;
 case 132:
  op = IEEE80211_IOC_MESH_PR_METRIC;
  pd = data;
  argsize = sizeof(data);
  break;
 case 131:
  op = IEEE80211_IOC_MESH_PR_PATH;
  pd = data;
  argsize = sizeof(data);
  break;
 case 129:
  return (0);
 default:
  return (-1);
 }

 if (wlan_ioctl(wif->wname, op, &val, pd, &argsize, 0) < 0)
  return (-1);

 switch (which) {
 case 128:
  wif->mesh_ttl = val;
  break;
 case 130:
  if (val)
   wif->mesh_peering = wlanMeshPeeringEnabled_true;
  else
   wif->mesh_peering = wlanMeshPeeringEnabled_false;
  break;
 case 133:
  if (val)
   wif->mesh_forwarding = wlanMeshForwardingEnabled_true;
  else
   wif->mesh_forwarding = wlanMeshForwardingEnabled_false;
  break;
 case 132:
  data[argsize] = '\0';
  if (strcmp(data, "AIRTIME") == 0)
   wif->mesh_metric = wlanMeshMetric_airtime;
  else
   wif->mesh_metric = wlanMeshMetric_unknown;
  break;
 case 131:
  data[argsize] = '\0';
  if (strcmp(data, "HWMP") == 0)
   wif->mesh_path = wlanMeshPath_hwmp;
  else
   wif->mesh_path = wlanMeshPath_unknown;
 }

 return (0);
}

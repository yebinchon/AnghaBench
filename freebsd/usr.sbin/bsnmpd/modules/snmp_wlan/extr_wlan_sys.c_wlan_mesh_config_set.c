
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct wlan_iface {int mesh_ttl; int wname; int mesh_path; int mesh_metric; int mesh_forwarding; int mesh_peering; } ;
typedef int data ;


 int IEEE80211_IOC_MESH_AP ;
 int IEEE80211_IOC_MESH_FWRD ;
 int IEEE80211_IOC_MESH_PR_METRIC ;
 int IEEE80211_IOC_MESH_PR_PATH ;
 int IEEE80211_IOC_MESH_TTL ;





 int strcpy (int *,char*) ;
 int wlanMeshForwardingEnabled_true ;
 int wlanMeshMetric_airtime ;
 int wlanMeshPath_hwmp ;
 int wlanMeshPeeringEnabled_true ;
 scalar_t__ wlan_ioctl (int ,int,int*,int *,size_t*,int) ;

int
wlan_mesh_config_set(struct wlan_iface *wif, int which)
{
 int op, val = 0;
 size_t argsize = 0;
 uint8_t data[32], *pd = ((void*)0);

 switch (which) {
 case 128:
  op = IEEE80211_IOC_MESH_TTL;
  val = wif->mesh_ttl;
  break;
 case 129:
  op = IEEE80211_IOC_MESH_AP;
  if (wif->mesh_peering == wlanMeshPeeringEnabled_true)
   val = 1;
  break;
 case 132:
  if (wif->mesh_forwarding == wlanMeshForwardingEnabled_true)
   val = 1;
  op = IEEE80211_IOC_MESH_FWRD;
  break;
 case 131:
  op = IEEE80211_IOC_MESH_PR_METRIC;
  if (wif->mesh_metric == wlanMeshMetric_airtime)
   strcpy(data, "AIRTIME");
  else
   return (-1);
  pd = data;
  argsize = sizeof(data);
  break;
 case 130:
  op = IEEE80211_IOC_MESH_PR_PATH;
  if (wif->mesh_path == wlanMeshPath_hwmp)
   strcpy(data, "HWMP");
  else
   return (-1);
  pd = data;
  argsize = sizeof(data);
  break;
 default:
  return (-1);
 }

 if (wlan_ioctl(wif->wname, op, &val, pd, &argsize, 1) < 0)
  return (-1);

 return(0);
}

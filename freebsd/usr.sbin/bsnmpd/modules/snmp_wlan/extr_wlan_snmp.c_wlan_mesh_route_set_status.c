
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct wlan_mesh_route {int dummy; } ;
struct wlan_iface {int dummy; } ;
struct TYPE_3__ {int integer; } ;
struct snmp_value {TYPE_1__ v; int var; } ;
struct snmp_context {TYPE_2__* scratch; } ;
struct TYPE_4__ {int int1; } ;


 int IEEE80211_ADDR_LEN ;
 int IFNAMSIZ ;
 int RowStatus_active ;


 int SNMP_ERR_GENERR ;
 int SNMP_ERR_INCONS_NAME ;
 int SNMP_ERR_INCONS_VALUE ;
 int SNMP_ERR_NOERROR ;
 int SNMP_ERR_NOSUCHNAME ;
 struct wlan_iface* wlan_find_interface (char*) ;
 scalar_t__ wlan_mac_index_decode (int *,int ,char*,char*) ;
 scalar_t__ wlan_mesh_add_route (struct wlan_iface*,struct wlan_mesh_route*) ;
 scalar_t__ wlan_mesh_add_rtentry (struct wlan_iface*,struct wlan_mesh_route*) ;
 int wlan_mesh_delete_route (struct wlan_iface*,struct wlan_mesh_route*) ;
 int wlan_mesh_free_route (struct wlan_mesh_route*) ;
 struct wlan_mesh_route* wlan_mesh_get_route (int *,int ,struct wlan_iface**) ;
 struct wlan_mesh_route* wlan_mesh_new_route (char*) ;

__attribute__((used)) static int
wlan_mesh_route_set_status(struct snmp_context *ctx, struct snmp_value *val,
    uint sub)
{
 char wname[IFNAMSIZ];
 char mac[IEEE80211_ADDR_LEN];
 struct wlan_mesh_route *wmr;
 struct wlan_iface *wif;

 if (wlan_mac_index_decode(&val->var, sub, wname, mac) < 0)
  return (SNMP_ERR_GENERR);
 wmr = wlan_mesh_get_route(&val->var, sub, &wif);

 switch (val->v.integer) {
 case 129:
  if (wmr != ((void*)0))
   return (SNMP_ERR_INCONS_NAME);
  break;
 case 128:
  if (wmr == ((void*)0))
   return (SNMP_ERR_NOSUCHNAME);
  ctx->scratch->int1 = RowStatus_active;
  return (SNMP_ERR_NOERROR);
 default:
  return (SNMP_ERR_INCONS_VALUE);
 }

 if ((wif = wlan_find_interface(wname)) == ((void*)0))
  return (SNMP_ERR_INCONS_NAME);

 if ((wmr = wlan_mesh_new_route(mac)) == ((void*)0))
  return (SNMP_ERR_GENERR);

 if (wlan_mesh_add_rtentry(wif, wmr) < 0) {
  wlan_mesh_free_route(wmr);
  return (SNMP_ERR_GENERR);
 }

 ctx->scratch->int1 = 128;
 if (wlan_mesh_add_route(wif, wmr) < 0) {
  (void)wlan_mesh_delete_route(wif, wmr);
  return (SNMP_ERR_GENERR);
 }

 return (SNMP_ERR_NOERROR);
}

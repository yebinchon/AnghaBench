
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint ;
struct wlan_mac_mac {int dummy; } ;
struct wlan_iface {int macsupported; } ;
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
 scalar_t__ wlan_add_mac_acl_mac (struct wlan_iface*,struct wlan_mac_mac*) ;
 struct wlan_mac_mac* wlan_get_acl_mac (int *,int ,struct wlan_iface**) ;
 scalar_t__ wlan_mac_add_mac (struct wlan_iface*,struct wlan_mac_mac*) ;
 int wlan_mac_delete_mac (struct wlan_iface*,struct wlan_mac_mac*) ;
 int wlan_mac_free_mac (struct wlan_mac_mac*) ;
 scalar_t__ wlan_mac_index_decode (int *,int ,char*,int *) ;
 struct wlan_mac_mac* wlan_mac_new_mac (int const*) ;

__attribute__((used)) static int
wlan_acl_mac_set_status(struct snmp_context *ctx, struct snmp_value *val,
    uint sub)
{
 char wname[IFNAMSIZ];
 uint8_t mac[IEEE80211_ADDR_LEN];
 struct wlan_iface *wif;
 struct wlan_mac_mac *macl;

 if (wlan_mac_index_decode(&val->var, sub, wname, mac) < 0)
  return (SNMP_ERR_GENERR);
 macl = wlan_get_acl_mac(&val->var, sub, &wif);

 switch (val->v.integer) {
 case 129:
  if (macl != ((void*)0))
   return (SNMP_ERR_INCONS_NAME);
  break;
 case 128:
  if (macl == ((void*)0))
   return (SNMP_ERR_NOSUCHNAME);
  ctx->scratch->int1 = RowStatus_active;
  return (SNMP_ERR_NOERROR);
 default:
  return (SNMP_ERR_INCONS_VALUE);
 }


 if (wif == ((void*)0) || !wif->macsupported)
  return (SNMP_ERR_INCONS_VALUE);

 if ((macl = wlan_mac_new_mac((const uint8_t *)mac)) == ((void*)0))
  return (SNMP_ERR_GENERR);

 ctx->scratch->int1 = 128;

 if (wlan_mac_add_mac(wif, macl) < 0) {
  wlan_mac_free_mac(macl);
  return (SNMP_ERR_GENERR);
 }

 ctx->scratch->int1 = 128;
 if (wlan_add_mac_acl_mac(wif, macl) < 0) {
  (void)wlan_mac_delete_mac(wif, macl);
  return (SNMP_ERR_GENERR);
 }

 return (SNMP_ERR_NOERROR);
}

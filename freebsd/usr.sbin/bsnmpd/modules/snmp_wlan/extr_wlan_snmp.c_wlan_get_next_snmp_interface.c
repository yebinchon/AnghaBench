
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef size_t uint32_t ;
typedef scalar_t__ uint ;
struct wlan_iface {int wname; } ;
struct asn_oid {scalar_t__ len; scalar_t__* subs; } ;


 int IFNAMSIZ ;
 int memset (char*,int ,int) ;
 scalar_t__ strcmp (int ,char*) ;
 struct wlan_iface* wlan_first_interface () ;
 struct wlan_iface* wlan_next_interface (struct wlan_iface*) ;

__attribute__((used)) static struct wlan_iface *
wlan_get_next_snmp_interface(const struct asn_oid *oid, uint sub)
{
 uint32_t i;
 uint8_t wname[IFNAMSIZ];
 struct wlan_iface *wif;

 if (oid->len - sub == 0)
  return (wlan_first_interface());

 if (oid->len - sub != oid->subs[sub] + 1 || oid->subs[sub] >= IFNAMSIZ)
  return (((void*)0));

 memset(wname, 0, IFNAMSIZ);
 for (i = 0; i < oid->subs[sub]; i++)
  wname[i] = oid->subs[sub + i + 1];
 wname[i] = '\0';

 for (wif = wlan_first_interface(); wif != ((void*)0);
     wif = wlan_next_interface(wif))
  if (strcmp(wif->wname, wname) == 0)
   break;

 return (wlan_next_interface(wif));
}

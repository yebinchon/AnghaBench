
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint ;
struct wlan_iface {int wname; } ;
struct asn_oid {int dummy; } ;


 int IFNAMSIZ ;
 scalar_t__ strcmp (int ,int *) ;
 struct wlan_iface* wlan_first_interface () ;
 int * wlan_get_ifname (struct asn_oid const*,int ,int *) ;
 struct wlan_iface* wlan_next_interface (struct wlan_iface*) ;

__attribute__((used)) static struct wlan_iface *
wlan_get_snmp_interface(const struct asn_oid *oid, uint sub)
{
 uint8_t wname[IFNAMSIZ];
 struct wlan_iface *wif;

 if (wlan_get_ifname(oid, sub, wname) == ((void*)0))
  return (((void*)0));

 for (wif = wlan_first_interface(); wif != ((void*)0);
     wif = wlan_next_interface(wif))
  if (strcmp(wif->wname, wname) == 0)
   break;

 return (wif);
}

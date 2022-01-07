
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint ;
struct wlan_iface {int dummy; } ;
struct asn_oid {int dummy; } ;


 int IFNAMSIZ ;
 struct wlan_iface* wlan_find_interface (int *) ;
 int * wlan_get_ifname (struct asn_oid const*,int ,int *) ;

__attribute__((used)) static struct wlan_iface *
wlan_get_interface(const struct asn_oid *oid, uint sub)
{
 uint8_t wname[IFNAMSIZ];

 if (wlan_get_ifname(oid, sub, wname) == ((void*)0))
  return (((void*)0));

 return (wlan_find_interface(wname));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct wlan_iface {scalar_t__ mode; } ;
struct asn_oid {int dummy; } ;


 scalar_t__ WlanIfaceOperatingModeType_meshPoint ;
 struct wlan_iface* wlan_get_interface (struct asn_oid const*,int ) ;

__attribute__((used)) static struct wlan_iface *
wlan_mesh_get_iface(const struct asn_oid *oid, uint sub)
{
 struct wlan_iface *wif;

 if ((wif = wlan_get_interface(oid, sub)) == ((void*)0))
  return (((void*)0));

 if (wif->mode != WlanIfaceOperatingModeType_meshPoint)
  return (((void*)0));

 return (wif);
}

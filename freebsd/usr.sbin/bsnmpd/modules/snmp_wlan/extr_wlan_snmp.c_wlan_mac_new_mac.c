
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct wlan_mac_mac {int mac_status; int mac; } ;


 int IEEE80211_ADDR_LEN ;
 int RowStatus_notReady ;
 scalar_t__ malloc (int) ;
 int memcpy (int ,int const*,int ) ;
 int memset (struct wlan_mac_mac*,int ,int) ;

struct wlan_mac_mac *
wlan_mac_new_mac(const uint8_t *mac)
{
 struct wlan_mac_mac *wmm;

 if ((wmm = (struct wlan_mac_mac *)malloc(sizeof(*wmm))) == ((void*)0))
  return (((void*)0));

 memset(wmm, 0, sizeof(*wmm));
 memcpy(wmm->mac, mac, IEEE80211_ADDR_LEN);
 wmm->mac_status = RowStatus_notReady;

 return (wmm);
}

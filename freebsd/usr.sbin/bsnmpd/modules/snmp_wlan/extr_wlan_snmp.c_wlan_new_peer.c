
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct wlan_peer {int pmac; } ;


 int IEEE80211_ADDR_LEN ;
 scalar_t__ malloc (int) ;
 int memcpy (int ,int const*,int ) ;
 int memset (struct wlan_peer*,int ,int) ;

struct wlan_peer *
wlan_new_peer(const uint8_t *pmac)
{
 struct wlan_peer *wip;

 if ((wip = (struct wlan_peer *)malloc(sizeof(*wip))) == ((void*)0))
  return (((void*)0));

 memset(wip, 0, sizeof(struct wlan_peer));
 memcpy(wip->pmac, pmac, IEEE80211_ADDR_LEN);

 return (wip);
}

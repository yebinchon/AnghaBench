
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_frame {int i_addr2; } ;


 scalar_t__ memcmp (int ,char*,int) ;

int from_ap(struct ieee80211_frame *wh, char *mac)
{
 return memcmp(wh->i_addr2, mac, 6) == 0;
}

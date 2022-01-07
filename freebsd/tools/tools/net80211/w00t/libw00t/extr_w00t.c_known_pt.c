
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_frame {int dummy; } ;


 int is_arp (struct ieee80211_frame*,int) ;

char *known_pt(struct ieee80211_frame *wh, int *len)
{
 static char *known_pt_arp = "\xAA\xAA\x03\x00\x00\x00\x08\x06";
 static char *known_pt_ip = "\xAA\xAA\x03\x00\x00\x00\x08\x00";
 int arp;

 arp = is_arp(wh, *len);
 *len = 8;
 if (arp)
  return known_pt_arp;
 else
  return known_pt_ip;
}

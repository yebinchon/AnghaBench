
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 int IEEE80211_NWID_LEN ;
 int printf (char*,...) ;

void
ieee80211_print_essid(const uint8_t *essid, int len)
{
 const uint8_t *p;
 int i;

 if (len > IEEE80211_NWID_LEN)
  len = IEEE80211_NWID_LEN;

 for (i = 0, p = essid; i < len; i++, p++) {
  if (*p < ' ' || *p > 0x7e)
   break;
 }
 if (i == len) {
  printf("\"");
  for (i = 0, p = essid; i < len; i++, p++)
   printf("%c", *p);
  printf("\"");
 } else {
  printf("0x");
  for (i = 0, p = essid; i < len; i++, p++)
   printf("%02x", *p);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int chan; int ssid; } ;
struct ieee80211_frame {int dummy; } ;


 char IEEE80211_CAPINFO_ESS ;
 int memcpy (char*,int ,int) ;
 int strlen (int ) ;

int fill_beacon(struct params *p, struct ieee80211_frame *wh)
{
 int len;
 char *ptr;

 ptr = (char*) (wh+1);
 ptr += 8;
 ptr += 2;
 *ptr |= IEEE80211_CAPINFO_ESS;
 ptr += 2;


 len = strlen(p->ssid);
 *ptr++ = 0;
 *ptr++ = len;
 memcpy(ptr, p->ssid, len);
 ptr += len;


        *ptr++ = 1;
        *ptr++ = 4;
        *ptr++ = 2 | 0x80;
        *ptr++ = 4 | 0x80;
        *ptr++ = 11;
        *ptr++ = 22;


 *ptr++ = 3;
 *ptr++ = 1;
 *ptr++ = p->chan;

 return ptr - ((char*) wh);
}

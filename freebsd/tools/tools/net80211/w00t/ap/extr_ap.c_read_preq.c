
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {char* ssid; } ;
struct ieee80211_frame {int i_addr2; } ;


 int mac2str (unsigned char*,int ) ;
 int printf (char*,...) ;
 int send_pres (struct params*,int ) ;
 scalar_t__ strcmp (unsigned char*,char*) ;

void read_preq(struct params *p, struct ieee80211_frame *wh, int len)
{
 unsigned char *ptr;
 unsigned char *end;
 unsigned char macs[6*3];

 ptr = (unsigned char*) (wh+1);


 if (*ptr != 0) {
  printf("weird pr %x\n", *ptr);
  return;
 }
 ptr++;

 end = ptr + (*ptr) + 1;
 *end = 0;
 ptr++;

 mac2str(macs, wh->i_addr2);
 printf("Probe request for [%s] from %s\n", ptr, macs);

 if ((strcmp(ptr, "") == 0) || (strcmp(ptr, p->ssid) == 0))
  send_pres(p, wh->i_addr2);
}

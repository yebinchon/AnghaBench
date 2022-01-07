
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int ssid; int mac; } ;
struct ieee80211_frame {int i_addr2; int i_addr1; } ;


 int mac2str (unsigned char*,int ) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int printf (char*,...) ;
 int send_assoc (struct params*,int ) ;
 scalar_t__ strcmp (unsigned char*,int ) ;

void read_assoc(struct params *p, struct ieee80211_frame *wh, int len)
{
 unsigned char *ptr;
 unsigned char *end;
 unsigned char macs[6*3];

 if (memcmp(wh->i_addr1, p->mac, 6) != 0)
  return;

 ptr = (unsigned char*) (wh+1);
 ptr += 2;
 ptr += 2;


 if (*ptr != 0) {
  printf("weird pr %x\n", *ptr);
  return;
 }
 ptr++;

 end = ptr + (*ptr) + 1;
 *end = 0;
 ptr++;

 mac2str(macs, wh->i_addr2);
 printf("Assoc request for [%s] from %s\n", ptr, macs);

 if (strcmp(ptr, p->ssid) == 0)
  send_assoc(p, wh->i_addr2);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int mac; } ;
struct ieee80211_frame {int i_addr2; int i_addr1; } ;


 int le16toh (unsigned short) ;
 int mac2str (char*,int ) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int printf (char*,...) ;
 int send_auth (struct params*,int ) ;

void read_auth(struct params *p, struct ieee80211_frame *wh, int len)
{
 unsigned short *ptr;
 char mac[6*3];

 if (memcmp(wh->i_addr1, p->mac, 6) != 0)
  return;

 ptr = (unsigned short*) (wh+1);
 if (le16toh(*ptr) != 0) {
  printf("Unknown auth algo %d\n", le16toh(*ptr));
  return;
 }
 ptr++;
 if (le16toh(*ptr) == 1) {
  mac2str(mac, wh->i_addr2);
  printf("Got auth from %s\n", mac);
  send_auth(p, wh->i_addr2);
 } else {
  printf("Weird seq in auth %d\n", le16toh(*ptr));
 }
}

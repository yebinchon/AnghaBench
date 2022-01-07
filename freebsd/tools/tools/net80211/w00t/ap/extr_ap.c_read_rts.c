
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int mac; } ;
struct ieee80211_frame {int i_addr2; int i_addr1; } ;


 scalar_t__ memcmp (int ,int ,int) ;
 int send_cts (struct params*,int ) ;

void read_rts(struct params *p, struct ieee80211_frame *wh, int len)
{
 if (memcmp(wh->i_addr1, p->mac, 6) != 0)
  return;

 send_cts(p, wh->i_addr2);
}

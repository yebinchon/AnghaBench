
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {scalar_t__ packet_try; int mac; } ;
struct ieee80211_frame {int i_addr1; } ;


 scalar_t__ memcmp (int ,int ,int) ;

void read_ack(struct params *p, struct ieee80211_frame *wh, int len)
{
 if (memcmp(wh->i_addr1, p->mac, 6) == 0)
  p->packet_try = 0;
}

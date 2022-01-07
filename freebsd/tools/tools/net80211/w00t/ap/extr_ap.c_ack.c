
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int tx; int mac; } ;
struct ieee80211_frame {int* i_fc; int i_addr2; int i_addr1; } ;


 int IEEE80211_FC0_TYPE_CTL ;
 int IEEE80211_FC0_TYPE_MASK ;
 scalar_t__ memcmp (int ,int ,int) ;
 int send_ack (int ,int ) ;

void ack(struct params *p, struct ieee80211_frame *wh)
{
 if (memcmp(wh->i_addr1, p->mac, 6) != 0)
  return;

 if ((wh->i_fc[0] & IEEE80211_FC0_TYPE_MASK) == IEEE80211_FC0_TYPE_CTL)
  return;

 send_ack(p->tx, wh->i_addr2);
}

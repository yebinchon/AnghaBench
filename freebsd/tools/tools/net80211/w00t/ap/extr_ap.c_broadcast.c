
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_frame {int i_addr1; } ;


 scalar_t__ memcmp (int ,char*,int) ;

int broadcast(struct ieee80211_frame *wh)
{


 if (memcmp(wh->i_addr1, "\xff\xff\xff\xff\xff\xff", 6) == 0)
  return 1;

 return 0;
}

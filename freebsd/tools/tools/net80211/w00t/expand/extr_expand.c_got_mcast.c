
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int dummy; } ;
struct ieee80211_frame {int dummy; } ;


 int printf (char*) ;

void got_mcast(struct params *p, struct ieee80211_frame *wh, int len)
{
 printf("ao\n");
}

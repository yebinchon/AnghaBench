
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_frame {int dummy; } ;



__attribute__((used)) static int is_arp(struct ieee80211_frame *wh, int len)
{

        if (len > (sizeof(*wh) + 4 + 4 + 39))
                return 0;

        return 1;
}

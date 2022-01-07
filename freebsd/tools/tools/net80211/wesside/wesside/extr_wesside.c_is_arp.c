
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_frame {int dummy; } ;
struct arphdr {int dummy; } ;



int is_arp(struct ieee80211_frame *wh, int len)
{
        int arpsize = 8 + sizeof(struct arphdr) + 10*2;

        if (len == arpsize || len == 54)
                return 1;

        return 0;
}

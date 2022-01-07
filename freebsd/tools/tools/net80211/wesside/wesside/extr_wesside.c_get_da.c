
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_frame {int* i_fc; void* i_addr1; void* i_addr3; } ;


 int IEEE80211_FC1_DIR_FROMDS ;

void *get_da(struct ieee80211_frame *wh)
{
        if (wh->i_fc[1] & IEEE80211_FC1_DIR_FROMDS)
                return wh->i_addr1;
        else
                return wh->i_addr3;
}

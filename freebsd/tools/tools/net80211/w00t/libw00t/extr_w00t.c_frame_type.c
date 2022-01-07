
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_frame {int* i_fc; } ;


 int IEEE80211_FC0_SUBTYPE_MASK ;
 int IEEE80211_FC0_TYPE_MASK ;

int frame_type(struct ieee80211_frame *wh, int type, int stype)
{
        if ((wh->i_fc[0] & IEEE80211_FC0_TYPE_MASK) != type)
                return 0;

        if ((wh->i_fc[0] & IEEE80211_FC0_SUBTYPE_MASK) != stype)
                return 0;

        return 1;
}

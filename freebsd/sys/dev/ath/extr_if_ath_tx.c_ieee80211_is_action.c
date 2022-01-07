
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_frame {int* i_fc; } ;


 int IEEE80211_FC0_SUBTYPE_ACTION ;
 int IEEE80211_FC0_SUBTYPE_MASK ;
 int IEEE80211_FC0_TYPE_MASK ;
 int IEEE80211_FC0_TYPE_MGT ;

__attribute__((used)) static int
ieee80211_is_action(struct ieee80211_frame *wh)
{

 if ((wh->i_fc[0] & IEEE80211_FC0_TYPE_MASK) !=
     IEEE80211_FC0_TYPE_MGT)
  return 0;


 if ((wh->i_fc[0] & IEEE80211_FC0_SUBTYPE_MASK) !=
     IEEE80211_FC0_SUBTYPE_ACTION)
  return 0;

 return 1;
}

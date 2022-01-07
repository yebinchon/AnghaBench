
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_frame {int* i_fc; int i_addr3; int i_addr2; int i_addr1; } ;


 int IEEE80211_FC0_SUBTYPE_MASK ;
 int IEEE80211_FC0_TYPE_CTL ;
 int IEEE80211_FC0_TYPE_MASK ;
 scalar_t__ memcmp (int ,int ,int) ;
 int printf (char*) ;

int possible_match(struct ieee80211_frame *sent, int slen,
     struct ieee80211_frame *got, int glen)
{
 if (slen != glen)
  return 0;

 if (memcmp(sent->i_addr1, got->i_addr1, 6) != 0)
  printf("Addr1 doesn't match\n");

 if ((sent->i_fc[0] & IEEE80211_FC0_TYPE_MASK) !=
     (got->i_fc[0] & IEEE80211_FC0_TYPE_MASK))
  return 0;

 if ((sent->i_fc[0] & IEEE80211_FC0_SUBTYPE_MASK) !=
     (got->i_fc[0] & IEEE80211_FC0_SUBTYPE_MASK))
  return 0;


 if ((got->i_fc[0] & IEEE80211_FC0_TYPE_MASK) == IEEE80211_FC0_TYPE_CTL)
  return 1;

 if (memcmp(sent->i_addr2, got->i_addr2, 6) == 0 &&
     memcmp(sent->i_addr3, got->i_addr3, 6) == 0)
      return 1;

 return 0;
}

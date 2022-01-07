
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ratemedia {int member_0; int const member_1; } ;
struct ieee80211com {int ic_phytype; } ;
typedef enum ieee80211_phymode { ____Placeholder_ieee80211_phymode } ieee80211_phymode ;
 int IEEE80211_RATE_MCS ;
 int IEEE80211_RATE_VAL ;
 int IEEE80211_T_FH ;
 int IFM_AUTO ;



 int IFM_IEEE80211_11NA ;
 int IFM_IEEE80211_11NG ;
 int findmedia (struct ratemedia const*,int ,int) ;
 int nitems (struct ratemedia const*) ;

int
ieee80211_rate2media(struct ieee80211com *ic, int rate, enum ieee80211_phymode mode)
{
 static const struct ratemedia rates[] = {
  { 2 | 142, 141 },
  { 4 | 142, 140 },
  { 2 | 149, 147 },
  { 4 | 149, 145 },
  { 11 | 149, 143 },
  { 22 | 149, 146 },
  { 44 | 149, 144 },
  { 12 | 150, 129 },
  { 18 | 150, 128 },
  { 24 | 150, 138 },
  { 36 | 150, 137 },
  { 48 | 150, 136 },
  { 72 | 150, 133 },
  { 96 | 150, 131 },
  { 108 | 150, 130 },
  { 2 | 148, 147 },
  { 4 | 148, 145 },
  { 11 | 148, 143 },
  { 22 | 148, 146 },
  { 12 | 148, 129 },
  { 18 | 148, 128 },
  { 24 | 148, 138 },
  { 36 | 148, 137 },
  { 48 | 148, 136 },
  { 72 | 148, 133 },
  { 96 | 148, 131 },
  { 108 | 148, 130 },
  { 6 | 150, 134 },
  { 9 | 150, 132 },
  { 54 | 150, 135 },

 };
 static const struct ratemedia htrates[] = {
  { 0, 139 },
  { 1, 139 },
  { 2, 139 },
  { 3, 139 },
  { 4, 139 },
  { 5, 139 },
  { 6, 139 },
  { 7, 139 },
  { 8, 139 },
  { 9, 139 },
  { 10, 139 },
  { 11, 139 },
  { 12, 139 },
  { 13, 139 },
  { 14, 139 },
  { 15, 139 },
  { 16, 139 },
  { 17, 139 },
  { 18, 139 },
  { 19, 139 },
  { 20, 139 },
  { 21, 139 },
  { 22, 139 },
  { 23, 139 },
  { 24, 139 },
  { 25, 139 },
  { 26, 139 },
  { 27, 139 },
  { 28, 139 },
  { 29, 139 },
  { 30, 139 },
  { 31, 139 },
  { 32, 139 },
  { 33, 139 },
  { 34, 139 },
  { 35, 139 },
  { 36, 139 },
  { 37, 139 },
  { 38, 139 },
  { 39, 139 },
  { 40, 139 },
  { 41, 139 },
  { 42, 139 },
  { 43, 139 },
  { 44, 139 },
  { 45, 139 },
  { 46, 139 },
  { 47, 139 },
  { 48, 139 },
  { 49, 139 },
  { 50, 139 },
  { 51, 139 },
  { 52, 139 },
  { 53, 139 },
  { 54, 139 },
  { 55, 139 },
  { 56, 139 },
  { 57, 139 },
  { 58, 139 },
  { 59, 139 },
  { 60, 139 },
  { 61, 139 },
  { 62, 139 },
  { 63, 139 },
  { 64, 139 },
  { 65, 139 },
  { 66, 139 },
  { 67, 139 },
  { 68, 139 },
  { 69, 139 },
  { 70, 139 },
  { 71, 139 },
  { 72, 139 },
  { 73, 139 },
  { 74, 139 },
  { 75, 139 },
  { 76, 139 },
 };
 int m;




 if (mode == 161) {
  if (rate & IEEE80211_RATE_MCS) {
   rate &= ~IEEE80211_RATE_MCS;
   m = findmedia(htrates, nitems(htrates), rate);
   if (m != IFM_AUTO)
    return m | IFM_IEEE80211_11NA;
  }
 } else if (mode == 160) {

  if (rate & IEEE80211_RATE_MCS) {
   rate &= ~IEEE80211_RATE_MCS;
   m = findmedia(htrates, nitems(htrates), rate);
   if (m != IFM_AUTO)
    return m | IFM_IEEE80211_11NG;
  }
 }
 rate &= IEEE80211_RATE_VAL;
 switch (mode) {
 case 164:
 case 157:
 case 156:
 case 161:
 case 154:
 case 155:
  return findmedia(rates, nitems(rates),
      rate | 150);
 case 163:
  return findmedia(rates, nitems(rates),
      rate | 149);
 case 158:
  return findmedia(rates, nitems(rates),
      rate | 142);
 case 159:

  if (ic != ((void*)0) && ic->ic_phytype == IEEE80211_T_FH)
   return findmedia(rates, nitems(rates),
       rate | 142);


 case 162:
 case 160:
 case 153:
  return findmedia(rates, nitems(rates), rate | 148);
 case 152:
 case 151:

  return IFM_AUTO;
 }
 return IFM_AUTO;
}

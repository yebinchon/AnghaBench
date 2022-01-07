
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t IFM_SUBTYPE (int) ;
 size_t nitems (int const*) ;

int
ieee80211_media2rate(int mword)
{
 static const int ieeerates[] = {
  -1,
  0,
  0,
  2,
  4,
  2,
  4,
  11,
  22,
  44,
  12,
  18,
  24,
  36,
  48,
  72,
  96,
  108,
  144,
  0,
  0,
  6,
  9,
  54,
  -1,
  -1,
 };
 return IFM_SUBTYPE(mword) < nitems(ieeerates) ?
  ieeerates[IFM_SUBTYPE(mword)] : 0;
}

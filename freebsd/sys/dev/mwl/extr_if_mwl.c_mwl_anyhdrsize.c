
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_frame_bar {int dummy; } ;
struct ieee80211_frame_min {int dummy; } ;
struct ieee80211_frame_ack {int dummy; } ;
struct ieee80211_frame {int* i_fc; } ;





 int IEEE80211_FC0_SUBTYPE_MASK ;
 int IEEE80211_FC0_TYPE_CTL ;
 int IEEE80211_FC0_TYPE_MASK ;
 int ieee80211_hdrsize (void const*) ;

__attribute__((used)) static __inline int
mwl_anyhdrsize(const void *data)
{
 const struct ieee80211_frame *wh = data;

 if ((wh->i_fc[0]&IEEE80211_FC0_TYPE_MASK) == IEEE80211_FC0_TYPE_CTL) {
  switch (wh->i_fc[0] & IEEE80211_FC0_SUBTYPE_MASK) {
  case 128:
  case 130:
   return sizeof(struct ieee80211_frame_ack);
  case 129:
   return sizeof(struct mwl_frame_bar);
  }
  return sizeof(struct ieee80211_frame_min);
 } else
  return ieee80211_hdrsize(data);
}

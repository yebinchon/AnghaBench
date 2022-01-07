
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;


 int sort_channels (struct ieee80211_channel*,int,int) ;

void
ieee80211_sort_channels(struct ieee80211_channel chans[], int nchans)
{
 if (nchans > 0)
  sort_channels(chans, nchans, sizeof(struct ieee80211_channel));
}

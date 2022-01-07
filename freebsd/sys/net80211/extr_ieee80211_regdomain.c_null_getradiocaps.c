
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_nchans; int ic_channels; } ;
struct ieee80211_channel {int dummy; } ;


 int memcpy (struct ieee80211_channel*,int ,int) ;

__attribute__((used)) static void
null_getradiocaps(struct ieee80211com *ic, int maxchan,
 int *n, struct ieee80211_channel *c)
{

 if (maxchan > ic->ic_nchans)
  maxchan = ic->ic_nchans;
 memcpy(c, ic->ic_channels, maxchan*sizeof(struct ieee80211_channel));
 *n = maxchan;
}

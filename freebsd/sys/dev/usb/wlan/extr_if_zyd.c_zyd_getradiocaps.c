
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211com {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
typedef int bands ;


 int IEEE80211_MODE_11B ;
 int IEEE80211_MODE_11G ;
 int IEEE80211_MODE_BYTES ;
 int ieee80211_add_channels_default_2ghz (struct ieee80211_channel*,int,int*,int *,int ) ;
 int memset (int *,int ,int) ;
 int setbit (int *,int ) ;

__attribute__((used)) static void
zyd_getradiocaps(struct ieee80211com *ic,
    int maxchans, int *nchans, struct ieee80211_channel chans[])
{
 uint8_t bands[IEEE80211_MODE_BYTES];

 memset(bands, 0, sizeof(bands));
 setbit(bands, IEEE80211_MODE_11B);
 setbit(bands, IEEE80211_MODE_11G);
 ieee80211_add_channels_default_2ghz(chans, maxchans, nchans, bands, 0);
}

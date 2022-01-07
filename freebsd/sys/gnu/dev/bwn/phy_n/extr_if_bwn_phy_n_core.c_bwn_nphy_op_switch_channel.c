
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;
struct bwn_mac {int dummy; } ;
typedef int bwn_chan_type_t ;


 scalar_t__ BWN_BAND_2G ;
 int EINVAL ;
 scalar_t__ bwn_current_band (struct bwn_mac*) ;
 int bwn_get_chan_type (struct bwn_mac*,int *) ;
 struct ieee80211_channel* bwn_get_channel (struct bwn_mac*) ;
 int bwn_nphy_set_channel (struct bwn_mac*,struct ieee80211_channel*,int ) ;

int
bwn_nphy_op_switch_channel(struct bwn_mac *mac, unsigned int new_channel)
{
 struct ieee80211_channel *channel = bwn_get_channel(mac);
 bwn_chan_type_t channel_type = bwn_get_chan_type(mac, ((void*)0));

 if (bwn_current_band(mac) == BWN_BAND_2G) {
  if ((new_channel < 1) || (new_channel > 14))
   return -EINVAL;
 } else {
  if (new_channel > 200)
   return -EINVAL;
 }

 return bwn_nphy_set_channel(mac, channel, channel_type);
}

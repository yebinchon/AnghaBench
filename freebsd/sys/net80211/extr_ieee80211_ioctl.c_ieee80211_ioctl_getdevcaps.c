
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211req_chaninfo {int ic_nchans; int ic_chans; } ;
struct ieee80211req {int i_len; int i_data; } ;
struct ieee80211com {int (* ic_getradiocaps ) (struct ieee80211com*,int,int*,int ) ;int ic_vhtcaps; int ic_htcaps; int ic_cryptocaps; int ic_caps; } ;
struct ieee80211_devcaps_req {struct ieee80211req_chaninfo dc_chaninfo; int dc_vhtcaps; int dc_htcaps; int dc_cryptocaps; int dc_drivercaps; } ;
struct ieee80211_channel {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int IEEE80211_DEVCAPS_SIZE (int) ;
 int IEEE80211_DEVCAPS_SPACE (struct ieee80211_devcaps_req*) ;
 int IEEE80211_FREE (struct ieee80211_devcaps_req*,int ) ;
 scalar_t__ IEEE80211_MALLOC (int ,int ,int) ;
 int IEEE80211_M_NOWAIT ;
 int IEEE80211_M_ZERO ;
 int KASSERT (int,char*) ;
 int M_TEMP ;
 int copyout (struct ieee80211_devcaps_req*,int ,int ) ;
 int ieee80211_sort_channels (int ,int) ;
 int stub1 (struct ieee80211com*,int,int*,int ) ;

__attribute__((used)) static int
ieee80211_ioctl_getdevcaps(struct ieee80211com *ic,
 const struct ieee80211req *ireq)
{
 struct ieee80211_devcaps_req *dc;
 struct ieee80211req_chaninfo *ci;
 int maxchans, error;

 maxchans = 1 + ((ireq->i_len - sizeof(struct ieee80211_devcaps_req)) /
     sizeof(struct ieee80211_channel));

 if (maxchans < 1)
  return EINVAL;

 if (maxchans > 2048)
  maxchans = 2048;
 dc = (struct ieee80211_devcaps_req *)
     IEEE80211_MALLOC(IEEE80211_DEVCAPS_SIZE(maxchans), M_TEMP,
     IEEE80211_M_NOWAIT | IEEE80211_M_ZERO);
 if (dc == ((void*)0))
  return ENOMEM;
 dc->dc_drivercaps = ic->ic_caps;
 dc->dc_cryptocaps = ic->ic_cryptocaps;
 dc->dc_htcaps = ic->ic_htcaps;
 dc->dc_vhtcaps = ic->ic_vhtcaps;
 ci = &dc->dc_chaninfo;
 ic->ic_getradiocaps(ic, maxchans, &ci->ic_nchans, ci->ic_chans);
 KASSERT(ci->ic_nchans <= maxchans,
     ("nchans %d maxchans %d", ci->ic_nchans, maxchans));
 ieee80211_sort_channels(ci->ic_chans, ci->ic_nchans);
 error = copyout(dc, ireq->i_data, IEEE80211_DEVCAPS_SPACE(dc));
 IEEE80211_FREE(dc, M_TEMP);
 return error;
}

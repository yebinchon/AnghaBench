
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211req {int i_len; int i_data; } ;
struct ieee80211com {int dummy; } ;
struct ieee80211_channel {scalar_t__ ic_freq; int ic_flags; } ;
typedef int chan ;


 int EINVAL ;
 scalar_t__ IEEE80211_CHAN_ANY ;
 struct ieee80211_channel* IEEE80211_CHAN_ANYC ;
 int copyin (int ,struct ieee80211_channel*,int) ;
 struct ieee80211_channel* ieee80211_find_channel (struct ieee80211com*,scalar_t__,int ) ;
 int setcurchan (struct ieee80211vap*,struct ieee80211_channel*) ;

__attribute__((used)) static int
ieee80211_ioctl_setcurchan(struct ieee80211vap *vap,
 const struct ieee80211req *ireq)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct ieee80211_channel chan, *c;
 int error;

 if (ireq->i_len != sizeof(chan))
  return EINVAL;
 error = copyin(ireq->i_data, &chan, sizeof(chan));
 if (error != 0)
  return error;


 if (chan.ic_freq == 0 || chan.ic_freq == IEEE80211_CHAN_ANY) {
  c = IEEE80211_CHAN_ANYC;
 } else {
  c = ieee80211_find_channel(ic, chan.ic_freq, chan.ic_flags);
  if (c == ((void*)0))
   return EINVAL;
 }
 return setcurchan(vap, c);
}

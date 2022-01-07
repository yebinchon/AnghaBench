
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211req {int i_len; int i_data; } ;
struct ieee80211com {int ic_chan_active; } ;


 int copyout (int *,int ,int) ;

__attribute__((used)) static int
ieee80211_ioctl_getchanlist(struct ieee80211vap *vap, struct ieee80211req *ireq)
{
 struct ieee80211com *ic = vap->iv_ic;

 if (sizeof(ic->ic_chan_active) < ireq->i_len)
  ireq->i_len = sizeof(ic->ic_chan_active);
 return copyout(&ic->ic_chan_active, ireq->i_data, ireq->i_len);
}

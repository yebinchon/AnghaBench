
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {scalar_t__ iv_opmode; int iv_flags; struct ieee80211com* iv_ic; } ;
struct ieee80211req {int i_len; int i_data; } ;
struct ieee80211com {int ic_flags; } ;
struct TYPE_2__ {int ic_flags; int ic_freq; } ;
struct ieee80211_chanswitch_req {scalar_t__ csa_count; int csa_mode; TYPE_1__ csa_chan; } ;
struct ieee80211_channel {int dummy; } ;
typedef int csr ;


 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int IEEE80211_F_CSAPENDING ;
 int IEEE80211_F_DOTH ;
 int IEEE80211_LOCK (struct ieee80211com*) ;
 scalar_t__ IEEE80211_M_HOSTAP ;
 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int copyin (int ,struct ieee80211_chanswitch_req*,int) ;
 int ieee80211_csa_cancelswitch (struct ieee80211com*) ;
 int ieee80211_csa_startswitch (struct ieee80211com*,struct ieee80211_channel*,int ,scalar_t__) ;
 struct ieee80211_channel* ieee80211_find_channel (struct ieee80211com*,int ,int ) ;

__attribute__((used)) static int
ieee80211_ioctl_chanswitch(struct ieee80211vap *vap, struct ieee80211req *ireq)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct ieee80211_chanswitch_req csr;
 struct ieee80211_channel *c;
 int error;

 if (ireq->i_len != sizeof(csr))
  return EINVAL;
 error = copyin(ireq->i_data, &csr, sizeof(csr));
 if (error != 0)
  return error;

 if (vap->iv_opmode != IEEE80211_M_HOSTAP ||
     (vap->iv_flags & IEEE80211_F_DOTH) == 0)
  return EOPNOTSUPP;
 c = ieee80211_find_channel(ic,
     csr.csa_chan.ic_freq, csr.csa_chan.ic_flags);
 if (c == ((void*)0))
  return ENOENT;
 IEEE80211_LOCK(ic);
 if ((ic->ic_flags & IEEE80211_F_CSAPENDING) == 0)
  ieee80211_csa_startswitch(ic, c, csr.csa_mode, csr.csa_count);
 else if (csr.csa_count == 0)
  ieee80211_csa_cancelswitch(ic);
 else
  error = EBUSY;
 IEEE80211_UNLOCK(ic);
 return error;
}

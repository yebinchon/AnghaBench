
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct ieee80211_txparam* iv_txparms; struct ieee80211com* iv_ic; } ;
struct ieee80211req {int i_len; int i_data; } ;
struct ieee80211_htrateset {int dummy; } ;
struct ieee80211com {int ic_modecaps; struct ieee80211_htrateset ic_sup_htrates; struct ieee80211_rateset* ic_sup_rates; } ;
struct ieee80211_txparams_req {struct ieee80211_txparam* params; } ;
struct ieee80211_txparam {scalar_t__ ucastrate; scalar_t__ mcastrate; scalar_t__ mgmtrate; scalar_t__ maxretry; } ;
struct ieee80211_rateset {int dummy; } ;
typedef int parms ;


 int EINVAL ;
 int ENETRESET ;
 int IEEE80211_MODE_11A ;
 int IEEE80211_MODE_11NA ;
 int IEEE80211_MODE_11NG ;
 int checkmcs (struct ieee80211_htrateset const*,scalar_t__) ;
 int checkrate (struct ieee80211_rateset const*,scalar_t__) ;
 int copyin (int ,struct ieee80211_txparams_req*,int) ;
 scalar_t__ isclr (int ,int) ;
 scalar_t__ isset (int ,int) ;

__attribute__((used)) static int
ieee80211_ioctl_settxparams(struct ieee80211vap *vap,
 const struct ieee80211req *ireq)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct ieee80211_txparams_req parms;
 struct ieee80211_txparam *src, *dst;
 const struct ieee80211_htrateset *rs_ht;
 const struct ieee80211_rateset *rs;
 int error, mode, changed, is11n, nmodes;


 if (ireq->i_len > sizeof(parms))
  return EINVAL;
 error = copyin(ireq->i_data, &parms, ireq->i_len);
 if (error != 0)
  return error;
 nmodes = ireq->i_len / sizeof(struct ieee80211_txparam);
 changed = 0;

 for (mode = IEEE80211_MODE_11A; mode < nmodes; mode++) {
  if (isclr(ic->ic_modecaps, mode))
   continue;
  src = &parms.params[mode];
  dst = &vap->iv_txparms[mode];
  rs = &ic->ic_sup_rates[mode];
  rs_ht = &ic->ic_sup_htrates;
  is11n = (mode == IEEE80211_MODE_11NA ||
    mode == IEEE80211_MODE_11NG);
  if (src->ucastrate != dst->ucastrate) {
   if (!checkrate(rs, src->ucastrate) &&
       (!is11n || !checkmcs(rs_ht, src->ucastrate)))
    return EINVAL;
   changed++;
  }
  if (src->mcastrate != dst->mcastrate) {
   if (!checkrate(rs, src->mcastrate) &&
       (!is11n || !checkmcs(rs_ht, src->mcastrate)))
    return EINVAL;
   changed++;
  }
  if (src->mgmtrate != dst->mgmtrate) {
   if (!checkrate(rs, src->mgmtrate) &&
       (!is11n || !checkmcs(rs_ht, src->mgmtrate)))
    return EINVAL;
   changed++;
  }
  if (src->maxretry != dst->maxretry)
   changed++;
 }
 if (changed) {




  for (mode = IEEE80211_MODE_11A; mode < nmodes; mode++) {
   if (isset(ic->ic_modecaps, mode))
    vap->iv_txparms[mode] = parms.params[mode];
  }


  return ENETRESET;
 }
 return 0;
}

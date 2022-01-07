
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ieee80211vap {size_t iv_state; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_flags; int ic_csa_count; int ic_csa_mode; int ic_csa_newchan; TYPE_1__* ic_bsschan; } ;
struct ieee80211_frame {int dummy; } ;
struct ieee80211_csa_ie {int csa_mode; int csa_count; int csa_newchan; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_2__ {int ic_flags; } ;


 int IEEE80211_CHAN_ALL ;
 int IEEE80211_CHAN_ALLTURBO ;
 int IEEE80211_CSA_COUNT_MIN ;
 int IEEE80211_DISCARD_IE (struct ieee80211vap*,int,struct ieee80211_frame const*,char*,char*,int,...) ;
 int IEEE80211_F_CSAPENDING ;
 int IEEE80211_LOCK (struct ieee80211com*) ;
 int IEEE80211_MSG_DOTH ;
 int IEEE80211_MSG_ELEMID ;
 int IEEE80211_NOTE_FRAME (struct ieee80211vap*,int,struct ieee80211_frame const*,char*,int,int ,int,int,int ,int) ;
 size_t IEEE80211_S_RUN ;
 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int KASSERT (int,char*) ;
 int ieee80211_chan2ieee (struct ieee80211com*,int ) ;
 int ieee80211_csa_cancelswitch (struct ieee80211com*) ;
 int ieee80211_csa_completeswitch (struct ieee80211com*) ;
 int ieee80211_csa_startswitch (struct ieee80211com*,struct ieee80211_channel*,int,int) ;
 struct ieee80211_channel* ieee80211_find_channel_byieee (struct ieee80211com*,int ,int) ;
 int * ieee80211_state_name ;

__attribute__((used)) static void
ieee80211_parse_csaparams(struct ieee80211vap *vap, uint8_t *frm,
 const struct ieee80211_frame *wh)
{
 struct ieee80211com *ic = vap->iv_ic;
 const struct ieee80211_csa_ie *csa =
     (const struct ieee80211_csa_ie *) frm;

 KASSERT(vap->iv_state >= IEEE80211_S_RUN,
     ("state %s", ieee80211_state_name[vap->iv_state]));

 if (csa->csa_mode > 1) {
  IEEE80211_DISCARD_IE(vap,
      IEEE80211_MSG_ELEMID | IEEE80211_MSG_DOTH,
      wh, "CSA", "invalid mode %u", csa->csa_mode);
  return;
 }
 IEEE80211_LOCK(ic);
 if ((ic->ic_flags & IEEE80211_F_CSAPENDING) == 0) {
  struct ieee80211_channel *c =
      ieee80211_find_channel_byieee(ic, csa->csa_newchan,
   (ic->ic_bsschan->ic_flags & IEEE80211_CHAN_ALLTURBO));
  if (c == ((void*)0)) {
   c = ieee80211_find_channel_byieee(ic,
       csa->csa_newchan,
       (ic->ic_bsschan->ic_flags & IEEE80211_CHAN_ALL));
   if (c == ((void*)0)) {
    IEEE80211_DISCARD_IE(vap,
        IEEE80211_MSG_ELEMID | IEEE80211_MSG_DOTH,
        wh, "CSA", "invalid channel %u",
        csa->csa_newchan);
    goto done;
   }
  }
  ieee80211_csa_startswitch(ic, c, csa->csa_mode, csa->csa_count);
 } else {
  if (!(csa->csa_count < ic->ic_csa_count &&
        csa->csa_mode == ic->ic_csa_mode &&
        csa->csa_newchan == ieee80211_chan2ieee(ic, ic->ic_csa_newchan))) {
   IEEE80211_NOTE_FRAME(vap, IEEE80211_MSG_DOTH, wh,
       "CSA ie mismatch, initial ie <%d,%d,%d>, "
       "this ie <%d,%d,%d>", ic->ic_csa_mode,
       ic->ic_csa_newchan, ic->ic_csa_count,
       csa->csa_mode, csa->csa_newchan, csa->csa_count);
   ieee80211_csa_cancelswitch(ic);
  } else {
   if (csa->csa_count <= 1)
    ieee80211_csa_completeswitch(ic);
   else
    ic->ic_csa_count = csa->csa_count;
  }
 }
done:
 IEEE80211_UNLOCK(ic);
}

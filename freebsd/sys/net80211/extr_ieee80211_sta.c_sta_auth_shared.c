
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {int is_rx_authfail_code; int is_rx_bad_auth; int is_rx_auth_fail; } ;
struct ieee80211vap {int iv_flags; scalar_t__ iv_state; TYPE_1__ iv_stats; } ;
struct ieee80211_node {int ni_authmode; int * ni_challenge; int ni_macaddr; struct ieee80211vap* ni_vap; } ;
struct ieee80211_frame {int dummy; } ;


 int IEEE80211_AUTH_AUTO ;
 int IEEE80211_AUTH_SHARED ;



 int IEEE80211_CHALLENGE_LEN ;
 int IEEE80211_DISCARD (struct ieee80211vap*,int,struct ieee80211_frame*,char*,char*,int) ;
 int IEEE80211_DISCARD_MAC (struct ieee80211vap*,int,int ,char*,char*,...) ;
 int IEEE80211_ELEMID_CHALLENGE ;
 int IEEE80211_FC0_SUBTYPE_AUTH ;
 int IEEE80211_FREE (int *,int ) ;
 int IEEE80211_F_PRIVACY ;
 int IEEE80211_MSG_AUTH ;
 int IEEE80211_MSG_DEBUG ;
 int IEEE80211_NOTE_FRAME (struct ieee80211vap*,int,struct ieee80211_frame*,char*,int) ;
 int IEEE80211_SCAN_FAIL_STATUS ;
 int IEEE80211_SEND_MGMT (struct ieee80211_node*,int ,int) ;
 int IEEE80211_S_ASSOC ;
 scalar_t__ IEEE80211_S_AUTH ;
 int IEEE80211_S_SCAN ;
 int M_80211_NODE ;
 int ieee80211_alloc_challenge (struct ieee80211_node*) ;
 int ieee80211_new_state (struct ieee80211vap*,int ,int ) ;
 int memcpy (int *,int*,int) ;

__attribute__((used)) static void
sta_auth_shared(struct ieee80211_node *ni, struct ieee80211_frame *wh,
    uint8_t *frm, uint8_t *efrm, int rssi, int nf,
    uint16_t seq, uint16_t status)
{
 struct ieee80211vap *vap = ni->ni_vap;
 uint8_t *challenge;
 if ((vap->iv_flags & IEEE80211_F_PRIVACY) == 0) {
  IEEE80211_DISCARD_MAC(vap, IEEE80211_MSG_AUTH,
      ni->ni_macaddr, "shared key auth",
      "%s", " PRIVACY is disabled");
  goto bad;
 }





 if (ni->ni_authmode != IEEE80211_AUTH_AUTO &&
     ni->ni_authmode != IEEE80211_AUTH_SHARED) {
  IEEE80211_DISCARD_MAC(vap, IEEE80211_MSG_AUTH,
      ni->ni_macaddr, "shared key auth",
      "bad sta auth mode %u", ni->ni_authmode);
  vap->iv_stats.is_rx_bad_auth++;
  goto bad;
 }

 challenge = ((void*)0);
 if (frm + 1 < efrm) {
  if ((frm[1] + 2) > (efrm - frm)) {
   IEEE80211_DISCARD_MAC(vap, IEEE80211_MSG_AUTH,
       ni->ni_macaddr, "shared key auth",
       "ie %d/%d too long",
       frm[0], (frm[1] + 2) - (efrm - frm));
   vap->iv_stats.is_rx_bad_auth++;
   goto bad;
  }
  if (*frm == IEEE80211_ELEMID_CHALLENGE)
   challenge = frm;
  frm += frm[1] + 2;
 }
 switch (seq) {
 case 130:
 case 128:
  if (challenge == ((void*)0)) {
   IEEE80211_DISCARD_MAC(vap, IEEE80211_MSG_AUTH,
       ni->ni_macaddr, "shared key auth",
       "%s", "no challenge");
   vap->iv_stats.is_rx_bad_auth++;
   goto bad;
  }
  if (challenge[1] != IEEE80211_CHALLENGE_LEN) {
   IEEE80211_DISCARD_MAC(vap, IEEE80211_MSG_AUTH,
       ni->ni_macaddr, "shared key auth",
       "bad challenge len %d", challenge[1]);
   vap->iv_stats.is_rx_bad_auth++;
   goto bad;
  }
 default:
  break;
 }
 if (vap->iv_state != IEEE80211_S_AUTH)
  return;
 switch (seq) {
 case 129:
  if (ni->ni_challenge != ((void*)0)) {
   IEEE80211_FREE(ni->ni_challenge, M_80211_NODE);
   ni->ni_challenge = ((void*)0);
  }
  if (status != 0) {
   IEEE80211_NOTE_FRAME(vap,
       IEEE80211_MSG_DEBUG | IEEE80211_MSG_AUTH, wh,
       "shared key auth failed (reason %d)", status);
   vap->iv_stats.is_rx_auth_fail++;
   vap->iv_stats.is_rx_authfail_code = status;
   return;
  }
  ieee80211_new_state(vap, IEEE80211_S_ASSOC, 0);
  break;
 case 130:
  if (!ieee80211_alloc_challenge(ni))
   return;

  memcpy(ni->ni_challenge, &challenge[2], challenge[1]);
  IEEE80211_SEND_MGMT(ni,
   IEEE80211_FC0_SUBTYPE_AUTH, seq + 1);
  break;
 default:
  IEEE80211_DISCARD(vap, IEEE80211_MSG_AUTH,
      wh, "shared key auth", "bad seq %d", seq);
  vap->iv_stats.is_rx_bad_auth++;
  return;
 }
 return;
bad:





 if (vap->iv_state == IEEE80211_S_AUTH)
  ieee80211_new_state(vap, IEEE80211_S_SCAN,
      IEEE80211_SCAN_FAIL_STATUS);
}

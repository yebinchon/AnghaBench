
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int is_rx_bad_auth; int is_rx_auth_fail; } ;
struct ieee80211vap {scalar_t__ iv_state; int iv_flags; TYPE_2__ iv_stats; struct ieee80211_node* iv_bss; TYPE_1__* iv_acl; } ;
struct ieee80211_node {int ni_authmode; int ni_flags; int ni_noise; int ni_macaddr; int * ni_challenge; int ni_avgrssi; struct ieee80211vap* ni_vap; } ;
struct ieee80211_frame {int i_addr2; } ;
struct TYPE_3__ {int (* iac_getpolicy ) (struct ieee80211vap*) ;} ;


 int IEEE80211_AUTH_AUTO ;
 int IEEE80211_AUTH_SHARED ;



 int IEEE80211_CHALLENGE_LEN ;
 int IEEE80211_DISCARD_MAC (struct ieee80211vap*,int,int ,char*,char*,...) ;
 int IEEE80211_ELEMID_CHALLENGE ;
 int IEEE80211_FC0_SUBTYPE_AUTH ;
 int IEEE80211_F_PRIVACY ;
 int IEEE80211_MACCMD_POLICY_RADIUS ;
 int IEEE80211_MSG_ACL ;
 int IEEE80211_MSG_AUTH ;
 int IEEE80211_MSG_DEBUG ;
 int IEEE80211_NODE_AREF ;
 int IEEE80211_NODE_ASSOCID ;
 int IEEE80211_NOTE (struct ieee80211vap*,int,struct ieee80211_node*,char*,char*) ;
 int IEEE80211_NOTE_MAC (struct ieee80211vap*,int,int ,char*,char*) ;
 int IEEE80211_RSSI_LPF (int ,int) ;
 int IEEE80211_SEND_MGMT (struct ieee80211_node*,int ,int) ;
 int IEEE80211_STATUS_ALG ;
 int IEEE80211_STATUS_CHALLENGE ;
 int IEEE80211_STATUS_SEQUENCE ;
 scalar_t__ IEEE80211_S_RUN ;
 int KASSERT (int,char*) ;
 int get_random_bytes (int *,int) ;
 int ieee80211_alloc_challenge (struct ieee80211_node*) ;
 struct ieee80211_node* ieee80211_dup_bss (struct ieee80211vap*,int ) ;
 int ieee80211_node_authorize (struct ieee80211_node*) ;
 int ieee80211_notify_node_auth (struct ieee80211_node*) ;
 int ieee80211_ref_node (struct ieee80211_node*) ;
 int ieee80211_send_error (struct ieee80211_node*,int ,int ,int) ;
 int memcmp (int *,int*,int) ;
 int stub1 (struct ieee80211vap*) ;

__attribute__((used)) static void
hostap_auth_shared(struct ieee80211_node *ni, struct ieee80211_frame *wh,
    uint8_t *frm, uint8_t *efrm, int rssi, int nf,
    uint16_t seq, uint16_t status)
{
 struct ieee80211vap *vap = ni->ni_vap;
 uint8_t *challenge;
 int allocbs, estatus;

 KASSERT(vap->iv_state == IEEE80211_S_RUN, ("state %d", vap->iv_state));
 if ((vap->iv_flags & IEEE80211_F_PRIVACY) == 0) {
  IEEE80211_DISCARD_MAC(vap, IEEE80211_MSG_AUTH,
      ni->ni_macaddr, "shared key auth",
      "%s", " PRIVACY is disabled");
  estatus = IEEE80211_STATUS_ALG;
  goto bad;
 }





 if (ni->ni_authmode != IEEE80211_AUTH_AUTO &&
     ni->ni_authmode != IEEE80211_AUTH_SHARED) {
  IEEE80211_DISCARD_MAC(vap, IEEE80211_MSG_AUTH,
      ni->ni_macaddr, "shared key auth",
      "bad sta auth mode %u", ni->ni_authmode);
  vap->iv_stats.is_rx_bad_auth++;
  estatus = IEEE80211_STATUS_ALG;
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
   estatus = IEEE80211_STATUS_CHALLENGE;
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
   estatus = IEEE80211_STATUS_CHALLENGE;
   goto bad;
  }
  if (challenge[1] != IEEE80211_CHALLENGE_LEN) {
   IEEE80211_DISCARD_MAC(vap, IEEE80211_MSG_AUTH,
       ni->ni_macaddr, "shared key auth",
       "bad challenge len %d", challenge[1]);
   vap->iv_stats.is_rx_bad_auth++;
   estatus = IEEE80211_STATUS_CHALLENGE;
   goto bad;
  }
 default:
  break;
 }
 switch (seq) {
 case 129:
  if (ni == vap->iv_bss) {
   ni = ieee80211_dup_bss(vap, wh->i_addr2);
   if (ni == ((void*)0)) {

    return;
   }
   allocbs = 1;
  } else {
   if ((ni->ni_flags & IEEE80211_NODE_AREF) == 0)
    (void) ieee80211_ref_node(ni);
   allocbs = 0;
  }





  ni->ni_flags |= IEEE80211_NODE_AREF;




  ni->ni_flags |= IEEE80211_NODE_ASSOCID;
  IEEE80211_RSSI_LPF(ni->ni_avgrssi, rssi);
  ni->ni_noise = nf;
  if (!ieee80211_alloc_challenge(ni)) {

   return;
  }
  get_random_bytes(ni->ni_challenge,
   IEEE80211_CHALLENGE_LEN);
  IEEE80211_NOTE(vap, IEEE80211_MSG_DEBUG | IEEE80211_MSG_AUTH,
      ni, "shared key %sauth request", allocbs ? "" : "re");







  if (vap->iv_acl != ((void*)0) &&
      vap->iv_acl->iac_getpolicy(vap) == IEEE80211_MACCMD_POLICY_RADIUS) {
   IEEE80211_NOTE_MAC(vap,
       IEEE80211_MSG_AUTH | IEEE80211_MSG_ACL,
       ni->ni_macaddr,
       "%s", "station authentication defered (radius acl)");
   ieee80211_notify_node_auth(ni);
   return;
  }
  break;
 case 128:
  if (ni == vap->iv_bss) {
   IEEE80211_DISCARD_MAC(vap, IEEE80211_MSG_AUTH,
       ni->ni_macaddr, "shared key response",
       "%s", "unknown station");

   return;
  }
  if (ni->ni_challenge == ((void*)0)) {
   IEEE80211_DISCARD_MAC(vap, IEEE80211_MSG_AUTH,
       ni->ni_macaddr, "shared key response",
       "%s", "no challenge recorded");
   vap->iv_stats.is_rx_bad_auth++;
   estatus = IEEE80211_STATUS_CHALLENGE;
   goto bad;
  }
  if (memcmp(ni->ni_challenge, &challenge[2],
      challenge[1]) != 0) {
   IEEE80211_DISCARD_MAC(vap, IEEE80211_MSG_AUTH,
       ni->ni_macaddr, "shared key response",
       "%s", "challenge mismatch");
   vap->iv_stats.is_rx_auth_fail++;
   estatus = IEEE80211_STATUS_CHALLENGE;
   goto bad;
  }
  IEEE80211_NOTE(vap, IEEE80211_MSG_DEBUG | IEEE80211_MSG_AUTH,
      ni, "%s", "station authenticated (shared key)");
  ieee80211_node_authorize(ni);
  break;
 default:
  IEEE80211_DISCARD_MAC(vap, IEEE80211_MSG_AUTH,
      ni->ni_macaddr, "shared key auth",
      "bad seq %d", seq);
  vap->iv_stats.is_rx_bad_auth++;
  estatus = IEEE80211_STATUS_SEQUENCE;
  goto bad;
 }
 IEEE80211_SEND_MGMT(ni, IEEE80211_FC0_SUBTYPE_AUTH, seq + 1);
 return;
bad:




 ieee80211_send_error(ni, wh->i_addr2,
     IEEE80211_FC0_SUBTYPE_AUTH,
     (seq + 1) | (estatus<<16));
}

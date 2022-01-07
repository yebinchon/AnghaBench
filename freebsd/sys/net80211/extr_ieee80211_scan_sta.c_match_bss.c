
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {scalar_t__ tdma_ie; } ;
struct ieee80211_scan_entry {int se_capinfo; scalar_t__* se_meshid; scalar_t__* se_cc; int se_rssi; int * se_ssid; TYPE_3__* se_chan; int se_bssid; int se_macaddr; TYPE_1__ se_ies; } ;
struct sta_entry {scalar_t__ se_fails; scalar_t__ se_notseen; int se_flags; struct ieee80211_scan_entry base; } ;
struct ieee80211vap {size_t iv_des_mode; scalar_t__ iv_opmode; int iv_caps; int iv_flags_ext; int iv_flags; int iv_des_bssid; struct ieee80211_mesh_state* iv_mesh; struct ieee80211_tdma_state* iv_tdma; struct ieee80211com* iv_ic; } ;
struct TYPE_10__ {scalar_t__ country; int isocc; } ;
struct ieee80211com {TYPE_2__ ic_regdomain; int ic_chan_active; } ;
struct ieee80211_tdma_state {scalar_t__ tdma_version; } ;
struct ieee80211_tdma_param {scalar_t__ tdma_version; scalar_t__ tdma_slot; } ;
struct ieee80211_scan_state {int ss_ssid; int ss_nssid; } ;
struct ieee80211_mesh_state {scalar_t__ ms_idlen; int ms_id; } ;
struct TYPE_11__ {int ic_flags; } ;


 scalar_t__ CTRY_DEFAULT ;
 int IEEE80211_ADDR_EQ (int ,int ) ;
 int IEEE80211_CAPINFO_ESS ;
 int IEEE80211_CAPINFO_IBSS ;
 int IEEE80211_CAPINFO_PRIVACY ;
 int IEEE80211_CHAN_ALLTURBO ;
 int IEEE80211_C_TDMA ;
 scalar_t__ IEEE80211_ELEMID_MESHID ;
 int IEEE80211_FEXT_DOTD ;
 int IEEE80211_F_DESBSSID ;
 int IEEE80211_F_PRIVACY ;
 scalar_t__ IEEE80211_IS_CHAN_11D (TYPE_3__*) ;
 scalar_t__ IEEE80211_IS_CHAN_ANYG (TYPE_3__*) ;
 size_t IEEE80211_MODE_11B ;
 size_t IEEE80211_MODE_AUTO ;
 scalar_t__ IEEE80211_M_AHDEMO ;
 scalar_t__ IEEE80211_M_IBSS ;
 scalar_t__ IEEE80211_M_MBSS ;
 int IEEE80211_RATE_BASIC ;
 int IEEE80211_RATE_VAL ;
 int MATCH_BSSID ;
 int MATCH_CAPINFO ;
 int MATCH_CC ;
 int MATCH_CHANNEL ;
 int MATCH_FAILS ;
 int MATCH_MESHID ;
 int MATCH_MESH_NOID ;
 int MATCH_NOTSEEN ;
 int MATCH_PRIVACY ;
 int MATCH_RATE ;
 int MATCH_RSSI ;
 int MATCH_SSID ;
 int MATCH_TDMA_LOCAL ;
 int MATCH_TDMA_NOIE ;
 int MATCH_TDMA_NOSLOT ;
 int MATCH_TDMA_NOTMASTER ;
 int MATCH_TDMA_VERSION ;
 int STA_DEMOTE11B ;
 scalar_t__ STA_FAILS_MAX ;
 scalar_t__ STA_PURGE_SCANS ;
 int STA_RSSI_MIN ;
 int* chanflags ;
 int check_rate (struct ieee80211vap*,TYPE_3__*,struct ieee80211_scan_entry*) ;
 TYPE_3__* demote11b (struct ieee80211vap*,TYPE_3__*) ;
 char* ether_sprintf (int ) ;
 int ieee80211_chan2ieee (struct ieee80211com*,TYPE_3__*) ;
 scalar_t__ ieee80211_local_address (int ) ;
 scalar_t__ ieee80211_msg (struct ieee80211vap*,int) ;
 int ieee80211_print_essid (int *,int ) ;
 scalar_t__ isclr (int ,int) ;
 int isocmp (scalar_t__*,int ) ;
 scalar_t__ match_id (scalar_t__*,int ,scalar_t__) ;
 int match_ssid (int *,int ,int ) ;
 int printf (char*,...) ;
 scalar_t__ tdma_isfull (struct ieee80211_tdma_param const*) ;

__attribute__((used)) static int
match_bss(struct ieee80211vap *vap,
 const struct ieee80211_scan_state *ss, struct sta_entry *se0,
 int debug)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct ieee80211_scan_entry *se = &se0->base;
        uint8_t rate;
        int fail;

 fail = 0;
 if (isclr(ic->ic_chan_active, ieee80211_chan2ieee(ic, se->se_chan)))
  fail |= MATCH_CHANNEL;







 if (vap->iv_des_mode != IEEE80211_MODE_AUTO &&
     (se->se_chan->ic_flags & IEEE80211_CHAN_ALLTURBO) !=
     chanflags[vap->iv_des_mode])
  fail |= MATCH_CHANNEL;
 if (vap->iv_opmode == IEEE80211_M_IBSS) {
  if ((se->se_capinfo & IEEE80211_CAPINFO_IBSS) == 0)
   fail |= MATCH_CAPINFO;
 } else {
  if ((se->se_capinfo & IEEE80211_CAPINFO_ESS) == 0)
   fail |= MATCH_CAPINFO;
  if ((IEEE80211_IS_CHAN_11D(se->se_chan) ||
      (vap->iv_flags_ext & IEEE80211_FEXT_DOTD)) &&
      se->se_cc[0] != 0 &&
      (ic->ic_regdomain.country == CTRY_DEFAULT ||
       !isocmp(se->se_cc, ic->ic_regdomain.isocc)))
   fail |= MATCH_CC;
 }
 if (vap->iv_flags & IEEE80211_F_PRIVACY) {
  if ((se->se_capinfo & IEEE80211_CAPINFO_PRIVACY) == 0)
   fail |= MATCH_PRIVACY;
 } else {

  if (se->se_capinfo & IEEE80211_CAPINFO_PRIVACY)
   fail |= MATCH_PRIVACY;
 }
 se0->se_flags &= ~STA_DEMOTE11B;
 rate = check_rate(vap, se->se_chan, se);
 if (rate & IEEE80211_RATE_BASIC) {
  fail |= MATCH_RATE;





  if (IEEE80211_IS_CHAN_ANYG(se->se_chan)) {
   rate = check_rate(vap, demote11b(vap, se->se_chan), se);
   if ((rate & IEEE80211_RATE_BASIC) == 0) {
    fail &= ~MATCH_RATE;
    se0->se_flags |= STA_DEMOTE11B;
   }
  }
 } else if (rate < 2*24) {
  if (!(vap->iv_des_mode == IEEE80211_MODE_AUTO ||
        vap->iv_des_mode == IEEE80211_MODE_11B))
   fail |= MATCH_RATE;
  else
   se0->se_flags |= STA_DEMOTE11B;
 }
 if (ss->ss_nssid != 0 &&
     !match_ssid(se->se_ssid, ss->ss_nssid, ss->ss_ssid))
  fail |= MATCH_SSID;
 if ((vap->iv_flags & IEEE80211_F_DESBSSID) &&
     !IEEE80211_ADDR_EQ(vap->iv_des_bssid, se->se_bssid))
  fail |= MATCH_BSSID;
 if (se0->se_fails >= STA_FAILS_MAX)
  fail |= MATCH_FAILS;
 if (se0->se_notseen >= STA_PURGE_SCANS)
  fail |= MATCH_NOTSEEN;
 if (se->se_rssi < STA_RSSI_MIN)
  fail |= MATCH_RSSI;
 return fail;
}

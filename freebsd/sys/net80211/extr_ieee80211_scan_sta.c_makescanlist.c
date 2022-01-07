
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scanlist {int mode; int count; int * list; } ;
struct ieee80211vap {int const iv_des_mode; int iv_flags; } ;
struct ieee80211_scan_state {scalar_t__ ss_last; } ;
typedef enum ieee80211_phymode { ____Placeholder_ieee80211_phymode } ieee80211_phymode ;


 int IEEE80211_F_XR ;


 int const IEEE80211_MODE_11G ;
 int IEEE80211_MODE_11NA ;
 int const IEEE80211_MODE_11NG ;
 int const IEEE80211_MODE_AUTO ;
 int IEEE80211_MODE_STURBO_A ;
 int IEEE80211_MODE_TURBO_A ;
 int IEEE80211_MODE_TURBO_G ;
 int const IEEE80211_MODE_VHT_2GHZ ;
 int IEEE80211_MODE_VHT_5GHZ ;
 int add_channels (struct ieee80211vap*,struct ieee80211_scan_state*,int,int *,int ) ;
 int sweepchannels (struct ieee80211_scan_state*,struct ieee80211vap*,struct scanlist const*) ;

__attribute__((used)) static void
makescanlist(struct ieee80211_scan_state *ss, struct ieee80211vap *vap,
 const struct scanlist table[])
{
 const struct scanlist *scan;
 enum ieee80211_phymode mode;

 ss->ss_last = 0;





 for (scan = table; scan->list != ((void*)0); scan++) {
  mode = scan->mode;

  switch (mode) {
  case 128:
   if (vap->iv_des_mode == 128)
    break;
   if (vap->iv_des_mode == IEEE80211_MODE_AUTO ||
       vap->iv_des_mode == IEEE80211_MODE_11G ||
       vap->iv_des_mode == IEEE80211_MODE_11NG ||
       vap->iv_des_mode == IEEE80211_MODE_VHT_2GHZ) {
    mode = vap->iv_des_mode;
    break;
   }

   continue;
  case 129:

   if (vap->iv_des_mode == IEEE80211_MODE_11NA ||
       vap->iv_des_mode == IEEE80211_MODE_VHT_5GHZ) {
    mode = vap->iv_des_mode;
    break;
   }


  default:




   if (vap->iv_des_mode != IEEE80211_MODE_AUTO &&
       vap->iv_des_mode != mode)
    continue;
  }
  add_channels(vap, ss, mode, scan->list, scan->count);
 }





 sweepchannels(ss, vap, table);
}

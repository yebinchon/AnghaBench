
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {scalar_t__ ic_nonerpsta; int ic_flags_ext; int ic_caps; int ic_flags; } ;


 int IEEE80211_C_SHPREAMBLE ;
 int IEEE80211_FEXT_NONERP_PR ;
 int IEEE80211_F_SHPREAMBLE ;
 int IEEE80211_F_USEBARKER ;
 int IEEE80211_F_USEPROT ;
 int KASSERT (int,char*) ;
 int ieee80211_notify_erp_locked (struct ieee80211com*) ;

__attribute__((used)) static void
disable_protection(struct ieee80211com *ic)
{
 KASSERT(ic->ic_nonerpsta == 0 &&
     (ic->ic_flags_ext & IEEE80211_FEXT_NONERP_PR) == 0,
    ("%d non ERP stations, flags 0x%x", ic->ic_nonerpsta,
    ic->ic_flags_ext));

 ic->ic_flags &= ~IEEE80211_F_USEPROT;

 if (ic->ic_caps & IEEE80211_C_SHPREAMBLE) {
  ic->ic_flags |= IEEE80211_F_SHPREAMBLE;
  ic->ic_flags &= ~IEEE80211_F_USEBARKER;
 }
 ieee80211_notify_erp_locked(ic);
}

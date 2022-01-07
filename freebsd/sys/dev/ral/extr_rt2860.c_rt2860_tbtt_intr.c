
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {scalar_t__ ic_opmode; scalar_t__ ic_dtim_count; scalar_t__ ic_dtim_period; int ic_flags; } ;
struct rt2860_softc {int sc_ic_flags; struct ieee80211com sc_ic; } ;


 int IEEE80211_F_USEPROT ;
 scalar_t__ IEEE80211_M_HOSTAP ;
 int ieee80211_notify_dtim (struct ieee80211com*) ;
 int rt2860_setup_beacon (struct rt2860_softc*) ;
 int rt2860_updateprot (struct rt2860_softc*) ;

__attribute__((used)) static void
rt2860_tbtt_intr(struct rt2860_softc *sc)
{
}

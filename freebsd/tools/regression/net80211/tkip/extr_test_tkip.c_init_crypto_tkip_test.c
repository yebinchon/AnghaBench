
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vap ;
struct ifnet {int iv_debug; struct ifnet* iv_ifp; struct ifnet* iv_ic; int if_xname; } ;
struct ieee80211vap {int iv_debug; struct ieee80211vap* iv_ifp; struct ieee80211vap* iv_ic; int if_xname; } ;
struct ieee80211com {int iv_debug; struct ieee80211com* iv_ifp; struct ieee80211com* iv_ic; int if_xname; } ;
typedef int ifp ;
typedef int ic ;


 int IEEE80211_MSG_CRYPTO ;
 scalar_t__ debug ;
 int ieee80211_crypto_attach (struct ifnet*) ;
 int ieee80211_crypto_detach (struct ifnet*) ;
 int ieee80211_crypto_vattach (struct ifnet*) ;
 int ieee80211_crypto_vdetach (struct ifnet*) ;
 int memset (struct ifnet*,int ,int) ;
 int nitems (int *) ;
 int printf (char*,int,int) ;
 scalar_t__ runtest (struct ifnet*,int *) ;
 int strncpy (int ,char*,int) ;
 int tests ;
 int * tkiptests ;

__attribute__((used)) static int
init_crypto_tkip_test(void)
{
 struct ieee80211com ic;
 struct ieee80211vap vap;
 struct ifnet ifp;
 int i, pass, total;

 memset(&ic, 0, sizeof(ic));
 memset(&vap, 0, sizeof(vap));
 memset(&ifp, 0, sizeof(ifp));

 ieee80211_crypto_attach(&ic);


 strncpy(ifp.if_xname, "test_ccmp", sizeof(ifp.if_xname));
 vap.iv_ic = &ic;
 vap.iv_ifp = &ifp;
 if (debug)
  vap.iv_debug = IEEE80211_MSG_CRYPTO;
 ieee80211_crypto_vattach(&vap);

 pass = 0;
 total = 0;
 for (i = 0; i < nitems(tkiptests); i++)
  if (tests & (1<<i)) {
   total++;
   pass += runtest(&vap, &tkiptests[i]);
  }
 printf("%u of %u 802.11i TKIP test vectors passed\n", pass, total);

 ieee80211_crypto_vdetach(&vap);
 ieee80211_crypto_detach(&ic);

 return (pass == total ? 0 : -1);
}

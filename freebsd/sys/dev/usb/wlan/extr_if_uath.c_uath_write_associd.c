
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_vaps; } ;
struct uath_softc {struct ieee80211com sc_ic; } ;
struct uath_cmd_set_associd {int bssid; void* timoffset; void* associd; void* defaultrateix; } ;
struct ieee80211vap {int iv_bss; } ;
struct ieee80211_node {int ni_associd; int ni_bssid; } ;
typedef int associd ;


 int IEEE80211_ADDR_COPY (int ,int ) ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int WDCMSG_WRITE_ASSOCID ;
 void* htobe32 (int) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 struct ieee80211_node* ieee80211_ref_node (int ) ;
 int memset (struct uath_cmd_set_associd*,int ,int) ;
 int uath_cmd_write (struct uath_softc*,int ,struct uath_cmd_set_associd*,int,int ) ;

__attribute__((used)) static int
uath_write_associd(struct uath_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);
 struct ieee80211_node *ni;
 struct uath_cmd_set_associd associd;

 ni = ieee80211_ref_node(vap->iv_bss);
 memset(&associd, 0, sizeof(associd));
 associd.defaultrateix = htobe32(1);
 associd.associd = htobe32(ni->ni_associd);
 associd.timoffset = htobe32(0x3b);
 IEEE80211_ADDR_COPY(associd.bssid, ni->ni_bssid);
 ieee80211_free_node(ni);
 return uath_cmd_write(sc, WDCMSG_WRITE_ASSOCID, &associd,
     sizeof associd, 0);
}

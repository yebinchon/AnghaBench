
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ieee80211com {int ic_vaps; } ;
struct uath_softc {struct ieee80211com sc_ic; } ;
struct uath_cmd_rateset {int dummy; } ;
struct TYPE_3__ {int * set; int length; } ;
struct TYPE_4__ {void* wlanmode; TYPE_1__ rateset; } ;
struct uath_cmd_create_connection {TYPE_2__ connattr; void* size; void* bssid; void* connid; } ;
struct ieee80211vap {int iv_bss; } ;
struct ieee80211_rateset {int rs_nrates; int rs_rates; } ;
struct ieee80211_node {int ni_chan; struct ieee80211_rateset ni_rates; } ;
typedef int create ;


 scalar_t__ IEEE80211_IS_CHAN_A (int ) ;
 scalar_t__ IEEE80211_IS_CHAN_ANYG (int ) ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int WDCMSG_CREATE_CONNECTION ;
 int WLAN_MODE_11a ;
 int WLAN_MODE_11b ;
 int WLAN_MODE_11g ;
 int bcopy (int ,int *,int ) ;
 void* htobe32 (int) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 struct ieee80211_node* ieee80211_ref_node (int ) ;
 int memset (struct uath_cmd_create_connection*,int ,int) ;
 int uath_cmd_write (struct uath_softc*,int ,struct uath_cmd_create_connection*,int,int ) ;

__attribute__((used)) static int
uath_create_connection(struct uath_softc *sc, uint32_t connid)
{
 const struct ieee80211_rateset *rs;
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);
 struct ieee80211_node *ni;
 struct uath_cmd_create_connection create;

 ni = ieee80211_ref_node(vap->iv_bss);
 memset(&create, 0, sizeof(create));
 create.connid = htobe32(connid);
 create.bssid = htobe32(0);

 create.size = htobe32(sizeof(struct uath_cmd_rateset));

 rs = &ni->ni_rates;
 create.connattr.rateset.length = rs->rs_nrates;
 bcopy(rs->rs_rates, &create.connattr.rateset.set[0],
     rs->rs_nrates);


 if (IEEE80211_IS_CHAN_A(ni->ni_chan))
  create.connattr.wlanmode = htobe32(WLAN_MODE_11a);
 else if (IEEE80211_IS_CHAN_ANYG(ni->ni_chan))
  create.connattr.wlanmode = htobe32(WLAN_MODE_11g);
 else
  create.connattr.wlanmode = htobe32(WLAN_MODE_11b);
 ieee80211_free_node(ni);

 return uath_cmd_write(sc, WDCMSG_CREATE_CONNECTION, &create,
     sizeof create, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211com {int ic_vaps; } ;
struct iwi_softc {int sc_state_timer; int sc_disassoctask; int sc_dev; int fw_state; int flags; int sc_monitortask; struct ieee80211com sc_ic; } ;
struct iwi_notif_scan_complete {int status; int nchan; } ;
struct iwi_notif_scan_channel {int nchan; } ;
struct iwi_notif_beacon_state {int number; int state; } ;
struct iwi_notif_authentication {int state; } ;
struct iwi_notif_association {int state; } ;
struct iwi_notif {int type; int len; int flags; } ;
struct TYPE_2__ {int is_beacon_miss; int is_rx_disassoc; int is_rx_auth_fail; int is_rx_deauth; } ;
struct ieee80211vap {TYPE_1__ iv_stats; int iv_bmissthreshold; int iv_state; int iv_opmode; } ;
struct ieee80211_frame {int dummy; } ;


 int DPRINTF (char*) ;
 int DPRINTFN (int,char*) ;
 int IEEE80211_M_MONITOR ;
 int IEEE80211_S_ASSOC ;
 int IEEE80211_S_RUN ;
 int IEEE80211_S_SCAN ;
 int IWI_BEACON_MISS ;
 int IWI_FLAG_ASSOCIATED ;


 int const IWI_FW_SCANNING ;
 int IWI_SCAN_COMPLETED ;
 int IWI_STATE_END (struct iwi_softc*,int const) ;
 struct ieee80211vap* TAILQ_FIRST (int *) ;
 int device_printf (int ,char*,int ) ;
 int ieee80211_ieee2mhz (int ,int ) ;
 int ieee80211_new_state (struct ieee80211vap*,int ,int) ;
 int ieee80211_runtask (struct ieee80211com*,int *) ;
 int ieee80211_scan_next (struct ieee80211vap*) ;
 int iwi_checkforqos (struct ieee80211vap*,struct ieee80211_frame const*,int ) ;
 int iwi_notif_link_quality (struct iwi_softc*,struct iwi_notif*) ;
 int le16toh (int ) ;
 int le32toh (int ) ;

__attribute__((used)) static void
iwi_notification_intr(struct iwi_softc *sc, struct iwi_notif *notif)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211vap *vap = TAILQ_FIRST(&ic->ic_vaps);
 struct iwi_notif_scan_channel *chan;
 struct iwi_notif_scan_complete *scan;
 struct iwi_notif_authentication *auth;
 struct iwi_notif_association *assoc;
 struct iwi_notif_beacon_state *beacon;

 switch (notif->type) {
 case 129:
  chan = (struct iwi_notif_scan_channel *)(notif + 1);

  DPRINTFN(3, ("Scan of channel %u complete (%u)\n",
      ieee80211_ieee2mhz(chan->nchan, 0), chan->nchan));


  sc->sc_state_timer = 3;
  break;

 case 128:
  scan = (struct iwi_notif_scan_complete *)(notif + 1);

  DPRINTFN(2, ("Scan completed (%u, %u)\n", scan->nchan,
      scan->status));

  IWI_STATE_END(sc, IWI_FW_SCANNING);
  if (vap->iv_opmode == IEEE80211_M_MONITOR) {
   ieee80211_runtask(ic, &sc->sc_monitortask);
   break;
  }

  if (scan->status == IWI_SCAN_COMPLETED) {

   ieee80211_scan_next(vap);
  }
  break;

 case 134:
  auth = (struct iwi_notif_authentication *)(notif + 1);
  switch (auth->state) {
  case 138:
   DPRINTFN(2, ("Authentication succeeeded\n"));
   ieee80211_new_state(vap, IEEE80211_S_ASSOC, -1);
   break;
  case 143:





   sc->flags &= ~IWI_FLAG_ASSOCIATED;
   if (vap->iv_state != IEEE80211_S_RUN) {
    DPRINTFN(2, ("Authentication failed\n"));
    vap->iv_stats.is_rx_auth_fail++;
    IWI_STATE_END(sc, 137);
   } else {
    DPRINTFN(2, ("Deauthenticated\n"));
    vap->iv_stats.is_rx_deauth++;
   }
   ieee80211_new_state(vap, IEEE80211_S_SCAN, -1);
   break;
  case 141:
  case 142:
  case 139:
   break;
  case 140:
   DPRINTFN(2, ("Initial authentication handshake failed; "
    "you probably need shared key\n"));
   vap->iv_stats.is_rx_auth_fail++;
   IWI_STATE_END(sc, 137);

   break;
  default:
   device_printf(sc->sc_dev,
       "unknown authentication state %u\n", auth->state);
   break;
  }
  break;

 case 135:
  assoc = (struct iwi_notif_association *)(notif + 1);
  switch (assoc->state) {
  case 138:

   break;
  case 144:
   DPRINTFN(2, ("Association succeeded\n"));
   sc->flags |= IWI_FLAG_ASSOCIATED;
   IWI_STATE_END(sc, 137);
   iwi_checkforqos(vap,
       (const struct ieee80211_frame *)(assoc+1),
       le16toh(notif->len) - sizeof(*assoc) - 1);
   ieee80211_new_state(vap, IEEE80211_S_RUN, -1);
   break;
  case 145:
   sc->flags &= ~IWI_FLAG_ASSOCIATED;
   switch (sc->fw_state) {
   case 137:
    DPRINTFN(2, ("Association failed\n"));
    IWI_STATE_END(sc, 137);
    ieee80211_new_state(vap, IEEE80211_S_SCAN, -1);
    break;

   case 136:
    DPRINTFN(2, ("Dissassociated\n"));
    IWI_STATE_END(sc, 136);
    vap->iv_stats.is_rx_disassoc++;
    ieee80211_new_state(vap, IEEE80211_S_SCAN, -1);
    break;
   }
   break;
  default:
   device_printf(sc->sc_dev,
       "unknown association state %u\n", assoc->state);
   break;
  }
  break;

 case 133:

  beacon = (struct iwi_notif_beacon_state *)(notif + 1);

  DPRINTFN(5, ("Beacon state (%u, %u)\n",
      beacon->state, le32toh(beacon->number)));

  if (beacon->state == IWI_BEACON_MISS) {







   if (le32toh(beacon->number) >= vap->iv_bmissthreshold) {
    DPRINTF(("Beacon miss: %u >= %u\n",
        le32toh(beacon->number),
        vap->iv_bmissthreshold));
    vap->iv_stats.is_beacon_miss++;
    ieee80211_runtask(ic, &sc->sc_disassoctask);
   }
  }
  break;

 case 132:
 case 130:

  DPRINTFN(5, ("Notification (%u)\n", notif->type));
  break;
 case 131:
  iwi_notif_link_quality(sc, notif);
  break;

 default:
  DPRINTF(("unknown notification type %u flags 0x%x len %u\n",
      notif->type, notif->flags, le16toh(notif->len)));
  break;
 }
}

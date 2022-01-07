
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;
struct wpi_vap {int (* wv_recv_mgmt ) (struct ieee80211_node*,struct mbuf*,int,struct ieee80211_rx_stats const*,int,int) ;} ;
struct wpi_softc {int rx_tstamp; } ;
struct mbuf {int dummy; } ;
struct ieee80211vap {scalar_t__ iv_state; TYPE_1__* iv_ic; } ;
struct ieee80211_rx_stats {int dummy; } ;
struct TYPE_4__ {int tsf; } ;
struct ieee80211_node {TYPE_2__ ni_tstamp; struct ieee80211vap* ni_vap; } ;
struct TYPE_3__ {struct wpi_softc* ic_softc; } ;


 int DPRINTF (struct wpi_softc*,int ,char*,int ,int ) ;
 int IEEE80211_FC0_SUBTYPE_BEACON ;
 int IEEE80211_FC0_SUBTYPE_PROBE_RESP ;
 scalar_t__ IEEE80211_S_RUN ;
 int WPI_DEBUG_STATE ;
 struct wpi_vap* WPI_VAP (struct ieee80211vap*) ;
 int ieee80211_ibss_merge (struct ieee80211_node*) ;
 scalar_t__ le64toh (int ) ;
 int stub1 (struct ieee80211_node*,struct mbuf*,int,struct ieee80211_rx_stats const*,int,int) ;

__attribute__((used)) static void
wpi_ibss_recv_mgmt(struct ieee80211_node *ni, struct mbuf *m, int subtype,
    const struct ieee80211_rx_stats *rxs,
    int rssi, int nf)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct wpi_softc *sc = vap->iv_ic->ic_softc;
 struct wpi_vap *wvp = WPI_VAP(vap);
 uint64_t ni_tstamp, rx_tstamp;

 wvp->wv_recv_mgmt(ni, m, subtype, rxs, rssi, nf);

 if (vap->iv_state == IEEE80211_S_RUN &&
     (subtype == IEEE80211_FC0_SUBTYPE_BEACON ||
     subtype == IEEE80211_FC0_SUBTYPE_PROBE_RESP)) {
  ni_tstamp = le64toh(ni->ni_tstamp.tsf);
  rx_tstamp = le64toh(sc->rx_tstamp);

  if (ni_tstamp >= rx_tstamp) {
   DPRINTF(sc, WPI_DEBUG_STATE,
       "ibss merge, tsf %ju tstamp %ju\n",
       (uintmax_t)rx_tstamp, (uintmax_t)ni_tstamp);
   (void) ieee80211_ibss_merge(ni);
  }
 }
}

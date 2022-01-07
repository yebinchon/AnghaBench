
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct rtwn_vap {int id; int (* recv_mgmt ) (struct ieee80211_node*,struct mbuf*,int,struct ieee80211_rx_stats const*,int,int) ;} ;
struct rtwn_softc {int dummy; } ;
struct mbuf {int dummy; } ;
struct ieee80211vap {scalar_t__ iv_state; TYPE_1__* iv_ic; } ;
struct ieee80211_rx_stats {int dummy; } ;
struct TYPE_4__ {int tsf; } ;
struct ieee80211_node {TYPE_2__ ni_tstamp; struct ieee80211vap* ni_vap; } ;
struct TYPE_3__ {struct rtwn_softc* ic_softc; } ;


 int IEEE80211_FC0_SUBTYPE_BEACON ;
 int IEEE80211_FC0_SUBTYPE_PROBE_RESP ;
 scalar_t__ IEEE80211_S_RUN ;
 int RTWN_LOCK (struct rtwn_softc*) ;
 int RTWN_UNLOCK (struct rtwn_softc*) ;
 struct rtwn_vap* RTWN_VAP (struct ieee80211vap*) ;
 int ieee80211_ibss_merge (struct ieee80211_node*) ;
 int le64toh (int ) ;
 int rtwn_get_tsf (struct rtwn_softc*,int *,int ) ;
 int stub1 (struct ieee80211_node*,struct mbuf*,int,struct ieee80211_rx_stats const*,int,int) ;

void
rtwn_adhoc_recv_mgmt(struct ieee80211_node *ni, struct mbuf *m, int subtype,
    const struct ieee80211_rx_stats *rxs,
    int rssi, int nf)
{
 struct ieee80211vap *vap = ni->ni_vap;
 struct rtwn_softc *sc = vap->iv_ic->ic_softc;
 struct rtwn_vap *uvp = RTWN_VAP(vap);
 uint64_t ni_tstamp, curr_tstamp;

 uvp->recv_mgmt(ni, m, subtype, rxs, rssi, nf);

 if (vap->iv_state == IEEE80211_S_RUN &&
     (subtype == IEEE80211_FC0_SUBTYPE_BEACON ||
     subtype == IEEE80211_FC0_SUBTYPE_PROBE_RESP)) {
  ni_tstamp = le64toh(ni->ni_tstamp.tsf);
  RTWN_LOCK(sc);
  rtwn_get_tsf(sc, &curr_tstamp, uvp->id);
  RTWN_UNLOCK(sc);

  if (ni_tstamp >= curr_tstamp)
   (void) ieee80211_ibss_merge(ni);
 }
}

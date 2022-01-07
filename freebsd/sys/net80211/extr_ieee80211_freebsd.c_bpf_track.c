
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifnet {scalar_t__ if_init; struct ieee80211vap* if_softc; } ;
struct ieee80211vap {scalar_t__ iv_opmode; TYPE_1__* iv_ic; int iv_rawbpf; } ;
struct TYPE_2__ {int ic_montaps; } ;


 int DLT_IEEE802_11_RADIO ;
 int IEEE80211_FEXT_BPF ;
 scalar_t__ IEEE80211_M_MONITOR ;
 int atomic_add_int (int *,int) ;
 int atomic_subtract_int (int *,int) ;
 int bpf_peers_present (int ) ;
 scalar_t__ ieee80211_init ;
 int ieee80211_syncflag_ext (struct ieee80211vap*,int ) ;

__attribute__((used)) static void
bpf_track(void *arg, struct ifnet *ifp, int dlt, int attach)
{

 if (dlt == DLT_IEEE802_11_RADIO &&
     ifp->if_init == ieee80211_init) {
  struct ieee80211vap *vap = ifp->if_softc;







  if (attach) {
   ieee80211_syncflag_ext(vap, IEEE80211_FEXT_BPF);
   if (vap->iv_opmode == IEEE80211_M_MONITOR)
    atomic_add_int(&vap->iv_ic->ic_montaps, 1);
  } else if (!bpf_peers_present(vap->iv_rawbpf)) {
   ieee80211_syncflag_ext(vap, -IEEE80211_FEXT_BPF);
   if (vap->iv_opmode == IEEE80211_M_MONITOR)
    atomic_subtract_int(&vap->iv_ic->ic_montaps, 1);
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_rawbpf; int iv_ifp; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int * ic_rh; struct ieee80211_radiotap_header* ic_th; } ;
struct ieee80211_radiotap_header {int it_len; } ;
struct ieee80211_frame {int dummy; } ;


 int DLT_IEEE802_11_RADIO ;
 int bpfattach2 (int ,int ,scalar_t__,int *) ;
 scalar_t__ le16toh (int ) ;

void
ieee80211_radiotap_vattach(struct ieee80211vap *vap)
{
 struct ieee80211com *ic = vap->iv_ic;
 struct ieee80211_radiotap_header *th = ic->ic_th;

 if (th != ((void*)0) && ic->ic_rh != ((void*)0)) {

  bpfattach2(vap->iv_ifp, DLT_IEEE802_11_RADIO,
      sizeof(struct ieee80211_frame) + le16toh(th->it_len),
      &vap->iv_rawbpf);
 }
}

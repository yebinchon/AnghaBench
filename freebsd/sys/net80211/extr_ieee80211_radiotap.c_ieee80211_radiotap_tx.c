
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ieee80211vap {int iv_flags_ext; int iv_rawbpf; struct ieee80211com* iv_ic; } ;
struct ieee80211com {scalar_t__ ic_montaps; struct ieee80211_radiotap_header* ic_th; } ;
struct ieee80211_radiotap_header {int it_len; } ;


 int IEEE80211_FEXT_BPF ;
 int KASSERT (int ,char*) ;
 int bpf_mtap2 (int ,struct ieee80211_radiotap_header*,int,struct mbuf*) ;
 int le16toh (int ) ;
 int spam_vaps (struct ieee80211vap*,struct mbuf*,struct ieee80211_radiotap_header*,int) ;

void
ieee80211_radiotap_tx(struct ieee80211vap *vap0, struct mbuf *m)
{
 struct ieee80211com *ic = vap0->iv_ic;
 struct ieee80211_radiotap_header *th = ic->ic_th;
 int len;

 KASSERT(th != ((void*)0), ("no tx radiotap header"));
 len = le16toh(th->it_len);

 if (vap0->iv_flags_ext & IEEE80211_FEXT_BPF)
  bpf_mtap2(vap0->iv_rawbpf, th, len, m);



 if (ic->ic_montaps != 0)
  spam_vaps(vap0, m, th, len);
}

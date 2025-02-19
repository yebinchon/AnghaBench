
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int csum_flags; void* rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211vap {int iv_ifp; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int (* ic_raw_xmit ) (struct ieee80211_node*,struct mbuf*,struct ieee80211_bpf_params const*) ;} ;
struct ieee80211_node {int dummy; } ;
struct ieee80211_bpf_params {int dummy; } ;


 int CSUM_SND_TAG ;
 int IFCOUNTER_OERRORS ;
 int MPASS (int) ;
 int ieee80211_add_xmit_params (struct mbuf*,struct ieee80211_bpf_params const*) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int if_inc_counter (int ,int ,int) ;
 int stub1 (struct ieee80211_node*,struct mbuf*,struct ieee80211_bpf_params const*) ;

int
ieee80211_raw_output(struct ieee80211vap *vap, struct ieee80211_node *ni,
    struct mbuf *m, const struct ieee80211_bpf_params *params)
{
 struct ieee80211com *ic = vap->iv_ic;
 int error;






 MPASS((m->m_pkthdr.csum_flags & CSUM_SND_TAG) == 0);
 m->m_pkthdr.rcvif = (void *)ni;
 if (params)
  (void) ieee80211_add_xmit_params(m, params);

 error = ic->ic_raw_xmit(ni, m, params);
 if (error) {
  if_inc_counter(vap->iv_ifp, IFCOUNTER_OERRORS, 1);
  ieee80211_free_node(ni);
 }
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ieee80211_node {int dummy; } ;
struct ieee80211_bpf_params {int dummy; } ;


 int ieee80211_free_node (struct ieee80211_node*) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
iwi_raw_xmit(struct ieee80211_node *ni, struct mbuf *m,
 const struct ieee80211_bpf_params *params)
{

 m_freem(m);
 ieee80211_free_node(ni);
 return 0;
}

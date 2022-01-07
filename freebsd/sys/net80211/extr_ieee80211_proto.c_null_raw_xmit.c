
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ieee80211_node {int ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;


 int ENETDOWN ;
 int ic_printf (int ,char*) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
null_raw_xmit(struct ieee80211_node *ni, struct mbuf *m,
 const struct ieee80211_bpf_params *params)
{

 ic_printf(ni->ni_ic, "missing ic_raw_xmit callback, drop frame\n");
 m_freem(m);
 return ENETDOWN;
}

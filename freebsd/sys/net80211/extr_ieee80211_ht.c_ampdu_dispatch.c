
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_flags; } ;
struct ieee80211_node {int dummy; } ;


 int M_AMPDU_MPDU ;
 int ieee80211_input (struct ieee80211_node*,struct mbuf*,int ,int ) ;

__attribute__((used)) static __inline void
ampdu_dispatch(struct ieee80211_node *ni, struct mbuf *m)
{
 m->m_flags |= M_AMPDU_MPDU;

 (void) ieee80211_input(ni, m, 0, 0);
}

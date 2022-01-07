
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
struct rtwn_rx_stat_common {int dummy; } ;
struct mbuf {int dummy; } ;
struct ieee80211_node {int dummy; } ;
typedef int stat ;
typedef int caddr_t ;


 int m_adj (struct mbuf*,int) ;
 int m_copydata (struct mbuf*,int ,int,int ) ;
 struct ieee80211_node* rtwn_rx_common (struct rtwn_softc*,struct mbuf*,struct rtwn_rx_stat_common*) ;

__attribute__((used)) static struct ieee80211_node *
rtwn_rx_frame(struct rtwn_softc *sc, struct mbuf *m)
{
 struct rtwn_rx_stat_common stat;


 m_copydata(m, 0, sizeof(stat), (caddr_t)&stat);
 m_adj(m, sizeof(stat));

 return (rtwn_rx_common(sc, m, &stat));
}

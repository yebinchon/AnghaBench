
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
struct hn_txdesc {struct mbuf* m; } ;
struct hn_tx_ring {int hn_stat_pkts; int * hn_agg_prevpkt; scalar_t__ hn_agg_pktleft; scalar_t__ hn_agg_szleft; struct hn_txdesc* hn_agg_txd; int hn_flush_failed; } ;


 int IFCOUNTER_OERRORS ;
 int KASSERT (int ,char*) ;
 scalar_t__ __predict_false (int) ;
 int hn_txpkt (struct ifnet*,struct hn_tx_ring*,struct hn_txdesc*) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static __inline int
hn_flush_txagg(struct ifnet *ifp, struct hn_tx_ring *txr)
{
 struct hn_txdesc *txd;
 struct mbuf *m;
 int error, pkts;

 txd = txr->hn_agg_txd;
 KASSERT(txd != ((void*)0), ("no aggregate txdesc"));






 pkts = txr->hn_stat_pkts;






 m = txd->m;
 error = hn_txpkt(ifp, txr, txd);
 if (__predict_false(error)) {

  m_freem(m);

  txr->hn_flush_failed++;
  if_inc_counter(ifp, IFCOUNTER_OERRORS, pkts);
 }


 txr->hn_agg_txd = ((void*)0);
 txr->hn_agg_szleft = 0;
 txr->hn_agg_pktleft = 0;
 txr->hn_agg_prevpkt = ((void*)0);

 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vi_info {size_t first_txq; int ntxq; int rsrv_noflowq; struct port_info* pi; } ;
struct sge_txq {int r; } ;
struct TYPE_5__ {int link_ok; } ;
struct port_info {int tx_parse_error; TYPE_1__ link_cfg; struct adapter* adapter; } ;
struct TYPE_7__ {int csum_flags; int flowid; TYPE_4__* snd_tag; } ;
struct mbuf {TYPE_3__ m_pkthdr; int * m_nextpkt; } ;
struct ifnet {struct vi_info* if_softc; } ;
struct cxgbe_snd_tag {scalar_t__ type; } ;
struct TYPE_6__ {struct sge_txq* txq; } ;
struct adapter {TYPE_2__ sge; } ;
struct TYPE_8__ {struct ifnet* ifp; } ;


 int CSUM_SND_TAG ;
 int ENETDOWN ;
 scalar_t__ IF_SND_TAG_TYPE_RATE_LIMIT ;
 int MPASS (int) ;
 int M_ASSERTPKTHDR (struct mbuf*) ;
 scalar_t__ M_HASHTYPE_GET (struct mbuf*) ;
 scalar_t__ M_HASHTYPE_NONE ;
 scalar_t__ __predict_false (int) ;
 int atomic_add_int (int *,int) ;
 int ethofld_transmit (struct ifnet*,struct mbuf*) ;
 int m_freem (struct mbuf*) ;
 int mp_ring_enqueue (int ,void**,int,int) ;
 struct cxgbe_snd_tag* mst_to_cst (TYPE_4__*) ;
 int parse_pkt (struct adapter*,struct mbuf**) ;

__attribute__((used)) static int
cxgbe_transmit(struct ifnet *ifp, struct mbuf *m)
{
 struct vi_info *vi = ifp->if_softc;
 struct port_info *pi = vi->pi;
 struct adapter *sc = pi->adapter;
 struct sge_txq *txq;



 void *items[1];
 int rc;

 M_ASSERTPKTHDR(m);
 MPASS(m->m_nextpkt == ((void*)0));





 if (__predict_false(pi->link_cfg.link_ok == 0)) {
  m_freem(m);
  return (ENETDOWN);
 }

 rc = parse_pkt(sc, &m);
 if (__predict_false(rc != 0)) {
  MPASS(m == ((void*)0));
  atomic_add_int(&pi->tx_parse_error, 1);
  return (rc);
 }
 txq = &sc->sge.txq[vi->first_txq];
 if (M_HASHTYPE_GET(m) != M_HASHTYPE_NONE)
  txq += ((m->m_pkthdr.flowid % (vi->ntxq - vi->rsrv_noflowq)) +
      vi->rsrv_noflowq);

 items[0] = m;
 rc = mp_ring_enqueue(txq->r, items, 1, 4096);
 if (__predict_false(rc != 0))
  m_freem(m);

 return (rc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct rm_priotracker {int dummy; } ;
struct TYPE_3__ {int len; int csum_flags; int flowid; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_bpf; struct hn_softc* if_softc; } ;
struct hn_tx_ring {int hn_tx_task; int hn_tx_taskq; int hn_tx_lock; int hn_direct_tx_size; scalar_t__ hn_sched_tx; scalar_t__ hn_oactive; int hn_mbuf_br; } ;
struct hn_softc {int hn_xvf_flags; int hn_tx_ring_inuse; struct hn_tx_ring* hn_tx_ring; int hn_vf_lock; TYPE_2__* hn_vf_ifp; } ;
struct TYPE_4__ {int (* if_transmit ) (TYPE_2__*,struct mbuf*) ;} ;


 int CSUM_IP6_TCP ;
 int CSUM_IP6_UDP ;
 int CSUM_IP_TCP ;
 int CSUM_IP_UDP ;
 int CSUM_TSO ;
 int EIO ;
 int ENOBUFS ;
 int ETHER_BPF_MTAP (struct ifnet*,struct mbuf*) ;
 int HN_XVFFLAG_ACCBPF ;
 int HN_XVFFLAG_ENABLED ;
 int IFCOUNTER_OBYTES ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OMCASTS ;
 int IFCOUNTER_OPACKETS ;
 int IFCOUNTER_OQDROPS ;
 scalar_t__ M_HASHTYPE_GET (struct mbuf*) ;
 scalar_t__ M_HASHTYPE_NONE ;
 int M_MCAST ;
 int M_NOWAIT ;
 scalar_t__ __predict_false (int ) ;
 scalar_t__ __predict_true (int) ;
 scalar_t__ bpf_peers_present (int ) ;
 int drbr_enqueue (struct ifnet*,int ,struct mbuf*) ;
 struct mbuf* hn_check_tcpsyn (struct mbuf*,int*) ;
 struct mbuf* hn_set_hlen (struct mbuf*) ;
 struct mbuf* hn_tso_fixup (struct mbuf*) ;
 int hn_xmit (struct hn_tx_ring*,int ) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 struct mbuf* m_copypacket (struct mbuf*,int ) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ mtx_trylock (int *) ;
 int mtx_unlock (int *) ;
 int rm_rlock (int *,struct rm_priotracker*) ;
 int rm_runlock (int *,struct rm_priotracker*) ;
 scalar_t__ rss_hash2bucket (int,scalar_t__,int*) ;
 int stub1 (TYPE_2__*,struct mbuf*) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static int
hn_transmit(struct ifnet *ifp, struct mbuf *m)
{
 struct hn_softc *sc = ifp->if_softc;
 struct hn_tx_ring *txr;
 int error, idx = 0;

 if (sc->hn_xvf_flags & HN_XVFFLAG_ENABLED) {
  struct rm_priotracker pt;

  rm_rlock(&sc->hn_vf_lock, &pt);
  if (__predict_true(sc->hn_xvf_flags & HN_XVFFLAG_ENABLED)) {
   struct mbuf *m_bpf = ((void*)0);
   int obytes, omcast;

   obytes = m->m_pkthdr.len;
   omcast = (m->m_flags & M_MCAST) != 0;

   if (sc->hn_xvf_flags & HN_XVFFLAG_ACCBPF) {
    if (bpf_peers_present(ifp->if_bpf)) {
     m_bpf = m_copypacket(m, M_NOWAIT);
     if (m_bpf == ((void*)0)) {




      ETHER_BPF_MTAP(ifp, m);
     }
    }
   } else {
    ETHER_BPF_MTAP(ifp, m);
   }

   error = sc->hn_vf_ifp->if_transmit(sc->hn_vf_ifp, m);
   rm_runlock(&sc->hn_vf_lock, &pt);

   if (m_bpf != ((void*)0)) {
    if (!error)
     ETHER_BPF_MTAP(ifp, m_bpf);
    m_freem(m_bpf);
   }

   if (error == ENOBUFS) {
    if_inc_counter(ifp, IFCOUNTER_OQDROPS, 1);
   } else if (error) {
    if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
   } else {
    if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
    if_inc_counter(ifp, IFCOUNTER_OBYTES, obytes);
    if (omcast) {
     if_inc_counter(ifp, IFCOUNTER_OMCASTS,
         omcast);
    }
   }
   return (error);
  }
  rm_runlock(&sc->hn_vf_lock, &pt);
 }
 if (M_HASHTYPE_GET(m) != M_HASHTYPE_NONE) {
  {
   const int tcpsyn = 0;

   if (tcpsyn)
    idx = 0;
   else
    idx = m->m_pkthdr.flowid % sc->hn_tx_ring_inuse;
  }
 }
 txr = &sc->hn_tx_ring[idx];

 error = drbr_enqueue(ifp, txr->hn_mbuf_br, m);
 if (error) {
  if_inc_counter(ifp, IFCOUNTER_OQDROPS, 1);
  return error;
 }

 if (txr->hn_oactive)
  return 0;

 if (txr->hn_sched_tx)
  goto do_sched;

 if (mtx_trylock(&txr->hn_tx_lock)) {
  int sched;

  sched = hn_xmit(txr, txr->hn_direct_tx_size);
  mtx_unlock(&txr->hn_tx_lock);
  if (!sched)
   return 0;
 }
do_sched:
 taskqueue_enqueue(txr->hn_tx_taskq, &txr->hn_tx_task);
 return 0;
}

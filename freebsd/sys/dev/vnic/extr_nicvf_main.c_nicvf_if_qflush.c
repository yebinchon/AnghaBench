
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_queue {int br; } ;
struct queue_set {size_t sq_cnt; struct snd_queue* sq; } ;
struct nicvf {struct queue_set* qs; } ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;


 int NICVF_TX_LOCK (struct snd_queue*) ;
 int NICVF_TX_UNLOCK (struct snd_queue*) ;
 struct mbuf* buf_ring_dequeue_sc (int ) ;
 struct nicvf* if_getsoftc (struct ifnet*) ;
 int if_qflush (struct ifnet*) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static void
nicvf_if_qflush(struct ifnet *ifp)
{
 struct nicvf *nic;
 struct queue_set *qs;
 struct snd_queue *sq;
 struct mbuf *mbuf;
 size_t idx;

 nic = if_getsoftc(ifp);
 qs = nic->qs;

 for (idx = 0; idx < qs->sq_cnt; idx++) {
  sq = &qs->sq[idx];
  NICVF_TX_LOCK(sq);
  while ((mbuf = buf_ring_dequeue_sc(sq->br)) != ((void*)0))
   m_freem(mbuf);
  NICVF_TX_UNLOCK(sq);
 }
 if_qflush(ifp);
}

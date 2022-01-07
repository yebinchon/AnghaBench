
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iq; } ;
struct octeon_device {struct lio_instr_queue** instr_queue; TYPE_1__ io_qmask; } ;
struct mbuf {int dummy; } ;
struct lio_instr_queue {int enq_lock; int br; } ;
struct lio {struct octeon_device* oct_dev; } ;
struct ifnet {int dummy; } ;


 int BIT_ULL (int) ;
 int LIO_MAX_INSTR_QUEUES (struct octeon_device*) ;
 struct mbuf* buf_ring_dequeue_sc (int ) ;
 struct lio* if_getsoftc (struct ifnet*) ;
 int if_qflush (struct ifnet*) ;
 int m_freem (struct mbuf*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
lio_qflush(struct ifnet *ifp)
{
 struct lio *lio = if_getsoftc(ifp);
 struct octeon_device *oct = lio->oct_dev;
 struct lio_instr_queue *iq;
 struct mbuf *m;
 int i;

 for (i = 0; i < LIO_MAX_INSTR_QUEUES(oct); i++) {
  if (!(oct->io_qmask.iq & BIT_ULL(i)))
   continue;

  iq = oct->instr_queue[i];

  mtx_lock(&iq->enq_lock);
  while ((m = buf_ring_dequeue_sc(iq->br)) != ((void*)0))
   m_freem(m);

  mtx_unlock(&iq->enq_lock);
 }

 if_qflush(ifp);
}

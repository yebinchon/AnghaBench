
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_net_queue {int br; int queue_full; int qp; int ifp; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {short m_flags; TYPE_1__ m_pkthdr; } ;
typedef int if_t ;


 int CTR0 (int ,char*) ;
 int CTR1 (int ,char*,struct mbuf*) ;
 int CTR2 (int ,char*,struct mbuf*,int) ;
 int EAGAIN ;
 int IFCOUNTER_OBYTES ;
 int IFCOUNTER_OERRORS ;
 int IFCOUNTER_OMCASTS ;
 int IFCOUNTER_OPACKETS ;
 int KTR_NTB ;
 short M_MCAST ;
 int SBT_1MS ;
 int callout_reset_sbt (int *,int,int,int ,struct ntb_net_queue*,int ) ;
 int drbr_advance (int ,int ) ;
 struct mbuf* drbr_peek (int ,int ) ;
 int drbr_putback (int ,int ,struct mbuf*) ;
 int if_etherbpfmtap (int ,struct mbuf*) ;
 int if_inc_counter (int ,int ,int) ;
 int m_freem (struct mbuf*) ;
 int ntb_qp_full ;
 int ntb_transport_tx_enqueue (int ,struct mbuf*,struct mbuf*,int) ;

__attribute__((used)) static void
ntb_transmit_locked(struct ntb_net_queue *q)
{
 if_t ifp = q->ifp;
 struct mbuf *m;
 int rc, len;
 short mflags;

 CTR0(KTR_NTB, "TX: ntb_transmit_locked");
 while ((m = drbr_peek(ifp, q->br)) != ((void*)0)) {
  CTR1(KTR_NTB, "TX: start mbuf %p", m);
  if_etherbpfmtap(ifp, m);
  len = m->m_pkthdr.len;
  mflags = m->m_flags;
  rc = ntb_transport_tx_enqueue(q->qp, m, m, len);
  if (rc != 0) {
   CTR2(KTR_NTB, "TX: could not tx mbuf %p: %d", m, rc);
   if (rc == EAGAIN) {
    drbr_putback(ifp, q->br, m);
    callout_reset_sbt(&q->queue_full,
        SBT_1MS / 4, SBT_1MS / 4,
        ntb_qp_full, q, 0);
   } else {
    m_freem(m);
    drbr_advance(ifp, q->br);
    if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
   }
   break;
  }
  drbr_advance(ifp, q->br);
  if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
  if_inc_counter(ifp, IFCOUNTER_OBYTES, len);
  if (mflags & M_MCAST)
   if_inc_counter(ifp, IFCOUNTER_OMCASTS, 1);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct netmap_slot {int flags; int len; } ;
struct netmap_ring {struct netmap_slot* slot; } ;
struct mbq {int dummy; } ;
struct netmap_kring {scalar_t__ nkr_num_slots; scalar_t__ rhead; int nr_kflags; scalar_t__ nr_hwcur; scalar_t__ nr_hwtail; struct mbq rx_queue; struct netmap_adapter* na; struct netmap_ring* ring; } ;
struct netmap_adapter {int dummy; } ;
struct mbuf {int dummy; } ;
struct TYPE_3__ {int rxpkt; int rxsync; } ;
struct TYPE_4__ {TYPE_1__ new; } ;


 int IFRATE (scalar_t__) ;
 int MBUF_LEN (struct mbuf*) ;
 int NAF_FORCE_READ ;
 void* NETMAP_BUF_BASE (struct netmap_adapter*) ;
 scalar_t__ NETMAP_BUF_SIZE (struct netmap_adapter*) ;
 int NKR_PENDINTR ;
 void* NMB (struct netmap_adapter*,struct netmap_slot*) ;
 int NS_BUF_CHANGED ;
 int NS_MOREFRAG ;
 int m_copydata (struct mbuf*,int,int,void*) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* mbq_dequeue (struct mbq*) ;
 int mbq_enqueue (struct mbq*,struct mbuf*) ;
 int mbq_fini (struct mbq*) ;
 int mbq_init (struct mbq*) ;
 int mbq_lock (struct mbq*) ;
 struct mbuf* mbq_peek (struct mbq*) ;
 int mbq_purge (struct mbq*) ;
 int mbq_unlock (struct mbq*) ;
 int netmap_no_pendintr ;
 int netmap_ring_reinit (struct netmap_kring*) ;
 scalar_t__ nm_next (scalar_t__,scalar_t__ const) ;
 scalar_t__ nm_prev (scalar_t__,scalar_t__ const) ;
 TYPE_2__ rate_ctx ;

__attribute__((used)) static int
generic_netmap_rxsync(struct netmap_kring *kring, int flags)
{
 struct netmap_ring *ring = kring->ring;
 struct netmap_adapter *na = kring->na;
 u_int nm_i;
 u_int n;
 u_int const lim = kring->nkr_num_slots - 1;
 u_int const head = kring->rhead;
 int force_update = (flags & NAF_FORCE_READ) || kring->nr_kflags & NKR_PENDINTR;


 u_int nm_buf_len = NETMAP_BUF_SIZE(na);
 struct mbq tmpq;
 struct mbuf *m;
 int avail;
 int mlen;
 int copy;

 if (head > lim)
  return netmap_ring_reinit(kring);

 IFRATE(rate_ctx.new.rxsync++);





 nm_i = kring->nr_hwcur;
 if (nm_i != head) {

  for (n = 0; nm_i != head; n++) {
   struct netmap_slot *slot = &ring->slot[nm_i];

   slot->flags &= ~NS_BUF_CHANGED;
   nm_i = nm_next(nm_i, lim);
  }
  kring->nr_hwcur = head;
 }




 if (!netmap_no_pendintr && !force_update) {
  return 0;
 }

 nm_i = kring->nr_hwtail;





 avail = nm_prev(kring->nr_hwcur, lim) - nm_i;
 if (avail < 0)
  avail += lim + 1;
 avail *= nm_buf_len;







 mbq_init(&tmpq);
 mbq_lock(&kring->rx_queue);
 for (n = 0;; n++) {
  m = mbq_peek(&kring->rx_queue);
  if (!m) {

   break;
  }

  mlen = MBUF_LEN(m);
  if (mlen > avail) {

   break;
  }

  mbq_dequeue(&kring->rx_queue);

  while (mlen) {
   copy = nm_buf_len;
   if (mlen < copy) {
    copy = mlen;
   }
   mlen -= copy;
   avail -= nm_buf_len;

   ring->slot[nm_i].len = copy;
   ring->slot[nm_i].flags = (mlen ? NS_MOREFRAG : 0);
   nm_i = nm_next(nm_i, lim);
  }

  mbq_enqueue(&tmpq, m);
 }
 mbq_unlock(&kring->rx_queue);



 nm_i = kring->nr_hwtail;

 for (;;) {
  void *nmaddr;
  int ofs = 0;
  int morefrag;

  m = mbq_dequeue(&tmpq);
  if (!m) {
   break;
  }

  do {
   nmaddr = NMB(na, &ring->slot[nm_i]);

   if (nmaddr == NETMAP_BUF_BASE(na)) {
    m_freem(m);
    mbq_purge(&tmpq);
    mbq_fini(&tmpq);
    return netmap_ring_reinit(kring);
   }

   copy = ring->slot[nm_i].len;
   m_copydata(m, ofs, copy, nmaddr);
   ofs += copy;
   morefrag = ring->slot[nm_i].flags & NS_MOREFRAG;
   nm_i = nm_next(nm_i, lim);
  } while (morefrag);

  m_freem(m);
 }

 mbq_fini(&tmpq);

 if (n) {
  kring->nr_hwtail = nm_i;
  IFRATE(rate_ctx.new.rxpkt += n);
 }
 kring->nr_kflags &= ~NKR_PENDINTR;

 return 0;
}

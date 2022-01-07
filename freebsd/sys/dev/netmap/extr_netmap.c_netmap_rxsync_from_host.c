
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int ;
struct netmap_slot {int len; scalar_t__ flags; } ;
struct netmap_ring {struct netmap_slot* slot; } ;
struct mbq {int dummy; } ;
struct netmap_kring {scalar_t__ nkr_num_slots; scalar_t__ rhead; scalar_t__ nr_hwtail; scalar_t__ nr_hwcur; int nr_kflags; struct mbq rx_queue; struct netmap_ring* ring; struct netmap_adapter* na; } ;
struct netmap_adapter {int dummy; } ;
struct mbuf {int dummy; } ;


 int MBUF_LEN (struct mbuf*) ;
 int NMB (struct netmap_adapter*,struct netmap_slot*) ;
 int NM_DEBUG_HOST ;
 int NR_FORWARD ;
 int m_copydata (struct mbuf*,int ,int,int ) ;
 struct mbuf* mbq_dequeue (struct mbq*) ;
 int mbq_enqueue (struct mbq*,struct mbuf*) ;
 int mbq_fini (struct mbq*) ;
 int mbq_init (struct mbq*) ;
 scalar_t__ mbq_len (struct mbq*) ;
 int mbq_lock (struct mbq*) ;
 int mbq_purge (struct mbq*) ;
 int mbq_unlock (struct mbq*) ;
 int netmap_debug ;
 int netmap_sw_to_nic (struct netmap_adapter*) ;
 int nm_dump_buf (int ,int,int,int *) ;
 scalar_t__ nm_may_forward_down (struct netmap_kring*,int) ;
 scalar_t__ nm_next (scalar_t__,scalar_t__ const) ;
 int nm_prdis (char*,scalar_t__,int) ;
 scalar_t__ nm_prev (scalar_t__,scalar_t__ const) ;
 int nm_prinf (char*,int ) ;

__attribute__((used)) static int
netmap_rxsync_from_host(struct netmap_kring *kring, int flags)
{
 struct netmap_adapter *na = kring->na;
 struct netmap_ring *ring = kring->ring;
 u_int nm_i, n;
 u_int const lim = kring->nkr_num_slots - 1;
 u_int const head = kring->rhead;
 int ret = 0;
 struct mbq *q = &kring->rx_queue, fq;

 mbq_init(&fq);

 mbq_lock(q);


 n = mbq_len(q);
 if (n) {
  struct mbuf *m;
  uint32_t stop_i;

  nm_i = kring->nr_hwtail;
  stop_i = nm_prev(kring->nr_hwcur, lim);
  while ( nm_i != stop_i && (m = mbq_dequeue(q)) != ((void*)0) ) {
   int len = MBUF_LEN(m);
   struct netmap_slot *slot = &ring->slot[nm_i];

   m_copydata(m, 0, len, NMB(na, slot));
   nm_prdis("nm %d len %d", nm_i, len);
   if (netmap_debug & NM_DEBUG_HOST)
    nm_prinf("%s", nm_dump_buf(NMB(na, slot),len, 128, ((void*)0)));

   slot->len = len;
   slot->flags = 0;
   nm_i = nm_next(nm_i, lim);
   mbq_enqueue(&fq, m);
  }
  kring->nr_hwtail = nm_i;
 }




 nm_i = kring->nr_hwcur;
 if (nm_i != head) {
  if (nm_may_forward_down(kring, flags)) {
   ret = netmap_sw_to_nic(na);
   if (ret > 0) {
    kring->nr_kflags |= NR_FORWARD;
    ret = 0;
   }
  }
  kring->nr_hwcur = head;
 }

 mbq_unlock(q);

 mbq_purge(&fq);
 mbq_fini(&fq);

 return ret;
}

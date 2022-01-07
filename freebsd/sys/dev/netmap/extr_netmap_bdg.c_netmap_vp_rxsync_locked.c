
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct netmap_slot {int flags; int buf_idx; } ;
struct netmap_ring {struct netmap_slot* slot; } ;
struct netmap_kring {scalar_t__ nkr_num_slots; scalar_t__ rhead; scalar_t__ nr_hwcur; struct netmap_adapter* na; struct netmap_ring* ring; } ;
struct netmap_adapter {int dummy; } ;


 void* NETMAP_BUF_BASE (struct netmap_adapter*) ;
 void* NMB (struct netmap_adapter*,struct netmap_slot*) ;
 int NS_BUF_CHANGED ;
 scalar_t__ likely (int) ;
 int netmap_ring_reinit (struct netmap_kring*) ;
 scalar_t__ nm_next (scalar_t__,scalar_t__) ;
 int nm_prerr (char*,...) ;

__attribute__((used)) static int
netmap_vp_rxsync_locked(struct netmap_kring *kring, int flags)
{
 struct netmap_adapter *na = kring->na;
 struct netmap_ring *ring = kring->ring;
 u_int nm_i, lim = kring->nkr_num_slots - 1;
 u_int head = kring->rhead;
 int n;

 if (head > lim) {
  nm_prerr("ouch dangerous reset!!!");
  n = netmap_ring_reinit(kring);
  goto done;
 }





 nm_i = kring->nr_hwcur;
 if (nm_i != head) {

  for (n = 0; likely(nm_i != head); n++) {
   struct netmap_slot *slot = &ring->slot[nm_i];
   void *addr = NMB(na, slot);

   if (addr == NETMAP_BUF_BASE(kring->na)) {
    nm_prerr("bad buffer index %d, ignore ?",
     slot->buf_idx);
   }
   slot->flags &= ~NS_BUF_CHANGED;
   nm_i = nm_next(nm_i, lim);
  }
  kring->nr_hwcur = head;
 }

 n = 0;
done:
 return n;
}

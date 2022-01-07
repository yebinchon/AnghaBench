
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct sync_kloop_ring_args {scalar_t__ irq_ctx; scalar_t__ busy_wait; int direct; struct nm_csb_ktoa* csb_ktoa; struct nm_csb_atok* csb_atok; struct netmap_kring* kring; } ;
struct nm_csb_ktoa {int dummy; } ;
struct nm_csb_atok {int dummy; } ;
struct netmap_ring {scalar_t__ tail; int head; int flags; } ;
struct netmap_kring {scalar_t__ nkr_num_slots; scalar_t__ rtail; int (* nm_sync ) (struct netmap_kring*,int ) ;scalar_t__ rhead; int nr_hwtail; int nr_hwcur; } ;


 scalar_t__ NM_ACCESS_ONCE (int ) ;
 int NM_DEBUG_RXSYNC ;
 int SYNC_LOOP_RX_DRY_CYCLES_MAX ;
 scalar_t__ csb_atok_intr_enabled (struct nm_csb_atok*) ;
 int csb_ktoa_kick_enable (struct nm_csb_ktoa*,int) ;
 int eventfd_signal (scalar_t__,int) ;
 int netmap_debug ;
 int netmap_ring_reinit (struct netmap_kring*) ;
 int nm_kr_put (struct netmap_kring*) ;
 int nm_kr_tryget (struct netmap_kring*,int,int *) ;
 int nm_prdis (int,char*,scalar_t__,scalar_t__,int) ;
 int nm_prerr (char*) ;
 scalar_t__ nm_rxsync_prologue (struct netmap_kring*,struct netmap_ring*) ;
 int nm_stld_barrier () ;
 int stub1 (struct netmap_kring*,int ) ;
 int sync_kloop_kernel_read (struct nm_csb_atok*,struct netmap_ring*,scalar_t__) ;
 int sync_kloop_kernel_write (struct nm_csb_ktoa*,int ,scalar_t__) ;
 int sync_kloop_kring_dump (char*,struct netmap_kring*) ;
 scalar_t__ sync_kloop_norxslots (struct netmap_kring*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
netmap_sync_kloop_rx_ring(const struct sync_kloop_ring_args *a)
{

 struct netmap_kring *kring = a->kring;
 struct nm_csb_atok *csb_atok = a->csb_atok;
 struct nm_csb_ktoa *csb_ktoa = a->csb_ktoa;
 struct netmap_ring shadow_ring;
 int dry_cycles = 0;
 bool some_recvd = 0;
 uint32_t num_slots;

 if (unlikely(nm_kr_tryget(kring, 1, ((void*)0)))) {
  return;
 }

 num_slots = kring->nkr_num_slots;


 num_slots = kring->nkr_num_slots;


 if (!a->direct) {
  csb_ktoa_kick_enable(csb_ktoa, 0);
 }

 sync_kloop_kernel_read(csb_atok, &shadow_ring, num_slots);

 for (;;) {
  uint32_t hwtail;


  shadow_ring.tail = kring->rtail;
  if (unlikely(nm_rxsync_prologue(kring, &shadow_ring) >= num_slots)) {

   netmap_ring_reinit(kring);
   if (!a->busy_wait) {
    csb_ktoa_kick_enable(csb_ktoa, 1);
   }
   break;
  }

  if (unlikely(netmap_debug & NM_DEBUG_RXSYNC)) {
   sync_kloop_kring_dump("pre rxsync", kring);
  }

  if (unlikely(kring->nm_sync(kring, shadow_ring.flags))) {
   if (!a->busy_wait) {

    csb_ktoa_kick_enable(csb_ktoa, 1);
   }
   nm_prerr("rxsync() failed");
   break;
  }





  hwtail = NM_ACCESS_ONCE(kring->nr_hwtail);
  sync_kloop_kernel_write(csb_ktoa, kring->nr_hwcur, hwtail);
  if (kring->rtail != hwtail) {
   kring->rtail = hwtail;
   some_recvd = 1;
   dry_cycles = 0;
  } else {
   dry_cycles++;
  }

  if (unlikely(netmap_debug & NM_DEBUG_RXSYNC)) {
   sync_kloop_kring_dump("post rxsync", kring);
  }
  sync_kloop_kernel_read(csb_atok, &shadow_ring, num_slots);
  if (sync_kloop_norxslots(kring, shadow_ring.head)) {
   if (a->busy_wait) {
    break;
   }






   csb_ktoa_kick_enable(csb_ktoa, 1);

   nm_stld_barrier();
   sync_kloop_kernel_read(csb_atok, &shadow_ring, num_slots);
   if (!sync_kloop_norxslots(kring, shadow_ring.head)) {


    csb_ktoa_kick_enable(csb_ktoa, 0);
    continue;
   }
   break;
  }

  hwtail = NM_ACCESS_ONCE(kring->nr_hwtail);
  if (unlikely(hwtail == kring->rhead ||
     dry_cycles >= SYNC_LOOP_RX_DRY_CYCLES_MAX)) {


   nm_prdis(1, "nr_hwtail: %d rhead: %d dry_cycles: %d",
     hwtail, kring->rhead, dry_cycles);
   break;
  }
 }

 nm_kr_put(kring);







}

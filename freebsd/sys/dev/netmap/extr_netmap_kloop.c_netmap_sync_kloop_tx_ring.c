
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sync_kloop_ring_args {scalar_t__ irq_ctx; scalar_t__ busy_wait; int direct; struct nm_csb_ktoa* csb_ktoa; struct nm_csb_atok* csb_atok; struct netmap_kring* kring; } ;
struct nm_csb_ktoa {int dummy; } ;
struct nm_csb_atok {int dummy; } ;
struct netmap_ring {int head; scalar_t__ tail; int flags; } ;
struct netmap_kring {int nkr_num_slots; int nr_hwcur; scalar_t__ rtail; int (* nm_sync ) (struct netmap_kring*,int ) ;scalar_t__ nr_hwtail; scalar_t__ rhead; } ;


 int NAF_FORCE_RECLAIM ;
 int NM_DEBUG_TXSYNC ;
 int PTN_TX_BATCH_LIM (int) ;
 scalar_t__ csb_atok_intr_enabled (struct nm_csb_atok*) ;
 int csb_ktoa_kick_enable (struct nm_csb_ktoa*,int) ;
 int eventfd_signal (scalar_t__,int) ;
 int netmap_debug ;
 int netmap_ring_reinit (struct netmap_kring*) ;
 int nm_kr_put (struct netmap_kring*) ;
 int nm_kr_tryget (struct netmap_kring*,int,int *) ;
 scalar_t__ nm_kr_txempty (struct netmap_kring*) ;
 int nm_kr_txspace (struct netmap_kring*) ;
 int nm_prdis (int,char*,...) ;
 int nm_prerr (char*) ;
 int nm_stld_barrier () ;
 int nm_txsync_prologue (struct netmap_kring*,struct netmap_ring*) ;
 int stub1 (struct netmap_kring*,int ) ;
 int sync_kloop_kernel_read (struct nm_csb_atok*,struct netmap_ring*,int) ;
 int sync_kloop_kernel_write (struct nm_csb_ktoa*,int,scalar_t__) ;
 int sync_kloop_kring_dump (char*,struct netmap_kring*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
netmap_sync_kloop_tx_ring(const struct sync_kloop_ring_args *a)
{
 struct netmap_kring *kring = a->kring;
 struct nm_csb_atok *csb_atok = a->csb_atok;
 struct nm_csb_ktoa *csb_ktoa = a->csb_ktoa;
 struct netmap_ring shadow_ring;
 bool more_txspace = 0;
 uint32_t num_slots;
 int batch;

 if (unlikely(nm_kr_tryget(kring, 1, ((void*)0)))) {
  return;
 }

 num_slots = kring->nkr_num_slots;


 if (!a->direct) {
  csb_ktoa_kick_enable(csb_ktoa, 0);
 }

 sync_kloop_kernel_read(csb_atok, &shadow_ring, num_slots);

 for (;;) {
  batch = shadow_ring.head - kring->nr_hwcur;
  if (batch < 0)
   batch += num_slots;
  if (nm_kr_txspace(kring) <= (num_slots >> 1)) {
   shadow_ring.flags |= NAF_FORCE_RECLAIM;
  }


  shadow_ring.tail = kring->rtail;
  if (unlikely(nm_txsync_prologue(kring, &shadow_ring) >= num_slots)) {

   netmap_ring_reinit(kring);
   if (!a->busy_wait) {
    csb_ktoa_kick_enable(csb_ktoa, 1);
   }
   break;
  }

  if (unlikely(netmap_debug & NM_DEBUG_TXSYNC)) {
   sync_kloop_kring_dump("pre txsync", kring);
  }

  if (unlikely(kring->nm_sync(kring, shadow_ring.flags))) {
   if (!a->busy_wait) {

    csb_ktoa_kick_enable(csb_ktoa, 1);
   }
   nm_prerr("txsync() failed");
   break;
  }






  sync_kloop_kernel_write(csb_ktoa, kring->nr_hwcur,
    kring->nr_hwtail);
  if (kring->rtail != kring->nr_hwtail) {

   kring->rtail = kring->nr_hwtail;
   more_txspace = 1;
  }

  if (unlikely(netmap_debug & NM_DEBUG_TXSYNC)) {
   sync_kloop_kring_dump("post txsync", kring);
  }
  sync_kloop_kernel_read(csb_atok, &shadow_ring, num_slots);
  if (shadow_ring.head == kring->rhead) {
   if (a->busy_wait) {
    break;
   }






   csb_ktoa_kick_enable(csb_ktoa, 1);

   nm_stld_barrier();
   sync_kloop_kernel_read(csb_atok, &shadow_ring, num_slots);
   if (shadow_ring.head != kring->rhead) {


    csb_ktoa_kick_enable(csb_ktoa, 0);
    continue;
   }
   break;
  }

  if (nm_kr_txempty(kring)) {


   nm_prdis(1, "TX ring");
   break;
  }
 }

 nm_kr_put(kring);






}

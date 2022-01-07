
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct netmap_ring {scalar_t__ head; scalar_t__ cur; scalar_t__ tail; } ;
struct netmap_kring {scalar_t__ nkr_num_slots; scalar_t__ nr_hwcur; scalar_t__ nr_hwtail; scalar_t__ rhead; scalar_t__ rtail; scalar_t__ rcur; int name; } ;


 int NM_FAIL_ON (int) ;
 int nm_prdis (int,char*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int nm_prlim (int,char*,int ,scalar_t__,scalar_t__) ;

u_int
nm_txsync_prologue(struct netmap_kring *kring, struct netmap_ring *ring)
{
 u_int head = ring->head;
 u_int cur = ring->cur;
 u_int n = kring->nkr_num_slots;

 nm_prdis(5, "%s kcur %d ktail %d head %d cur %d tail %d",
  kring->name,
  kring->nr_hwcur, kring->nr_hwtail,
  ring->head, ring->cur, ring->tail);

 NM_FAIL_ON(kring->nr_hwcur >= n || kring->rhead >= n ||
     kring->rtail >= n || kring->nr_hwtail >= n);
 if (kring->rtail >= kring->rhead) {

  NM_FAIL_ON(head < kring->rhead || head > kring->rtail);

  NM_FAIL_ON(cur < head || cur > kring->rtail);
 } else {

  NM_FAIL_ON(head > kring->rtail && head < kring->rhead);


  if (head <= kring->rtail) {

   NM_FAIL_ON(cur < head || cur > kring->rtail);
  } else {

   NM_FAIL_ON(cur > kring->rtail && cur < head);
  }
 }
 if (ring->tail != kring->rtail) {
  nm_prlim(5, "%s tail overwritten was %d need %d", kring->name,
   ring->tail, kring->rtail);
  ring->tail = kring->rtail;
 }
 kring->rhead = head;
 kring->rcur = cur;
 return head;
}

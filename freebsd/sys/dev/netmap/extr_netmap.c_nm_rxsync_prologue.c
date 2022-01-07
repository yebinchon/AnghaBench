
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_int ;
struct netmap_ring {scalar_t__ head; scalar_t__ cur; scalar_t__ tail; } ;
struct netmap_kring {scalar_t__ nkr_num_slots; scalar_t__ const nr_hwcur; scalar_t__ const nr_hwtail; scalar_t__ rcur; scalar_t__ rhead; scalar_t__ rtail; int name; } ;


 int NM_FAIL_ON (int) ;
 int nm_prdis (int,char*,int ,scalar_t__ const,scalar_t__ const,scalar_t__,scalar_t__,scalar_t__) ;
 int nm_prlim (int,char*,int ,scalar_t__,scalar_t__) ;

u_int
nm_rxsync_prologue(struct netmap_kring *kring, struct netmap_ring *ring)
{
 uint32_t const n = kring->nkr_num_slots;
 uint32_t head, cur;

 nm_prdis(5,"%s kc %d kt %d h %d c %d t %d",
  kring->name,
  kring->nr_hwcur, kring->nr_hwtail,
  ring->head, ring->cur, ring->tail);







 cur = kring->rcur = ring->cur;
 head = kring->rhead = ring->head;

 NM_FAIL_ON(kring->nr_hwcur >= n || kring->nr_hwtail >= n);


 if (kring->nr_hwtail >= kring->nr_hwcur) {

  NM_FAIL_ON(head < kring->nr_hwcur || head > kring->nr_hwtail);

  NM_FAIL_ON(cur < head || cur > kring->nr_hwtail);
 } else {

  NM_FAIL_ON(head < kring->nr_hwcur && head > kring->nr_hwtail);

  if (head <= kring->nr_hwtail) {

   NM_FAIL_ON(cur < head || cur > kring->nr_hwtail);
  } else {

   NM_FAIL_ON(cur < head && cur > kring->nr_hwtail);
  }
 }
 if (ring->tail != kring->rtail) {
  nm_prlim(5, "%s tail overwritten was %d need %d",
   kring->name,
   ring->tail, kring->rtail);
  ring->tail = kring->rtail;
 }
 return head;
}

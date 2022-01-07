
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct netmap_kring {size_t nkr_num_slots; size_t nr_hwtail; size_t nr_hwcur; int tx_event_lock; int * tx_event; struct mbuf** tx_pool; } ;
struct mbuf {int dummy; } ;


 scalar_t__ MBUF_QUEUED (struct mbuf*) ;
 int MBUF_REFCNT (struct mbuf*) ;
 int m_freem (struct mbuf*) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 size_t nm_next (size_t,size_t const) ;
 int nm_prdis (char*,size_t,size_t) ;
 size_t nm_prev (size_t,size_t const) ;
 int nm_prlim (int,char*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static u_int
generic_netmap_tx_clean(struct netmap_kring *kring, int txqdisc)
{
 u_int const lim = kring->nkr_num_slots - 1;
 u_int nm_i = nm_next(kring->nr_hwtail, lim);
 u_int hwcur = kring->nr_hwcur;
 u_int n = 0;
 struct mbuf **tx_pool = kring->tx_pool;

 nm_prdis("hwcur = %d, hwtail = %d", kring->nr_hwcur, kring->nr_hwtail);

 while (nm_i != hwcur) {
  struct mbuf *m = tx_pool[nm_i];

  if (txqdisc) {
   if (m == ((void*)0)) {


    nm_prlim(3, "Is this happening?");

   } else if (MBUF_QUEUED(m)) {
    break;

   } else if (MBUF_REFCNT(m) != 1) {



    m_freem(m);
    tx_pool[nm_i] = ((void*)0);
   }

  } else {
   if (unlikely(m == ((void*)0))) {
    int event_consumed;


    mtx_lock_spin(&kring->tx_event_lock);
    event_consumed = (kring->tx_event == ((void*)0));
    mtx_unlock_spin(&kring->tx_event_lock);
    if (!event_consumed) {


     break;
    }



   } else if (MBUF_REFCNT(m) != 1) {

    break;
   }
  }

  n++;
  nm_i = nm_next(nm_i, lim);
 }
 kring->nr_hwtail = nm_prev(nm_i, lim);
 nm_prdis("tx completed [%d] -> hwtail %d", n, kring->nr_hwtail);

 return n;
}

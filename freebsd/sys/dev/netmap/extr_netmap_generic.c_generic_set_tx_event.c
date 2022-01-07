
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct netmap_kring {size_t nkr_num_slots; struct mbuf** tx_pool; int tx_event_lock; struct mbuf* tx_event; int nr_hwtail; } ;
struct mbuf {int dummy; } ;


 int MBUF_REFCNT (struct mbuf*) ;
 int SET_MBUF_DESTRUCTOR (struct mbuf*,int ) ;
 int generic_mbuf_destructor ;
 int m_freem (struct mbuf*) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 size_t nm_next (int ,size_t) ;
 int nm_prdis (char*,size_t,struct mbuf*,int) ;
 size_t ring_middle (size_t,size_t,size_t) ;
 int smp_mb () ;

__attribute__((used)) static void
generic_set_tx_event(struct netmap_kring *kring, u_int hwcur)
{
 u_int lim = kring->nkr_num_slots - 1;
 struct mbuf *m;
 u_int e;
 u_int ntc = nm_next(kring->nr_hwtail, lim);

 if (ntc == hwcur) {
  return;
 }
 e = ntc;


 m = kring->tx_pool[e];
 if (m == ((void*)0)) {

  return;
 }

 mtx_lock_spin(&kring->tx_event_lock);
 if (kring->tx_event) {

  mtx_unlock_spin(&kring->tx_event_lock);
  return;
 }

 SET_MBUF_DESTRUCTOR(m, generic_mbuf_destructor);
 kring->tx_event = m;
 mtx_unlock_spin(&kring->tx_event_lock);

 kring->tx_pool[e] = ((void*)0);

 nm_prdis("Request Event at %d mbuf %p refcnt %d", e, m, m ? MBUF_REFCNT(m) : -2 );



 m_freem(m);
 smp_mb();
}

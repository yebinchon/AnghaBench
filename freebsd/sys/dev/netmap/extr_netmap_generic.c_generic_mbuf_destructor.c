
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_kring {int tx_event_lock; struct mbuf* tx_event; } ;
struct netmap_adapter {unsigned int num_tx_rings; struct netmap_kring** tx_rings; } ;
struct mbuf {int dummy; } ;


 int GEN_TX_MBUF_IFP (struct mbuf*) ;
 unsigned int MBUF_TXQ (struct mbuf*) ;
 struct netmap_adapter* NA (int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int netmap_generic_irq (struct netmap_adapter*,unsigned int,int *) ;
 int nm_netmap_on (struct netmap_adapter*) ;
 int nm_prerr (char*,int ) ;
 int nm_prlim (int,char*,struct mbuf*,...) ;
 scalar_t__ unlikely (int) ;
 int void_mbuf_dtor (struct mbuf*,...) ;

__attribute__((used)) static void
generic_mbuf_destructor(struct mbuf *m)
{
 struct netmap_adapter *na = NA(GEN_TX_MBUF_IFP(m));
 struct netmap_kring *kring;
 unsigned int r = MBUF_TXQ(m);
 unsigned int r_orig = r;

 if (unlikely(!nm_netmap_on(na) || r >= na->num_tx_rings)) {
  nm_prerr("Error: no netmap adapter on device %p",
    GEN_TX_MBUF_IFP(m));
  return;
 }
 for (;;) {
  bool match = 0;

  kring = na->tx_rings[r];
  mtx_lock_spin(&kring->tx_event_lock);
  if (kring->tx_event == m) {
   kring->tx_event = ((void*)0);
   match = 1;
  }
  mtx_unlock_spin(&kring->tx_event_lock);

  if (match) {
   if (r != r_orig) {
    nm_prlim(1, "event %p migrated: ring %u --> %u",
          m, r_orig, r);
   }
   break;
  }

  if (++r == na->num_tx_rings) r = 0;

  if (r == r_orig) {
   nm_prlim(1, "Cannot match event %p", m);
   return;
  }
 }



 netmap_generic_irq(na, r, ((void*)0));







}

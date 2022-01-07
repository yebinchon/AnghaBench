
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct netmap_kring {scalar_t__ nr_mode; int rx_queue; } ;
struct netmap_generic_adapter {TYPE_1__* mit; int rxsg; } ;
struct netmap_adapter {size_t num_rx_rings; struct netmap_kring** rx_rings; } ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
struct TYPE_3__ {int mit_pending; } ;


 scalar_t__ MBUF_LEN (struct mbuf*) ;
 size_t MBUF_RXQ (struct mbuf*) ;
 struct netmap_adapter* NA (struct ifnet*) ;
 scalar_t__ NETMAP_BUF_SIZE (struct netmap_adapter*) ;
 scalar_t__ NKR_NETMAP_OFF ;
 scalar_t__ likely (int ) ;
 int m_freem (struct mbuf*) ;
 int mbq_len (int *) ;
 int mbq_safe_enqueue (int *,struct mbuf*) ;
 int netmap_generic_irq (struct netmap_adapter*,size_t,size_t*) ;
 int netmap_generic_mit ;
 int nm_os_mitigation_active (TYPE_1__*) ;
 int nm_os_mitigation_start (TYPE_1__*) ;
 int nm_prlim (int,char*,int) ;
 scalar_t__ unlikely (int) ;

int
generic_rx_handler(struct ifnet *ifp, struct mbuf *m)
{
 struct netmap_adapter *na = NA(ifp);
 struct netmap_generic_adapter *gna = (struct netmap_generic_adapter *)na;
 struct netmap_kring *kring;
 u_int work_done;
 u_int r = MBUF_RXQ(m);

 if (r >= na->num_rx_rings) {
  r = r % na->num_rx_rings;
 }

 kring = na->rx_rings[r];

 if (kring->nr_mode == NKR_NETMAP_OFF) {

  return 0;
 }


 if (unlikely(!gna->rxsg && MBUF_LEN(m) > NETMAP_BUF_SIZE(na))) {



  nm_prlim(2, "Warning: driver pushed up big packet "
    "(size=%d)", (int)MBUF_LEN(m));
  m_freem(m);
 } else if (unlikely(mbq_len(&kring->rx_queue) > 1024)) {
  m_freem(m);
 } else {
  mbq_safe_enqueue(&kring->rx_queue, m);
 }

 if (netmap_generic_mit < 32768) {

  netmap_generic_irq(na, r, &work_done);
 } else {



  if (likely(nm_os_mitigation_active(&gna->mit[r]))) {

   gna->mit[r].mit_pending = 1;
  } else {
   netmap_generic_irq(na, r, &work_done);
   nm_os_mitigation_start(&gna->mit[r]);
  }
 }


 return 1;
}

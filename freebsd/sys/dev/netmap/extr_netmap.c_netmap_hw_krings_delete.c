
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct netmap_adapter {int dummy; } ;
struct mbq {int dummy; } ;
struct TYPE_2__ {struct mbq rx_queue; } ;


 TYPE_1__** NMR (struct netmap_adapter*,int ) ;
 int NR_RX ;
 int mbq_len (struct mbq*) ;
 int mbq_purge (struct mbq*) ;
 int mbq_safe_fini (struct mbq*) ;
 int netmap_krings_delete (struct netmap_adapter*) ;
 size_t netmap_real_rings (struct netmap_adapter*,int ) ;
 int nm_prdis (char*,int ) ;
 size_t nma_get_nrings (struct netmap_adapter*,int ) ;

void
netmap_hw_krings_delete(struct netmap_adapter *na)
{
 u_int lim = netmap_real_rings(na, NR_RX), i;

 for (i = nma_get_nrings(na, NR_RX); i < lim; i++) {
  struct mbq *q = &NMR(na, NR_RX)[i]->rx_queue;
  nm_prdis("destroy sw mbq with len %d", mbq_len(q));
  mbq_purge(q);
  mbq_safe_fini(q);
 }
 netmap_krings_delete(na);
}

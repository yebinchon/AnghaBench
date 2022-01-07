
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct netmap_adapter {size_t num_rx_rings; } ;
struct TYPE_2__ {int rx_queue; } ;


 TYPE_1__** NMR (struct netmap_adapter*,int ) ;
 int NR_RX ;
 int mbq_safe_init (int *) ;
 int netmap_krings_create (struct netmap_adapter*,int ) ;
 size_t netmap_real_rings (struct netmap_adapter*,int ) ;
 int nm_prdis (char*,size_t) ;

int
netmap_hw_krings_create(struct netmap_adapter *na)
{
 int ret = netmap_krings_create(na, 0);
 if (ret == 0) {

  u_int lim = netmap_real_rings(na, NR_RX), i;
  for (i = na->num_rx_rings; i < lim; i++) {
   mbq_safe_init(&NMR(na, NR_RX)[i]->rx_queue);
  }
  nm_prdis("initialized sw rx queue %d", na->num_rx_rings);
 }
 return ret;
}

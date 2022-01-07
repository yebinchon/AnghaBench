
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_adapter {int na_flags; int num_host_rx_rings; int num_host_tx_rings; int * nm_bdg_attach; int * nm_mem; scalar_t__ active_fds; int * nm_notify; int nm_krings_delete; int * nm_krings_create; struct netmap_adapter* pdev; TYPE_1__* ifp; int if_input; scalar_t__ rx_buf_maxsize; } ;
struct TYPE_2__ {int if_input; } ;


 int NAF_HOST_RINGS ;
 scalar_t__ PAGE_SIZE ;
 int * netmap_default_bdg_attach ;
 int * netmap_hw_krings_create ;
 int netmap_hw_krings_delete ;
 int * netmap_mem_get (int *) ;
 int * netmap_notify ;
 int nm_mem ;

int
netmap_attach_common(struct netmap_adapter *na)
{
 if (!na->rx_buf_maxsize) {

  na->rx_buf_maxsize = PAGE_SIZE;
 }







 if (na->na_flags & NAF_HOST_RINGS) {
  if (na->num_host_rx_rings == 0)
   na->num_host_rx_rings = 1;
  if (na->num_host_tx_rings == 0)
   na->num_host_tx_rings = 1;
 }
 if (na->nm_krings_create == ((void*)0)) {




  na->nm_krings_create = netmap_hw_krings_create;
  na->nm_krings_delete = netmap_hw_krings_delete;
 }
 if (na->nm_notify == ((void*)0))
  na->nm_notify = netmap_notify;
 na->active_fds = 0;

 if (na->nm_mem == ((void*)0)) {

  na->nm_mem = netmap_mem_get(&nm_mem);
 }
 return 0;
}

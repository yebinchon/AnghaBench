
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_rxq {scalar_t__ xen_intr_handle; int ring_ref; int gref_head; } ;


 int gnttab_end_foreign_access (int ,int *) ;
 int gnttab_free_grant_references (int ) ;
 int xn_release_rx_bufs (struct netfront_rxq*) ;

__attribute__((used)) static void
disconnect_rxq(struct netfront_rxq *rxq)
{

 xn_release_rx_bufs(rxq);
 gnttab_free_grant_references(rxq->gref_head);
 gnttab_end_foreign_access(rxq->ring_ref, ((void*)0));





 rxq->xen_intr_handle = 0;
}

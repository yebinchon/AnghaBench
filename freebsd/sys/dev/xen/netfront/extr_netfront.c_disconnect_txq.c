
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_txq {int xen_intr_handle; int ring_ref; int gref_head; } ;


 int gnttab_end_foreign_access (int ,int *) ;
 int gnttab_free_grant_references (int ) ;
 int xen_intr_unbind (int *) ;
 int xn_release_tx_bufs (struct netfront_txq*) ;

__attribute__((used)) static void
disconnect_txq(struct netfront_txq *txq)
{

 xn_release_tx_bufs(txq);
 gnttab_free_grant_references(txq->gref_head);
 gnttab_end_foreign_access(txq->ring_ref, ((void*)0));
 xen_intr_unbind(&txq->xen_intr_handle);
}

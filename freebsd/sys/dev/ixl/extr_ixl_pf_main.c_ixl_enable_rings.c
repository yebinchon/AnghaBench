
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixl_vsi {int num_tx_queues; int num_rx_queues; struct ixl_pf* back; } ;
struct ixl_pf {int qtag; } ;


 int ixl_enable_rx_ring (struct ixl_pf*,int *,int) ;
 int ixl_enable_tx_ring (struct ixl_pf*,int *,int) ;

int
ixl_enable_rings(struct ixl_vsi *vsi)
{
 struct ixl_pf *pf = vsi->back;
 int error = 0;

 for (int i = 0; i < vsi->num_tx_queues; i++)
  error = ixl_enable_tx_ring(pf, &pf->qtag, i);

 for (int i = 0; i < vsi->num_rx_queues; i++)
  error = ixl_enable_rx_ring(pf, &pf->qtag, i);

 return (error);
}

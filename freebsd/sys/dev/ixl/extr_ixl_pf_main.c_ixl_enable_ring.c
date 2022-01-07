
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ixl_pf_qtag {int dummy; } ;
struct ixl_pf {int dummy; } ;


 int ixl_enable_rx_ring (struct ixl_pf*,struct ixl_pf_qtag*,int ) ;
 int ixl_enable_tx_ring (struct ixl_pf*,struct ixl_pf_qtag*,int ) ;

int
ixl_enable_ring(struct ixl_pf *pf, struct ixl_pf_qtag *qtag, u16 vsi_qidx)
{
 int error = 0;

 error = ixl_enable_tx_ring(pf, qtag, vsi_qidx);

 if (error)
  return (error);
 error = ixl_enable_rx_ring(pf, qtag, vsi_qidx);
 return (error);
}

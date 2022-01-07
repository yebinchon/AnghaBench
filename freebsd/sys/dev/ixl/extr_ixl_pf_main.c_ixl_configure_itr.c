
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixl_pf {int dummy; } ;


 int ixl_configure_rx_itr (struct ixl_pf*) ;
 int ixl_configure_tx_itr (struct ixl_pf*) ;

void
ixl_configure_itr(struct ixl_pf *pf)
{
 ixl_configure_tx_itr(pf);
 ixl_configure_rx_itr(pf);
}

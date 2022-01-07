
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_sc {int dummy; } ;


 int iavf_configure_rx_itr (struct iavf_sc*) ;
 int iavf_configure_tx_itr (struct iavf_sc*) ;

__attribute__((used)) static void
iavf_configure_itr(struct iavf_sc *sc)
{
 iavf_configure_tx_itr(sc);
 iavf_configure_rx_itr(sc);
}

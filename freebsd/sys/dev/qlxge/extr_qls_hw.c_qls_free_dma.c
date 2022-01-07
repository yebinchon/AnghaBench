
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qla_host_t ;


 int qls_free_mpi_dma (int *) ;
 int qls_free_rss_dma (int *) ;
 int qls_free_rx_dma (int *) ;
 int qls_free_tx_dma (int *) ;

void
qls_free_dma(qla_host_t *ha)
{
 qls_free_rss_dma(ha);
 qls_free_mpi_dma(ha);
 qls_free_tx_dma(ha);
 qls_free_rx_dma(ha);
 return;
}

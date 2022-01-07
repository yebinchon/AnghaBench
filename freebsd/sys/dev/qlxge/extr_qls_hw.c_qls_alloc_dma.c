
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qla_host_t ;


 scalar_t__ qls_alloc_mpi_dma (int *) ;
 scalar_t__ qls_alloc_rss_dma (int *) ;
 scalar_t__ qls_alloc_rx_dma (int *) ;
 scalar_t__ qls_alloc_tx_dma (int *) ;
 int qls_free_mpi_dma (int *) ;
 int qls_free_rx_dma (int *) ;
 int qls_free_tx_dma (int *) ;

int
qls_alloc_dma(qla_host_t *ha)
{
 if (qls_alloc_rx_dma(ha))
  return (-1);

 if (qls_alloc_tx_dma(ha)) {
  qls_free_rx_dma(ha);
  return (-1);
 }

 if (qls_alloc_mpi_dma(ha)) {
  qls_free_tx_dma(ha);
  qls_free_rx_dma(ha);
  return (-1);
 }

 if (qls_alloc_rss_dma(ha)) {
  qls_free_mpi_dma(ha);
  qls_free_tx_dma(ha);
  qls_free_rx_dma(ha);
  return (-1);
 }

 return (0);
}

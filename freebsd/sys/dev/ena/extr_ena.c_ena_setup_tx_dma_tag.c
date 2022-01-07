
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_adapter {int tx_buf_tag; scalar_t__ max_tx_sgl_size; int dma_width; int pdev; } ;


 int BUS_SPACE_MAXADDR ;
 int ENA_DMA_BIT_MASK (int ) ;
 int ENA_TSO_MAXSIZE ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,scalar_t__,int ,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;

__attribute__((used)) static int
ena_setup_tx_dma_tag(struct ena_adapter *adapter)
{
 int ret;


 ret = bus_dma_tag_create(bus_get_dma_tag(adapter->pdev),
     1, 0,
     ENA_DMA_BIT_MASK(adapter->dma_width),
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     ENA_TSO_MAXSIZE,
     adapter->max_tx_sgl_size - 1,
     ENA_TSO_MAXSIZE,
     0,
     ((void*)0),
     ((void*)0),
     &adapter->tx_buf_tag);

 return (ret);
}

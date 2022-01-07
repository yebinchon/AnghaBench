
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_adapter {int rx_buf_tag; int max_rx_sgl_size; int dma_width; int pdev; } ;


 int BUS_SPACE_MAXADDR ;
 int ENA_DMA_BIT_MASK (int ) ;
 int MJUM16BYTES ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;

__attribute__((used)) static int
ena_setup_rx_dma_tag(struct ena_adapter *adapter)
{
 int ret;


 ret = bus_dma_tag_create(bus_get_dma_tag(adapter->pdev),
     1, 0,
     ENA_DMA_BIT_MASK(adapter->dma_width),
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MJUM16BYTES,
     adapter->max_rx_sgl_size,
     MJUM16BYTES,
     0,
     ((void*)0),
     ((void*)0),
     &adapter->rx_buf_tag);

 return (ret);
}

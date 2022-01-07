
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_adapter {int * tx_buf_tag; } ;


 int bus_dma_tag_destroy (int *) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int
ena_free_tx_dma_tag(struct ena_adapter *adapter)
{
 int ret;

 ret = bus_dma_tag_destroy(adapter->tx_buf_tag);

 if (likely(ret == 0))
  adapter->tx_buf_tag = ((void*)0);

 return (ret);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_desc_if {int wrapper_rx_desc_init; int wrapper_tx_desc_init; int unmap_rdata; int map_rx_buffer; int map_tx_skb; int free_ring_resources; int alloc_ring_resources; } ;


 int DBGPR (char*) ;
 int xgbe_alloc_ring_resources ;
 int xgbe_free_ring_resources ;
 int xgbe_map_rx_buffer ;
 int xgbe_map_tx_skb ;
 int xgbe_unmap_rdata ;
 int xgbe_wrapper_rx_descriptor_init ;
 int xgbe_wrapper_tx_descriptor_init ;

void xgbe_init_function_ptrs_desc(struct xgbe_desc_if *desc_if)
{
 DBGPR("-->xgbe_init_function_ptrs_desc\n");

 desc_if->alloc_ring_resources = xgbe_alloc_ring_resources;
 desc_if->free_ring_resources = xgbe_free_ring_resources;
 desc_if->map_tx_skb = xgbe_map_tx_skb;
 desc_if->map_rx_buffer = xgbe_map_rx_buffer;
 desc_if->unmap_rdata = xgbe_unmap_rdata;
 desc_if->wrapper_tx_desc_init = xgbe_wrapper_tx_descriptor_init;
 desc_if->wrapper_rx_desc_init = xgbe_wrapper_rx_descriptor_init;

 DBGPR("<--xgbe_init_function_ptrs_desc\n");
}

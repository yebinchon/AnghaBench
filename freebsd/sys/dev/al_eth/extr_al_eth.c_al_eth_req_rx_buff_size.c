
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_eth_adapter {int max_rx_buff_alloc_size; int rx_mbuf_sz; } ;


 int MCLBYTES ;
 int MJUM16BYTES ;
 int MJUM9BYTES ;
 int MJUMPAGESIZE ;

__attribute__((used)) static void
al_eth_req_rx_buff_size(struct al_eth_adapter *adapter, int size)
{






 adapter->rx_mbuf_sz = MCLBYTES;
 if (size > 2048) {
  if (adapter->max_rx_buff_alloc_size > 2048)
   adapter->rx_mbuf_sz = MJUMPAGESIZE;
  else
   return;
 }
 if (size > 4096) {
  if (adapter->max_rx_buff_alloc_size > 4096)
   adapter->rx_mbuf_sz = MJUM9BYTES;
  else
   return;
 }
 if (size > 9216) {
  if (adapter->max_rx_buff_alloc_size > 9216)
   adapter->rx_mbuf_sz = MJUM16BYTES;
  else
   return;
 }
}

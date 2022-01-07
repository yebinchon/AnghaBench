
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_counter {int rx_frames; int tx_frames; int rx_bytes; int tx_bytes; } ;
struct ib_pma_portcounters_ext {int port_rcv_packets; int port_xmit_packets; void* port_rcv_data; void* port_xmit_data; } ;
struct ib_pma_portcounters {int port_rcv_packets; int port_xmit_packets; int port_rcv_data; int port_xmit_data; } ;
typedef int __be16 ;


 int ASSIGN_32BIT_COUNTER (int ,int) ;


 int be64_to_cpu (int ) ;
 void* cpu_to_be64 (int) ;

__attribute__((used)) static void edit_counter(struct mlx4_counter *cnt, void *counters,
    __be16 attr_id)
{
 switch (attr_id) {
 case 129:
 {
  struct ib_pma_portcounters *pma_cnt =
   (struct ib_pma_portcounters *)counters;

  ASSIGN_32BIT_COUNTER(pma_cnt->port_xmit_data,
         (be64_to_cpu(cnt->tx_bytes) >> 2));
  ASSIGN_32BIT_COUNTER(pma_cnt->port_rcv_data,
         (be64_to_cpu(cnt->rx_bytes) >> 2));
  ASSIGN_32BIT_COUNTER(pma_cnt->port_xmit_packets,
         be64_to_cpu(cnt->tx_frames));
  ASSIGN_32BIT_COUNTER(pma_cnt->port_rcv_packets,
         be64_to_cpu(cnt->rx_frames));
  break;
 }
 case 128:
 {
  struct ib_pma_portcounters_ext *pma_cnt_ext =
   (struct ib_pma_portcounters_ext *)counters;

  pma_cnt_ext->port_xmit_data =
   cpu_to_be64(be64_to_cpu(cnt->tx_bytes) >> 2);
  pma_cnt_ext->port_rcv_data =
   cpu_to_be64(be64_to_cpu(cnt->rx_bytes) >> 2);
  pma_cnt_ext->port_xmit_packets = cnt->tx_frames;
  pma_cnt_ext->port_rcv_packets = cnt->rx_frames;
  break;
 }
 default:
  break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ib_pma_portcounters_ext {void* port_multicast_rcv_packets; void* port_multicast_xmit_packets; void* port_unicast_rcv_packets; void* port_unicast_xmit_packets; void* port_rcv_packets; void* port_xmit_packets; void* port_rcv_data; void* port_xmit_data; } ;
struct TYPE_8__ {int packets; int octets; } ;
struct TYPE_7__ {int packets; int octets; } ;
struct TYPE_6__ {int packets; int octets; } ;
struct TYPE_5__ {int packets; int octets; } ;


 void* MLX5_GET64_BE (int ,void*,int ) ;
 int MLX5_SUM_CNT (void*,int ,int ) ;
 void* cpu_to_be64 (int) ;
 int query_vport_counter_out ;
 TYPE_4__ received_ib_multicast ;
 TYPE_3__ received_ib_unicast ;
 TYPE_2__ transmitted_ib_multicast ;
 TYPE_1__ transmitted_ib_unicast ;

__attribute__((used)) static void pma_cnt_ext_assign(struct ib_pma_portcounters_ext *pma_cnt_ext,
          void *out)
{




 pma_cnt_ext->port_xmit_data =
  cpu_to_be64((MLX5_GET64(query_vport_counter_out, out, transmitted_ib_unicast.octets) + MLX5_GET64(query_vport_counter_out, out, transmitted_ib_multicast.octets)) >> 2);

 pma_cnt_ext->port_rcv_data =
  cpu_to_be64((MLX5_GET64(query_vport_counter_out, out, received_ib_unicast.octets) + MLX5_GET64(query_vport_counter_out, out, received_ib_multicast.octets)) >> 2);

 pma_cnt_ext->port_xmit_packets =
  cpu_to_be64((MLX5_GET64(query_vport_counter_out, out, transmitted_ib_unicast.packets) + MLX5_GET64(query_vport_counter_out, out, transmitted_ib_multicast.packets)));

 pma_cnt_ext->port_rcv_packets =
  cpu_to_be64((MLX5_GET64(query_vport_counter_out, out, received_ib_unicast.packets) + MLX5_GET64(query_vport_counter_out, out, received_ib_multicast.packets)));

 pma_cnt_ext->port_unicast_xmit_packets =
  MLX5_GET64_BE(query_vport_counter_out,
         out, transmitted_ib_unicast.packets);
 pma_cnt_ext->port_unicast_rcv_packets =
  MLX5_GET64_BE(query_vport_counter_out,
         out, received_ib_unicast.packets);
 pma_cnt_ext->port_multicast_xmit_packets =
  MLX5_GET64_BE(query_vport_counter_out,
         out, transmitted_ib_multicast.packets);
 pma_cnt_ext->port_multicast_rcv_packets =
  MLX5_GET64_BE(query_vport_counter_out,
         out, received_ib_multicast.packets);
}

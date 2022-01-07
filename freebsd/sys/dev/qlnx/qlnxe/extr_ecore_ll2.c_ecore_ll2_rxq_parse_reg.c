
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int * data; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_12__ {int placement_offset; TYPE_4__ opaque_data; int vlan; int packet_length; TYPE_2__ err_flags; TYPE_1__ parse_flags; } ;
union core_rx_cqe_union {TYPE_6__ rx_cqe_fp; } ;
struct TYPE_11__ {int placement_offset; } ;
struct TYPE_9__ {void* packet_length; } ;
struct ecore_ll2_comp_rx_data {TYPE_5__ u; void* opaque_data_1; void* opaque_data_0; void* vlan; TYPE_3__ length; void* err_flags; void* parse_flags; } ;


 void* OSAL_LE16_TO_CPU (int ) ;
 void* OSAL_LE32_TO_CPU (int ) ;

__attribute__((used)) static void ecore_ll2_rxq_parse_reg(union core_rx_cqe_union *p_cqe,
        struct ecore_ll2_comp_rx_data *data)
{
 data->parse_flags =
  OSAL_LE16_TO_CPU(p_cqe->rx_cqe_fp.parse_flags.flags);
 data->err_flags =
  OSAL_LE16_TO_CPU(p_cqe->rx_cqe_fp.err_flags.flags);
 data->length.packet_length =
  OSAL_LE16_TO_CPU(p_cqe->rx_cqe_fp.packet_length);
 data->vlan =
  OSAL_LE16_TO_CPU(p_cqe->rx_cqe_fp.vlan);
 data->opaque_data_0 =
  OSAL_LE32_TO_CPU(p_cqe->rx_cqe_fp.opaque_data.data[0]);
 data->opaque_data_1 =
  OSAL_LE32_TO_CPU(p_cqe->rx_cqe_fp.opaque_data.data[1]);
 data->u.placement_offset =
  p_cqe->rx_cqe_fp.placement_offset;
}

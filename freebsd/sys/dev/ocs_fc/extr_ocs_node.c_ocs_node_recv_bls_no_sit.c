
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ocs_node_t ;
struct TYPE_7__ {TYPE_2__* header; } ;
typedef TYPE_3__ ocs_hw_sequence_t ;
typedef int int32_t ;
typedef int fc_header_t ;
struct TYPE_5__ {int * virt; } ;
struct TYPE_6__ {TYPE_1__ dma; } ;


 int node_printf (int *,char*,int ,int ,int ,int ,int ,int ) ;
 int ocs_htobe32 (int ) ;

int32_t
ocs_node_recv_bls_no_sit(ocs_node_t *node, ocs_hw_sequence_t *seq)
{
 fc_header_t *hdr = seq->header->dma.virt;

 node_printf(node, "Dropping frame hdr = %08x %08x %08x %08x %08x %08x\n",
      ocs_htobe32(((uint32_t *)hdr)[0]),
      ocs_htobe32(((uint32_t *)hdr)[1]),
      ocs_htobe32(((uint32_t *)hdr)[2]),
      ocs_htobe32(((uint32_t *)hdr)[3]),
      ocs_htobe32(((uint32_t *)hdr)[4]),
      ocs_htobe32(((uint32_t *)hdr)[5]));

 return -1;
}

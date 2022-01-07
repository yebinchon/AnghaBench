
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int os; } ;
typedef TYPE_5__ sli4_t ;
struct TYPE_11__ {int buffer_address_high; int buffer_address_low; } ;
struct TYPE_12__ {TYPE_2__ data; } ;
struct TYPE_13__ {size_t buffer_length; TYPE_3__ u; int bde_type; } ;
struct TYPE_10__ {int command; } ;
struct TYPE_15__ {TYPE_4__ bde_loop_map; TYPE_1__ hdr; } ;
typedef TYPE_6__ sli4_cmd_read_topology_t ;
struct TYPE_16__ {size_t size; void* virt; int phys; } ;
typedef TYPE_7__ ocs_dma_t ;
typedef int int32_t ;


 int SLI4_BDE_TYPE_BDE_64 ;
 int SLI4_MBOX_COMMAND_READ_TOPOLOGY ;
 size_t SLI4_MIN_LOOP_MAP_BYTES ;
 int ocs_addr32_hi (int ) ;
 int ocs_addr32_lo (int ) ;
 int ocs_log_test (int ,char*,size_t) ;
 int ocs_memset (void*,int ,size_t) ;

int32_t
sli_cmd_read_topology(sli4_t *sli4, void *buf, size_t size, ocs_dma_t *dma)
{
 sli4_cmd_read_topology_t *read_topo = buf;

 ocs_memset(buf, 0, size);

 read_topo->hdr.command = SLI4_MBOX_COMMAND_READ_TOPOLOGY;

 if (dma && dma->size) {
  if (dma->size < SLI4_MIN_LOOP_MAP_BYTES) {
   ocs_log_test(sli4->os, "loop map buffer too small %jd\n",
     dma->size);
   return 0;
  }

  ocs_memset(dma->virt, 0, dma->size);

  read_topo->bde_loop_map.bde_type = SLI4_BDE_TYPE_BDE_64;
  read_topo->bde_loop_map.buffer_length = dma->size;
  read_topo->bde_loop_map.u.data.buffer_address_low = ocs_addr32_lo(dma->phys);
  read_topo->bde_loop_map.u.data.buffer_address_high = ocs_addr32_hi(dma->phys);
 }

 return sizeof(sli4_cmd_read_topology_t);
}

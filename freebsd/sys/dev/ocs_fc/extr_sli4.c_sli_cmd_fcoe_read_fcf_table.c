
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_11__ {scalar_t__ port_type; int os; } ;
typedef TYPE_2__ sli4_t ;
struct TYPE_10__ {scalar_t__ request_length; int subsystem; int opcode; } ;
struct TYPE_12__ {int fcf_index; TYPE_1__ hdr; } ;
typedef TYPE_3__ sli4_req_fcoe_read_fcf_table_t ;
struct TYPE_13__ {scalar_t__ size; TYPE_3__* virt; } ;
typedef TYPE_4__ ocs_dma_t ;
typedef int int32_t ;


 int SLI4_OPC_FCOE_READ_FCF_TABLE ;
 scalar_t__ SLI4_PORT_TYPE_FC ;
 int SLI4_SUBSYSTEM_FCFCOE ;
 int ocs_log_test (int ,char*) ;
 int ocs_memset (TYPE_3__*,int ,int) ;
 int sli_cmd_sli_config (TYPE_2__*,void*,size_t,int ,TYPE_4__*) ;

int32_t
sli_cmd_fcoe_read_fcf_table(sli4_t *sli4, void *buf, size_t size, ocs_dma_t *dma, uint16_t index)
{
 sli4_req_fcoe_read_fcf_table_t *read_fcf = ((void*)0);

 if (SLI4_PORT_TYPE_FC != sli4->port_type) {
  ocs_log_test(sli4->os, "FCOE_READ_FCF_TABLE only supported on FC\n");
  return -1;
 }

 read_fcf = dma->virt;

 ocs_memset(read_fcf, 0, sizeof(sli4_req_fcoe_read_fcf_table_t));

 read_fcf->hdr.opcode = SLI4_OPC_FCOE_READ_FCF_TABLE;
 read_fcf->hdr.subsystem = SLI4_SUBSYSTEM_FCFCOE;
 read_fcf->hdr.request_length = dma->size -
  sizeof(sli4_req_fcoe_read_fcf_table_t);
 read_fcf->fcf_index = index;

 return sli_cmd_sli_config(sli4, buf, size, 0, dma);
}

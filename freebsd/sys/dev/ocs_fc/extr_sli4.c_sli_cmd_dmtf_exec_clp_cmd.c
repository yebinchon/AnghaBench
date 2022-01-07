
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_10__ {scalar_t__ port_type; } ;
typedef TYPE_2__ sli4_t ;
typedef int sli4_req_hdr_t ;
struct TYPE_9__ {int request_length; scalar_t__ version; scalar_t__ timeout; int subsystem; int opcode; } ;
struct TYPE_11__ {void* resp_buf_addr_high; void* resp_buf_addr_low; int resp_buf_length; void* cmd_buf_addr_high; void* cmd_buf_addr_low; int cmd_buf_length; TYPE_1__ hdr; } ;
typedef TYPE_3__ sli4_req_dmtf_exec_clp_cmd_t ;
struct TYPE_12__ {int phys; int size; } ;
typedef TYPE_4__ ocs_dma_t ;
typedef int int32_t ;


 int SLI4_OPC_DMTF_EXEC_CLP_CMD ;
 scalar_t__ SLI4_PORT_TYPE_FC ;
 int SLI4_SUBSYSTEM_DMTF ;
 void* ocs_addr32_hi (int ) ;
 void* ocs_addr32_lo (int ) ;
 int sli_cmd_sli_config (TYPE_2__*,void*,size_t,int,int *) ;

int32_t
sli_cmd_dmtf_exec_clp_cmd(sli4_t *sli4, void *buf, size_t size,
  ocs_dma_t *cmd,
  ocs_dma_t *resp)
{
 sli4_req_dmtf_exec_clp_cmd_t *clp_cmd = ((void*)0);
 uint32_t sli_config_off = 0;

 if (SLI4_PORT_TYPE_FC == sli4->port_type) {
  sli_config_off = sli_cmd_sli_config(sli4, buf, size,
    sizeof (sli4_req_dmtf_exec_clp_cmd_t),
    ((void*)0));
 }

 clp_cmd = (sli4_req_dmtf_exec_clp_cmd_t*)((uint8_t *)buf + sli_config_off);

 clp_cmd->hdr.opcode = SLI4_OPC_DMTF_EXEC_CLP_CMD;
 clp_cmd->hdr.subsystem = SLI4_SUBSYSTEM_DMTF;
 clp_cmd->hdr.request_length = sizeof(sli4_req_dmtf_exec_clp_cmd_t) -
     sizeof(sli4_req_hdr_t);
 clp_cmd->hdr.timeout = 0;
 clp_cmd->hdr.version = 0;
 clp_cmd->cmd_buf_length = cmd->size;
 clp_cmd->cmd_buf_addr_low = ocs_addr32_lo(cmd->phys);
 clp_cmd->cmd_buf_addr_high = ocs_addr32_hi(cmd->phys);
 clp_cmd->resp_buf_length = resp->size;
 clp_cmd->resp_buf_addr_low = ocs_addr32_lo(resp->phys);
 clp_cmd->resp_buf_addr_high = ocs_addr32_hi(resp->phys);

 return(sli_config_off + sizeof(sli4_req_dmtf_exec_clp_cmd_t));
}

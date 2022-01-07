
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {int if_type; scalar_t__ port_type; int os; } ;
typedef TYPE_2__ sli4_t ;
typedef int sli4_res_common_get_port_name_t ;
typedef int sli4_req_hdr_t ;
struct TYPE_6__ {int request_length; int version; int subsystem; int opcode; } ;
struct TYPE_8__ {int pt; TYPE_1__ hdr; } ;
typedef TYPE_3__ sli4_req_common_get_port_name_t ;
typedef int int32_t ;






 int SLI4_OPC_COMMON_GET_PORT_NAME ;
 scalar_t__ SLI4_PORT_TYPE_FC ;
 int SLI4_SUBSYSTEM_COMMON ;
 int max (int,int) ;
 int ocs_log_test (int ,char*,int) ;
 int sli_cmd_sli_config (TYPE_2__*,void*,size_t,int,int *) ;

__attribute__((used)) static int32_t
sli_cmd_common_get_port_name(sli4_t *sli4, void *buf, size_t size)
{
 sli4_req_common_get_port_name_t *port_name;
 uint32_t sli_config_off = 0;
 uint32_t payload_size;
 uint8_t version = 0;
 uint8_t pt = 0;


 switch (sli4->if_type) {
 case 131:
 case 130:
  version = 0;
  break;
 case 129:
 case 128:
  version = 1;
  break;
 default:
  ocs_log_test(sli4->os, "unsupported IF_TYPE %d\n", sli4->if_type);
  return 0;
 }


 payload_size = max(sizeof(sli4_req_common_get_port_name_t),
      sizeof(sli4_res_common_get_port_name_t));

 if (SLI4_PORT_TYPE_FC == sli4->port_type) {
  sli_config_off = sli_cmd_sli_config(sli4, buf, size,
    payload_size,
    ((void*)0));

  pt = 1;
 }

 port_name = (sli4_req_common_get_port_name_t *)((uint8_t *)buf + sli_config_off);

 port_name->hdr.opcode = SLI4_OPC_COMMON_GET_PORT_NAME;
 port_name->hdr.subsystem = SLI4_SUBSYSTEM_COMMON;
 port_name->hdr.request_length = sizeof(sli4_req_hdr_t) + (version * sizeof(uint32_t));
 port_name->hdr.version = version;


 if (version == 1) {
  port_name->pt = pt;
 }

 return sli_config_off + port_name->hdr.request_length;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_7__ {scalar_t__ port_type; } ;
typedef TYPE_2__ sli4_t ;
struct TYPE_6__ {int request_length; int subsystem; int opcode; } ;
struct TYPE_8__ {int resource_type; TYPE_1__ hdr; } ;
typedef TYPE_3__ sli4_req_common_get_resource_extent_info_t ;
typedef int int32_t ;


 int SLI4_OPC_COMMON_GET_RESOURCE_EXTENT_INFO ;
 scalar_t__ SLI4_PORT_TYPE_FC ;
 int SLI4_SUBSYSTEM_COMMON ;
 int sli_cmd_sli_config (TYPE_2__*,void*,size_t,int,int *) ;

int32_t
sli_cmd_common_get_resource_extent_info(sli4_t *sli4, void *buf, size_t size, uint16_t rtype)
{
 sli4_req_common_get_resource_extent_info_t *extent = ((void*)0);
 uint32_t sli_config_off = 0;

 if (SLI4_PORT_TYPE_FC == sli4->port_type) {
  sli_config_off = sli_cmd_sli_config(sli4, buf, size,
    sizeof(sli4_req_common_get_resource_extent_info_t),
    ((void*)0));
 }

 extent = (sli4_req_common_get_resource_extent_info_t *)((uint8_t *)buf + sli_config_off);

 extent->hdr.opcode = SLI4_OPC_COMMON_GET_RESOURCE_EXTENT_INFO;
 extent->hdr.subsystem = SLI4_SUBSYSTEM_COMMON;
 extent->hdr.request_length = 4;

 extent->resource_type = rtype;

 return(sli_config_off + sizeof(sli4_req_common_get_resource_extent_info_t));
}

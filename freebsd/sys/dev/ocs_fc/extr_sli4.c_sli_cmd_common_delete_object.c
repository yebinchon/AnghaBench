
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ port_type; } ;
typedef TYPE_2__ sli4_t ;
struct TYPE_6__ {int request_length; scalar_t__ version; scalar_t__ timeout; int subsystem; int opcode; } ;
struct TYPE_8__ {int object_name; TYPE_1__ hdr; } ;
typedef TYPE_3__ sli4_req_common_delete_object_t ;
typedef int int32_t ;


 int SLI4_OPC_COMMON_DELETE_OBJECT ;
 scalar_t__ SLI4_PORT_TYPE_FC ;
 int SLI4_SUBSYSTEM_COMMON ;
 int ocs_strncpy (int ,char*,int) ;
 int sli_cmd_sli_config (TYPE_2__*,void*,size_t,int,int *) ;

int32_t
sli_cmd_common_delete_object(sli4_t *sli4, void *buf, size_t size,
  char *object_name)
{
 sli4_req_common_delete_object_t *del_obj = ((void*)0);
 uint32_t sli_config_off = 0;

 if (SLI4_PORT_TYPE_FC == sli4->port_type) {
  sli_config_off = sli_cmd_sli_config(sli4, buf, size,
    sizeof (sli4_req_common_delete_object_t),
    ((void*)0));
 }

 del_obj = (sli4_req_common_delete_object_t *)((uint8_t *)buf + sli_config_off);

 del_obj->hdr.opcode = SLI4_OPC_COMMON_DELETE_OBJECT;
 del_obj->hdr.subsystem = SLI4_SUBSYSTEM_COMMON;
 del_obj->hdr.request_length = sizeof(*del_obj);
 del_obj->hdr.timeout = 0;
 del_obj->hdr.version = 0;

 ocs_strncpy(del_obj->object_name, object_name, sizeof(del_obj->object_name));
 return(sli_config_off + sizeof(sli4_req_common_delete_object_t));
}

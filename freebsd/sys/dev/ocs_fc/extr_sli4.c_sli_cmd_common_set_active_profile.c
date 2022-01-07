
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
typedef int sli4_res_common_set_active_profile_t ;
typedef int sli4_req_hdr_t ;
struct TYPE_6__ {int request_length; scalar_t__ version; int subsystem; int opcode; } ;
struct TYPE_8__ {int fd; int active_profile_id; TYPE_1__ hdr; } ;
typedef TYPE_3__ sli4_req_common_set_active_profile_t ;
typedef int int32_t ;


 int SLI4_OPC_COMMON_SET_ACTIVE_PROFILE ;
 scalar_t__ SLI4_PORT_TYPE_FC ;
 int SLI4_SUBSYSTEM_COMMON ;
 int max (int,int) ;
 int sli_cmd_sli_config (TYPE_2__*,void*,size_t,int,int *) ;

int32_t
sli_cmd_common_set_active_profile(sli4_t *sli4, void *buf, size_t size,
                                  uint32_t fd, uint32_t active_profile_id)
{
        sli4_req_common_set_active_profile_t *req = ((void*)0);
        uint32_t cmd_off = 0;
        uint32_t payload_size;


        payload_size = max(sizeof(sli4_req_common_set_active_profile_t),
                           sizeof(sli4_res_common_set_active_profile_t));

 if (SLI4_PORT_TYPE_FC == sli4->port_type) {
  cmd_off = sli_cmd_sli_config(sli4, buf, size,
    payload_size,
    ((void*)0));
 }

        req = (sli4_req_common_set_active_profile_t *)
                ((uint8_t*)buf + cmd_off);

        req->hdr.opcode = SLI4_OPC_COMMON_SET_ACTIVE_PROFILE;
        req->hdr.subsystem = SLI4_SUBSYSTEM_COMMON;
        req->hdr.request_length = payload_size - sizeof(sli4_req_hdr_t);
        req->hdr.version = 0;
        req->fd = fd;
        req->active_profile_id = active_profile_id;

        return(cmd_off + sizeof(sli4_req_common_set_active_profile_t));
}

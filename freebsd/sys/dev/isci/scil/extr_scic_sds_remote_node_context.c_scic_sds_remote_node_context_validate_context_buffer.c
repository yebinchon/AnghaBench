
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ attached_stp_target; } ;
struct TYPE_12__ {TYPE_1__ bits; } ;
struct TYPE_13__ {TYPE_2__ u; } ;
struct TYPE_17__ {int owning_port; scalar_t__ is_direct_attached; TYPE_3__ target_protocols; } ;
struct TYPE_16__ {int remote_node_index; TYPE_8__* device; } ;
struct TYPE_14__ {int is_valid; } ;
struct TYPE_15__ {TYPE_4__ ssp; } ;
typedef TYPE_5__ SCU_REMOTE_NODE_CONTEXT_T ;
typedef TYPE_6__ SCIC_SDS_REMOTE_NODE_CONTEXT_T ;


 int SCU_CONTEXT_COMMAND_POST_RNC_32 ;
 int SCU_CONTEXT_COMMAND_POST_RNC_96 ;
 int TRUE ;
 TYPE_5__* scic_sds_controller_get_remote_node_context_buffer (int ,int ) ;
 int scic_sds_port_setup_transports (int ,int ) ;
 int scic_sds_remote_device_get_controller (TYPE_8__*) ;
 int scic_sds_remote_device_post_request (TYPE_8__*,int ) ;

__attribute__((used)) static
void scic_sds_remote_node_context_validate_context_buffer(
   SCIC_SDS_REMOTE_NODE_CONTEXT_T * this_rnc
)
{
   SCU_REMOTE_NODE_CONTEXT_T *rnc_buffer;

   rnc_buffer = scic_sds_controller_get_remote_node_context_buffer(
      scic_sds_remote_device_get_controller(this_rnc->device),
      this_rnc->remote_node_index
         );

   rnc_buffer->ssp.is_valid = TRUE;

   if (
      !this_rnc->device->is_direct_attached
         && this_rnc->device->target_protocols.u.bits.attached_stp_target
         )
   {
      scic_sds_remote_device_post_request(
         this_rnc->device,
         SCU_CONTEXT_COMMAND_POST_RNC_96
            );
   }
   else
   {
      scic_sds_remote_device_post_request(
         this_rnc->device,
         SCU_CONTEXT_COMMAND_POST_RNC_32
            );

      if (this_rnc->device->is_direct_attached)
      {
         scic_sds_port_setup_transports(
            this_rnc->device->owning_port,
            this_rnc->remote_node_index
               );
      }
   }
}

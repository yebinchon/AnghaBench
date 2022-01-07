
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int device; int remote_node_index; } ;
struct TYPE_6__ {int is_valid; } ;
struct TYPE_7__ {TYPE_1__ ssp; } ;
typedef TYPE_2__ SCU_REMOTE_NODE_CONTEXT_T ;
typedef TYPE_3__ SCIC_SDS_REMOTE_NODE_CONTEXT_T ;


 int FALSE ;
 int SCU_CONTEXT_COMMAND_POST_RNC_INVALIDATE ;
 TYPE_2__* scic_sds_controller_get_remote_node_context_buffer (int ,int ) ;
 int scic_sds_remote_device_get_controller (int ) ;
 int scic_sds_remote_device_post_request (int ,int ) ;

__attribute__((used)) static
void scic_sds_remote_node_context_invalidate_context_buffer(
   SCIC_SDS_REMOTE_NODE_CONTEXT_T * this_rnc
)
{
   SCU_REMOTE_NODE_CONTEXT_T *rnc_buffer;

   rnc_buffer = scic_sds_controller_get_remote_node_context_buffer(
      scic_sds_remote_device_get_controller(this_rnc->device),
      this_rnc->remote_node_index
         );

   rnc_buffer->ssp.is_valid = FALSE;

   scic_sds_remote_device_post_request(
      this_rnc->device,
      SCU_CONTEXT_COMMAND_POST_RNC_INVALIDATE
         );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int completion_queue_entries; int remote_node_entries; int task_context_entries; int uf_control; int * memory_descriptors; } ;
typedef int SCU_TASK_CONTEXT_T ;
typedef int SCU_REMOTE_NODE_CONTEXT_T ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int SCI_FAILURE_UNSUPPORTED_INFORMATION_FIELD ;
 int SCI_MDE_ATTRIBUTE_CACHEABLE ;
 int SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS ;
 int SCI_SUCCESS ;
 int SCU_COMPLETION_RAM_ALIGNMENT ;
 size_t SCU_MDE_COMPLETION_QUEUE ;
 size_t SCU_MDE_REMOTE_NODE_CONTEXT ;
 size_t SCU_MDE_TASK_CONTEXT ;
 size_t SCU_MDE_UF_BUFFER ;
 int SCU_REMOTE_NODE_CONTEXT_ALIGNMENT ;
 int SCU_TASK_CONTEXT_ALIGNMENT ;
 int SCU_UNSOLICITED_FRAME_BUFFER_ALIGNMENT ;
 scalar_t__ sci_base_mde_is_valid (int *,int ,int,int) ;
 int scic_sds_unsolicited_frame_control_get_mde_size (int ) ;

SCI_STATUS scic_sds_controller_validate_memory_descriptor_table(
   SCIC_SDS_CONTROLLER_T *this_controller
)
{
   BOOL mde_list_valid;

   mde_list_valid = sci_base_mde_is_valid(
      &this_controller->memory_descriptors[SCU_MDE_COMPLETION_QUEUE],
      SCU_COMPLETION_RAM_ALIGNMENT,
      (sizeof(U32) * this_controller->completion_queue_entries),
      (SCI_MDE_ATTRIBUTE_CACHEABLE | SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS)
   );

   if (mde_list_valid == FALSE)
      return SCI_FAILURE_UNSUPPORTED_INFORMATION_FIELD;

   mde_list_valid = sci_base_mde_is_valid(
      &this_controller->memory_descriptors[SCU_MDE_REMOTE_NODE_CONTEXT],
      SCU_REMOTE_NODE_CONTEXT_ALIGNMENT,
      this_controller->remote_node_entries * sizeof(SCU_REMOTE_NODE_CONTEXT_T),
      SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS
   );

   if (mde_list_valid == FALSE)
      return SCI_FAILURE_UNSUPPORTED_INFORMATION_FIELD;

   mde_list_valid = sci_base_mde_is_valid(
      &this_controller->memory_descriptors[SCU_MDE_TASK_CONTEXT],
      SCU_TASK_CONTEXT_ALIGNMENT,
      this_controller->task_context_entries * sizeof(SCU_TASK_CONTEXT_T),
      SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS
   );

   if (mde_list_valid == FALSE)
      return SCI_FAILURE_UNSUPPORTED_INFORMATION_FIELD;

   mde_list_valid = sci_base_mde_is_valid(
      &this_controller->memory_descriptors[SCU_MDE_UF_BUFFER],
      SCU_UNSOLICITED_FRAME_BUFFER_ALIGNMENT,
      scic_sds_unsolicited_frame_control_get_mde_size(this_controller->uf_control),
      SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS
   );

   if (mde_list_valid == FALSE)
      return SCI_FAILURE_UNSUPPORTED_INFORMATION_FIELD;

   return SCI_SUCCESS;
}

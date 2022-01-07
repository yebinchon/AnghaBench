
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t U16 ;
struct TYPE_3__ {size_t task_context_entries; int * task_context_table; } ;
typedef int SCU_TASK_CONTEXT_T ;
typedef TYPE_1__ SCIC_SDS_CONTROLLER_T ;


 size_t scic_sds_io_tag_get_index (size_t) ;

SCU_TASK_CONTEXT_T * scic_sds_controller_get_task_context_buffer(
   SCIC_SDS_CONTROLLER_T * this_controller,
   U16 io_tag
)
{
   U16 task_index = scic_sds_io_tag_get_index(io_tag);

   if (task_index < this_controller->task_context_entries)
   {
      return &this_controller->task_context_table[task_index];
   }

   return ((void*)0);
}

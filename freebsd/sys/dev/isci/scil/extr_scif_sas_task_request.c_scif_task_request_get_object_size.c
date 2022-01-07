
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U32 ;
typedef int SCIF_SAS_TASK_REQUEST_T ;


 scalar_t__ scic_task_request_get_object_size () ;

U32 scif_task_request_get_object_size(
   void
)
{
   return (sizeof(SCIF_SAS_TASK_REQUEST_T) + scic_task_request_get_object_size());
}

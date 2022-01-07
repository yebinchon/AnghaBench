
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int SCIF_SAS_TASK_REQUEST_T ;
typedef int SCIF_SAS_INTERNAL_IO_REQUEST_T ;


 int MAX (scalar_t__,scalar_t__) ;
 scalar_t__ scic_io_request_get_object_size () ;
 scalar_t__ scic_task_request_get_object_size () ;

U32 scif_sas_internal_request_get_object_size(
   void
)
{
   return MAX(
            (sizeof(SCIF_SAS_INTERNAL_IO_REQUEST_T) + scic_io_request_get_object_size()),
            (sizeof(SCIF_SAS_TASK_REQUEST_T) + scic_task_request_get_object_size())
             );
}

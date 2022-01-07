
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int internal_request_memory_pool; } ;
typedef TYPE_1__ SCIF_SAS_CONTROLLER_T ;
typedef int POINTER_UINT ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_1__*) ;
 int sci_pool_full (int ) ;
 int sci_pool_put (int ,int ) ;

void scif_sas_controller_free_internal_request(
   SCIF_SAS_CONTROLLER_T * fw_controller,
   void * fw_internal_request_buffer
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_controller_free_internal_request(0x%x, 0x%x) enter\n",
      fw_controller, fw_internal_request_buffer
   ));


   if( !sci_pool_full(fw_controller->internal_request_memory_pool) )
   {
      sci_pool_put(
         fw_controller->internal_request_memory_pool,
         (POINTER_UINT) fw_internal_request_buffer
      );
   }
}

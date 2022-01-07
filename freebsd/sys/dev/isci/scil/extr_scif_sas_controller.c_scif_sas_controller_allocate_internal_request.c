
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int internal_request_memory_pool; } ;
typedef TYPE_1__ SCIF_SAS_CONTROLLER_T ;
typedef scalar_t__ POINTER_UINT ;


 int memset (char*,int ,int ) ;
 int sci_pool_empty (int ) ;
 int sci_pool_get (int ,scalar_t__) ;
 int scif_sas_internal_request_get_object_size () ;

void * scif_sas_controller_allocate_internal_request(
   SCIF_SAS_CONTROLLER_T * fw_controller
)
{
   POINTER_UINT internal_io_address;

   if( !sci_pool_empty(fw_controller->internal_request_memory_pool) )
   {
      sci_pool_get(
         fw_controller->internal_request_memory_pool, internal_io_address
      );


      memset((char*)internal_io_address, 0, scif_sas_internal_request_get_object_size());

      return (void *) internal_io_address;
   }
   else
      return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * protocol_complete_handler; int core_object; } ;
typedef int SMP_REQUEST_T ;
typedef TYPE_1__ SCIF_SAS_REQUEST_T ;


 int memcpy (char*,int *,int) ;
 int scic_io_request_construct_smp (int ) ;
 void* scic_io_request_get_command_iu_address (int ) ;

void scif_sas_smp_request_construct(
   SCIF_SAS_REQUEST_T * fw_request,
   SMP_REQUEST_T * smp_command
)
{
   void * command_iu_address =
      scic_io_request_get_command_iu_address(fw_request->core_object);


   memcpy( (char*) command_iu_address,
           smp_command,
           sizeof(SMP_REQUEST_T)
          );

   scic_io_request_construct_smp(fw_request->core_object);

   fw_request->protocol_complete_handler
      = ((void*)0);
}

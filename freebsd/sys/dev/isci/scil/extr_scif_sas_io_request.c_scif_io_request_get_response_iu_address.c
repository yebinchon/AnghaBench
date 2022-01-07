
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int core_object; } ;
struct TYPE_4__ {TYPE_1__ parent; } ;
typedef scalar_t__ SCI_IO_REQUEST_HANDLE_T ;
typedef TYPE_2__ SCIF_SAS_IO_REQUEST_T ;


 void* scic_io_request_get_response_iu_address (int ) ;

void * scif_io_request_get_response_iu_address(
   SCI_IO_REQUEST_HANDLE_T scif_io_request
)
{
   SCIF_SAS_IO_REQUEST_T * fw_io = (SCIF_SAS_IO_REQUEST_T*)scif_io_request;

   return (scic_io_request_get_response_iu_address(fw_io->parent.core_object ));
}

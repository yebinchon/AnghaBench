
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int core_object; TYPE_3__* device; } ;
struct TYPE_10__ {TYPE_4__ parent; } ;
struct TYPE_8__ {int core_object; TYPE_2__* domain; } ;
struct TYPE_7__ {TYPE_1__* controller; } ;
struct TYPE_6__ {int core_object; } ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef TYPE_5__ SCIF_SAS_IO_REQUEST_T ;


 int scic_controller_terminate_request (int ,int ,int ) ;

__attribute__((used)) static
SCI_STATUS scif_sas_io_request_aborting_abort_handler(
   SCI_BASE_REQUEST_T * io_request
)
{
   SCIF_SAS_IO_REQUEST_T * fw_request = (SCIF_SAS_IO_REQUEST_T *) io_request;

   return scic_controller_terminate_request(
             fw_request->parent.device->domain->controller->core_object,
             fw_request->parent.device->core_object,
             fw_request->parent.core_object
          );
}

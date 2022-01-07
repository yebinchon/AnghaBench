
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int parent; TYPE_1__* state_handlers; } ;
struct TYPE_4__ {int (* abort_handler ) (int *) ;} ;
typedef TYPE_2__ SCIF_SAS_REQUEST_T ;


 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_2__*) ;
 int stub1 (int *) ;

void scif_sas_internal_io_request_timeout_handler(
   void * fw_internal_io
)
{
   SCIF_SAS_REQUEST_T * fw_request = (SCIF_SAS_REQUEST_T *)fw_internal_io;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_request),
      SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_sas_internal_io_request_timeout_handler(0x%x) enter\n",
      fw_internal_io
   ));

   fw_request->state_handlers->abort_handler(&fw_request->parent);
}

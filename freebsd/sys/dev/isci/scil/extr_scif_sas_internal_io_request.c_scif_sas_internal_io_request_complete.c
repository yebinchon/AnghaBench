
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int internal_io_timer; } ;
typedef int SCI_STATUS ;
typedef TYPE_1__ SCIF_SAS_INTERNAL_IO_REQUEST_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (int *) ;
 int scif_cb_timer_stop (int *,int ) ;
 int scif_sas_internal_io_request_destruct (int *,TYPE_1__*) ;

void scif_sas_internal_io_request_complete(
   SCIF_SAS_CONTROLLER_T * fw_controller,
   SCIF_SAS_INTERNAL_IO_REQUEST_T * fw_internal_io,
   SCI_STATUS completion_status
)
{
   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_sas_internal_io_request_complete(0x%x, 0x%x, 0x%x) enter\n",
       fw_controller, fw_internal_io, completion_status
   ));

   scif_cb_timer_stop(fw_controller, fw_internal_io->internal_io_timer);
   scif_sas_internal_io_request_destruct(fw_controller, fw_internal_io);
}

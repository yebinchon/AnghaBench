
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * internal_io_timer; } ;
typedef TYPE_1__ SCIF_SAS_INTERNAL_IO_REQUEST_T ;
typedef int SCIF_SAS_CONTROLLER_T ;


 int scif_cb_timer_destroy (int *,int *) ;
 int scif_sas_controller_free_internal_request (int *,TYPE_1__*) ;

void scif_sas_internal_io_request_destruct(
   SCIF_SAS_CONTROLLER_T * fw_controller,
   SCIF_SAS_INTERNAL_IO_REQUEST_T * fw_internal_io
)
{
   if (fw_internal_io->internal_io_timer != ((void*)0))
   {
      scif_cb_timer_destroy(fw_controller, fw_internal_io->internal_io_timer);
      fw_internal_io->internal_io_timer = ((void*)0);
   }
   scif_sas_controller_free_internal_request(fw_controller, fw_internal_io);
}

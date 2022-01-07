
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int pool; } ;
struct TYPE_12__ {TYPE_3__* state_handlers; TYPE_2__ hprq; } ;
struct TYPE_8__ {scalar_t__ device; } ;
struct TYPE_11__ {TYPE_1__ parent; } ;
struct TYPE_10__ {int (* start_high_priority_io_handler ) (int *,int *,int *,int ) ;} ;
typedef int SCI_STATUS ;
typedef int SCI_BASE_REQUEST_T ;
typedef int SCI_BASE_REMOTE_DEVICE_T ;
typedef int SCI_BASE_CONTROLLER_T ;
typedef TYPE_4__ SCIF_SAS_IO_REQUEST_T ;
typedef TYPE_5__ SCIF_SAS_CONTROLLER_T ;
typedef scalar_t__ POINTER_UINT ;


 int SCIF_LOG_OBJECT_CONTROLLER ;
 int SCIF_LOG_OBJECT_IO_REQUEST ;
 int SCIF_LOG_TRACE (int ) ;
 int SCI_CONTROLLER_INVALID_IO_TAG ;
 int sci_base_object_get_logger (TYPE_5__*) ;
 int sci_pool_empty (int ) ;
 int sci_pool_get (int ,scalar_t__) ;
 int stub1 (int *,int *,int *,int ) ;

void scif_sas_controller_start_high_priority_io(
   SCIF_SAS_CONTROLLER_T * fw_controller
)
{
   POINTER_UINT io_address;
   SCIF_SAS_IO_REQUEST_T * fw_io;
   SCI_STATUS status;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_controller),
      SCIF_LOG_OBJECT_CONTROLLER | SCIF_LOG_OBJECT_IO_REQUEST,
      "scif_controller_start_high_priority_io(0x%x) enter\n",
      fw_controller
   ));

   while ( !sci_pool_empty(fw_controller->hprq.pool) )
   {
      sci_pool_get(fw_controller->hprq.pool, io_address);

      fw_io = (SCIF_SAS_IO_REQUEST_T *)io_address;

      status = fw_controller->state_handlers->start_high_priority_io_handler(
         (SCI_BASE_CONTROLLER_T*) fw_controller,
         (SCI_BASE_REMOTE_DEVICE_T*) fw_io->parent.device,
         (SCI_BASE_REQUEST_T*) fw_io,
         SCI_CONTROLLER_INVALID_IO_TAG
      );
   }
}

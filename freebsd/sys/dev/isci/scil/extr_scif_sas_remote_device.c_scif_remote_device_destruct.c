
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int parent; TYPE_4__* state_handlers; TYPE_2__* domain; } ;
struct TYPE_9__ {int (* destruct_handler ) (int *) ;} ;
struct TYPE_10__ {TYPE_3__ parent; } ;
struct TYPE_8__ {int parent; TYPE_1__* state_handlers; } ;
struct TYPE_7__ {int (* device_destruct_handler ) (int *,int *) ;} ;
typedef int SCI_STATUS ;
typedef scalar_t__ SCI_REMOTE_DEVICE_HANDLE_T ;
typedef TYPE_5__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int sci_base_object_get_logger (TYPE_5__*) ;
 int stub1 (int *,int *) ;
 int stub2 (int *) ;

SCI_STATUS scif_remote_device_destruct(
   SCI_REMOTE_DEVICE_HANDLE_T remote_device
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                                          remote_device;

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE,
      "scif_remote_device_destruct(0x%x) enter\n",
      remote_device
   ));


   fw_device->domain->state_handlers->device_destruct_handler(
      &fw_device->domain->parent, &fw_device->parent
   );




   return fw_device->state_handlers->parent.destruct_handler(
             &fw_device->parent
          );
}

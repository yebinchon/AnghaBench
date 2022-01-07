
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ request_count; scalar_t__ destruct_when_stopped; int parent; TYPE_4__* domain; TYPE_2__* state_handlers; int operation_status; } ;
struct TYPE_10__ {int parent; TYPE_3__* state_handlers; } ;
struct TYPE_9__ {int (* device_stop_complete_handler ) (int *,int *) ;} ;
struct TYPE_7__ {int (* destruct_handler ) (int *) ;} ;
struct TYPE_8__ {TYPE_1__ parent; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_5__ SCIF_SAS_REMOTE_DEVICE_T ;


 int ASSERT (int) ;
 int SCI_BASE_REMOTE_DEVICE_STATE_STOPPED ;
 int SET_STATE_HANDLER (TYPE_5__*,int ,int ) ;
 scalar_t__ TRUE ;
 int scif_sas_remote_device_state_handler_table ;
 int stub1 (int *) ;
 int stub2 (int *,int *) ;

__attribute__((used)) static
void scif_sas_remote_device_stopped_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)object;

   SET_STATE_HANDLER(
      fw_device,
      scif_sas_remote_device_state_handler_table,
      SCI_BASE_REMOTE_DEVICE_STATE_STOPPED
   );



   ASSERT(fw_device->request_count == 0);



   if (fw_device->destruct_when_stopped == TRUE)
      fw_device->operation_status
         = fw_device->state_handlers->parent.destruct_handler(
              &fw_device->parent
           );


   fw_device->domain->state_handlers->device_stop_complete_handler(
      &fw_device->domain->parent, &fw_device->parent
   );
}

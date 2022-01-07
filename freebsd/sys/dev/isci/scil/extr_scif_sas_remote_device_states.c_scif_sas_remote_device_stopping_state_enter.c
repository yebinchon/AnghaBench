
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ operation_status; TYPE_1__* state_handlers; int core_object; } ;
struct TYPE_5__ {int (* stop_complete_handler ) (TYPE_2__*,scalar_t__) ;} ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_2__ SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_SAS_REMOTE_DEVICE_CORE_OP_TIMEOUT ;
 int SCI_BASE_REMOTE_DEVICE_STATE_STOPPING ;
 scalar_t__ SCI_SUCCESS ;
 int SET_STATE_HANDLER (TYPE_2__*,int ,int ) ;
 scalar_t__ scic_remote_device_stop (int ,int ) ;
 int scif_sas_remote_device_state_handler_table ;
 int stub1 (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static
void scif_sas_remote_device_stopping_state_enter(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)object;

   SET_STATE_HANDLER(
      fw_device,
      scif_sas_remote_device_state_handler_table,
      SCI_BASE_REMOTE_DEVICE_STATE_STOPPING
   );

   fw_device->operation_status = scic_remote_device_stop(
                                    fw_device->core_object,
                                    SCIF_SAS_REMOTE_DEVICE_CORE_OP_TIMEOUT
                                 );


   if (fw_device->operation_status != SCI_SUCCESS)
   {






      fw_device->state_handlers->stop_complete_handler(
         fw_device, fw_device->operation_status
      );
   }
}

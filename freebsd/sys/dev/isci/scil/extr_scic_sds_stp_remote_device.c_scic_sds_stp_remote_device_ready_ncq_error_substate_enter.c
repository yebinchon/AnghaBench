
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ not_ready_reason; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIC_SDS_REMOTE_DEVICE_T ;


 scalar_t__ SCIC_REMOTE_DEVICE_NOT_READY_SATA_SDB_ERROR_FIS_RECEIVED ;
 int SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_NCQ_ERROR ;
 int SET_STATE_HANDLER (TYPE_1__*,int ,int ) ;
 int scic_cb_remote_device_not_ready (int ,TYPE_1__*,scalar_t__) ;
 int scic_sds_remote_device_get_controller (TYPE_1__*) ;
 int scic_sds_stp_remote_device_ready_substate_handler_table ;

__attribute__((used)) static
void scic_sds_stp_remote_device_ready_ncq_error_substate_enter(
   SCI_BASE_OBJECT_T * device
)
{
   SCIC_SDS_REMOTE_DEVICE_T * this_device;

   this_device = (SCIC_SDS_REMOTE_DEVICE_T *)device;

   SET_STATE_HANDLER(
      this_device,
      scic_sds_stp_remote_device_ready_substate_handler_table,
      SCIC_SDS_STP_REMOTE_DEVICE_READY_SUBSTATE_NCQ_ERROR
   );

   if(this_device->not_ready_reason ==
         SCIC_REMOTE_DEVICE_NOT_READY_SATA_SDB_ERROR_FIS_RECEIVED)
   {
      scic_cb_remote_device_not_ready(
         scic_sds_remote_device_get_controller(this_device),
         this_device,
         this_device->not_ready_reason
      );
   }
}

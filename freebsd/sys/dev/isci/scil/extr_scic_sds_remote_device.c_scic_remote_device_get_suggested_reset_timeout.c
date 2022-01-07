
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_6__ {scalar_t__ attached_stp_target; } ;
struct TYPE_7__ {TYPE_1__ bits; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
struct TYPE_9__ {TYPE_3__ target_protocols; } ;
typedef scalar_t__ SCI_REMOTE_DEVICE_HANDLE_T ;
typedef TYPE_4__ SCIC_SDS_REMOTE_DEVICE_T ;


 int SCIC_LOG_OBJECT_SMP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_SSP_REMOTE_TARGET ;
 int SCIC_LOG_OBJECT_STP_REMOTE_TARGET ;
 int SCIC_LOG_TRACE (int ) ;
 int SCIC_SDS_REMOTE_DEVICE_RESET_TIMEOUT ;
 int SCIC_SDS_SIGNATURE_FIS_TIMEOUT ;
 int sci_base_object_get_logger (TYPE_4__*) ;

U32 scic_remote_device_get_suggested_reset_timeout(
   SCI_REMOTE_DEVICE_HANDLE_T remote_device
)
{
   SCIC_SDS_REMOTE_DEVICE_T *this_device;
   this_device = (SCIC_SDS_REMOTE_DEVICE_T *)remote_device;

   SCIC_LOG_TRACE((
      sci_base_object_get_logger(this_device),
      SCIC_LOG_OBJECT_SSP_REMOTE_TARGET |
      SCIC_LOG_OBJECT_STP_REMOTE_TARGET |
      SCIC_LOG_OBJECT_SMP_REMOTE_TARGET,
      "scic_remote_device_get_suggested_reset_timeout(0x%x) enter\n",
      remote_device
   ));

   if (this_device->target_protocols.u.bits.attached_stp_target)
   {
      return SCIC_SDS_SIGNATURE_FIS_TIMEOUT;
   }

   return SCIC_SDS_REMOTE_DEVICE_RESET_TIMEOUT;
}

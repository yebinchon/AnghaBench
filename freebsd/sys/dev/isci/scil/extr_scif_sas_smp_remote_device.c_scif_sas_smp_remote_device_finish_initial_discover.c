
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ controller; } ;
struct TYPE_10__ {int * smp_activity_timer; int current_activity; } ;
struct TYPE_11__ {TYPE_1__ smp_device; } ;
struct TYPE_12__ {TYPE_2__ protocol_device; TYPE_8__* domain; } ;
typedef int SCI_TIMER_CALLBACK_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;
typedef TYPE_3__ SCIF_SAS_REMOTE_DEVICE_T ;


 int ASSERT (int ) ;
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ;
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ;
 int SCIF_LOG_TRACE (int ) ;
 int SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_SATA_SPINUP_HOLD_RELEASE ;
 int SMP_SPINUP_HOLD_RELEASE_WAIT_DURATION ;
 int sci_base_object_get_logger (TYPE_3__*) ;
 int * scif_cb_timer_create (int *,int ,void*) ;
 int scif_cb_timer_start (int ,int *,int ) ;
 TYPE_3__* scif_sas_domain_find_device_in_spinup_hold (TYPE_8__*) ;
 int scif_sas_smp_remote_device_clear (TYPE_3__*) ;
 int scif_sas_smp_remote_device_finish_discover (TYPE_3__*) ;
 scalar_t__ scif_sas_smp_remote_device_sata_spinup_hold_release ;

void scif_sas_smp_remote_device_finish_initial_discover(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   SCIF_SAS_REMOTE_DEVICE_T * device_in_sata_spinup_hold =
      scif_sas_domain_find_device_in_spinup_hold(fw_device->domain);

   SCIF_LOG_TRACE((
      sci_base_object_get_logger(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_smp_remote_device_finish_initial_discover(0x%x) enter\n",
      fw_device
   ));

   if ( device_in_sata_spinup_hold != ((void*)0) )
   {

     scif_sas_smp_remote_device_clear(fw_device);


     fw_device->protocol_device.smp_device.current_activity =
        SCIF_SAS_SMP_REMOTE_DEVICE_ACTIVITY_SATA_SPINUP_HOLD_RELEASE;



      if (fw_device->protocol_device.smp_device.smp_activity_timer == ((void*)0))
      {
      fw_device->protocol_device.smp_device.smp_activity_timer =
         scif_cb_timer_create(
            (SCI_CONTROLLER_HANDLE_T *)fw_device->domain->controller,
            (SCI_TIMER_CALLBACK_T)scif_sas_smp_remote_device_sata_spinup_hold_release,
            (void*)fw_device
         );
      }
      else
      {
         ASSERT (0);
      }

      scif_cb_timer_start(
         (SCI_CONTROLLER_HANDLE_T)fw_device->domain->controller,
         fw_device->protocol_device.smp_device.smp_activity_timer,
         SMP_SPINUP_HOLD_RELEASE_WAIT_DURATION
      );
   }
   else
      scif_sas_smp_remote_device_finish_discover(fw_device);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int controller; } ;
struct TYPE_4__ {TYPE_2__* domain; } ;
typedef int SCI_BASE_OBJECT_T ;
typedef TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;


 int scif_cb_remote_device_not_ready (int ,TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static
void scif_sas_remote_device_ready_operational_substate_exit(
   SCI_BASE_OBJECT_T *object
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T *)object;


   scif_cb_remote_device_not_ready(
      fw_device->domain->controller, fw_device->domain, fw_device
   );
}
